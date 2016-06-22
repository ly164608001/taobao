<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<%@include file="/WEB-INF/views/front/member/memberHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>我的订单</title>
	<script type="text/javascript" src="${basePath}static/js/front/member/orderOpr.js"></script>
	
	<script type="text/javascript">
	
		/**
		*	超时改变状态和按钮显示
		*	param: 
		*		obj 倒计时显示span元素对象
		*		btnHtml 按钮显示
		*		statusHtml 状态显示
		*/
		function changeStatusAndBtn(obj,btnHtml,statusHtml){
			var $countdownSpan = $(obj);
			var orderIndex = $countdownSpan.attr('orderindex');
			$('#title'+orderIndex).html(statusHtml);
			$countdownSpan.parent().parent().html(btnHtml);
		}
	
		//待线下签约+首付倒计触发方法(只有截止时间)
		function contractInterval(obj){
			var $countdownSpan = $(obj);
			var expiretime = $countdownSpan.attr('expiretime');
			
			var expireDate = new Date(expiretime);
			var curDate = new Date();
			var countdown = parseInt(expireDate - curDate);
			var remainsecond = parseInt(countdown/1000);
			if(remainsecond <= 0){
				var orderid = $countdownSpan.attr('orderid');
				var btnHtml = '<span class="detail-body-progress fr btn-order-delete">' +
								'<a href="javascript:void(0);" onclick="delOrder('+orderid+');">删除</a></span>';
				changeStatusAndBtn(obj,btnHtml,'订单关闭,用户线下签约+首付超时');			
				return false;
			}else{
				$countdownSpan.html(formatDowntime(remainsecond)); 
				return true;
			}
		} 
		
		//待确认、待付款、退订待处理倒计触发方法(开始时间和处理时长):超时样式显示
		function overtimeShow(obj){
			var $countdownSpan = $(obj);
			var orderid = $countdownSpan.attr('orderid');
			var btnHtml = '<span class="detail-body-progress fr">' +
							'<a href="javascript:void(0);" onclick="reApply('+orderid+');">重新申请预订</a></span>';
			
			if($countdownSpan.hasClass('pay')){
				changeStatusAndBtn(obj,btnHtml,'订单关闭,用户支付超时');
			}else if($countdownSpan.hasClass('confirm')){
				changeStatusAndBtn(obj,btnHtml,'订单关闭,商家确认超时');
			}else if($countdownSpan.hasClass('dealDebook')){
				changeStatusAndBtn(obj,'','退订成功,待退款');
			}
		}
		

		$(function(){
			
			//签约付首付倒计时(只有截止时间点)
			$('span.contractDowntime').each(function(){
				var thisElem = this;
				var intervalId = window.setInterval(function(){
					var isContinue = contractInterval(thisElem);
					if(!isContinue){
						clearInterval(intervalId);
					}
				},1000);
			});
			
			//退订剩余时间倒计时(只有剩余处理时长)
			$('span.remainDebookDowntime').each(function(){
				var thisElem = this;
				var $countdownSpan = $(this);
				var remaintime = parseInt($countdownSpan.attr('remaintime'));
				var remainSecond = parseInt(remaintime/1000);
				
				var intervalId = window.setInterval(function(){
					if(remaintime == 0){
						clearInterval(intervalId);
						var orderid = $countdownSpan.attr('orderid');
						var btnHtml = '<span class="detail-body-progress fr">' +
										'<a href="javascript:void(0);" onclick="applyDelay('+orderid+');">申请延期</a></span>';
						changeStatusAndBtn(obj,btnHtml,'待线下签约+付首付');
					}else{
						$countdownSpan.html(formatDowntime(remainSecond)); 
						remainSecond--;
					}
					
				},1000);
			});
			
		});
		
		//状态搜索
		function filterStatus(status){
			$('#searchForm input[name="totalPage"]').val(1);
			$('#pstatus').val(status);
			$('#searchForm').submit();
		}
		
	</script>
   </head> 
   
 <body> 
	<!-- form的id值要与分页div中的bindForm值一致 -->
	<form id="searchForm" action="${basePath}front/member/order/list.htm">
		<!-- 分页必须元素 ，其中pageCount中的list为后台返回列表数据名称-->
		<input type="hidden" name="totalPage" value="${vo.totalPage}" />
		<input type="hidden" name="rows" value="${vo.rows}" />
		<input type="hidden" name="page" value="${vo.page}" />
		<!-- 业务查询条件 -->
		<input type="hidden" name="model.status" value="${vo.model.status}" id="pstatus"/>
	</form>

  <!--PersonalCenter-main-r--> 
  <div class="PersonalCenter-main-r tradingCenter-main-r"> 
   <!-- tradingCenter-order --> 
   <div class="tradingCenter-order"> 
    <div class="MyFootprint-title">
     <span class="level-1">交易中心</span>&nbsp;&nbsp;&gt;&nbsp;&nbsp;
     <span class="level-2">我的订单</span>
    </div> 
    <div class="tradingCent-tip"> 
     <ul class="clearfix"> 
      	<li <c:if test="${empty vo.model.status}">class="active"</c:if> ><a href="javascript:void(0);" onclick="filterStatus('');">全部订单</a></li>
		<li <c:if test="${fns:getDictValue('交易成功','ORDER_STATUS','') == vo.model.status}">class="active"</c:if> ><a href="javascript:void(0);" onclick="filterStatus(9);">交易成功</a></li>
		<li <c:if test="${fns:getDictValue('待确认','ORDER_STATUS','') == vo.model.status}">class="active"</c:if> ><a href="javascript:void(0);" onclick="filterStatus(0);">待确认</a></li>
		<li <c:if test="${fns:getDictValue('待付款','ORDER_STATUS','') == vo.model.status}">class="active"</c:if> ><a href="javascript:void(0);" onclick="filterStatus(1);">待付款</a></li>
		<li <c:if test="${fns:getDictValue('待线下签约+付首付','ORDER_STATUS','') == vo.model.status}">class="active"</c:if> ><a href="javascript:void(0);" onclick="filterStatus(2);">待线下签约</a></li>
		<li <c:if test="${fns:getDictValue('退订','ORDER_STATUS','') == vo.model.status}">class="active"</c:if> ><a href="javascript:void(0);" onclick="filterStatus(-1);">退订</a></li>
		<li <c:if test="${fns:getDictValue('交易关闭','ORDER_STATUS','') == vo.model.status}">class="active"</c:if> ><a href="javascript:void(0);" onclick="filterStatus(-9);">订单关闭</a></li>
     </ul> 
    </div> 
    
    <!-- order-detail --> 
    <div class="order-detail"> 
    <c:forEach var="order" items="${list}" varStatus="vs">
     <!-- order-detail-list --> 
     <div class="order-detail-list"> 
     
	      <div class="order-detail-title"> 
		       <span><f:formatDate value="${order.createtime}" pattern="yyyy-MM-dd  HH:mm:ss" /></span> 
		       <span>订单号：${order.orderno}</span> 
		       <span>开发商：${estate.username}</span> 
		       <span>卖方：${order.seller.username}</span> 
		       <span class="order-detail-tel">${order.seller.phone} <span class="icon-msg"></span></span> 
	      </div> 
	      
	      <div class="order-detail-body clearfix mt10"> 
		        <div class="detail-body-l"> 
		       	 	<img src="${basePath}/static/css/front/images/detail-list.jpg" alt="" /> 
		        </div> 
	       		<div class="detail-body-r"> 
			        <h4 class="title" id="title${vs.index}">
			        	${fns:getDictLabel(order.status,'ORDER_STATUS','')}
			        	<c:if test="${order.status != order.currentstatus}">
			        		,${fns:getDictLabel(order.currentstatus,'ORDER_STATUS','')}
			        	</c:if>
			        	<a href="javascript:void(0);" onclick="detail(${order.id});">订单详情&gt;&gt;</a>
			        </h4> 
			        <div class="detail-body-r-t"> 
				         <div class="detail-r-t-head clearfix"> 
				          	<h3>${ order.housesInfo.name}</h3> 
				         </div> 
				         <div class="detail-r-t-body"> 
					          <table> 
					           <tbody>
					            <tr> 
					             <td>户型：<span>${order.source.houseType.name}</span></td> 
					             <td>楼层：<span>${order.source.housesBuilding.name}第${order.source.floornum}层</span></td> 
					             <td class="last-child"><span class="order-close"></span></td> 
					            </tr> 
					            <tr> 
					             <td>价格：<span>${order.source.unitprice} /平米</span></td> 
					             <td>面积：<span>${order.source.buildarea} 平米</span></td> 
					             <td class="last-child"><span class="order-success"></span></td> 
					            </tr> 
					           </tbody>
					          </table> 
				         </div> 
			        </div> 
	       </div> 
	  </div> 
      
      <div class="order-detail-bottom"> 
       <div class="detail-body-r-b mt10"> 
        <table> 
         <thead> 
          <tr> 
           <th>单价</th> 
           <th>原总价</th> 
           <th>优惠</th> 
           <th>优惠后总价</th> 
          </tr> 
         </thead> 
         <tbody> 
          <tr> 
           <td>${order.source.unitprice} /平米</td> 
           <td><f:formatNumber value="${order.oriallmoney}" pattern="#,#00.#"/></td> 
           <td>抢购特价房</td> 
           <td>2,000,000</td> 
          </tr> 
         </tbody> 
        </table> 
       </div> 
      
      <div class="detail-body-r-total clearfix">
			<span class="detail-body-subscription">实付定金：<span class="red">
				<f:formatNumber value="${order.bookmoney}" pattern="#,#00.#"/>&nbsp;</span>元
			</span>
			
			<c:choose>
		        <c:when test="${order.status == 0}">
		        	<div>
			        	<span class="detail-body-progress fr btn-order-delete">
							<a href="javascript:void(0);"onclick="cancel(${order.id});">取消订单</a>
						</span>
						<span class="detail-body-countdown fr">
							等待确认倒计时：<span class="red countdown confirm" orderid="${order.id}" 
								downBegintime="${order.createtime}" limittime="${fns:getDictValue('默认限制确认时间','LIMIT_TIME','7200000')}" orderindex="${vs.index}"></span>
						</span>
					</div>
		        </c:when>
		        
		        <c:when test="${order.status == 1}">
			        <div>
			        	<span class="detail-body-discuss fr btn-order-pay">
			        		<a href="javascript:void(0);" onclick="pay(${order.id});">去支付</a>
			        	</span>
						<span class="detail-body-progress fr btn-order-delete">
							<a  href="javascript:void(0);" onclick="cancelUnpay(${order.id});">取消订单</a>
						</span>
						<span class="detail-body-countdown fr">
							支付倒计时：<span class="red countdown pay" orderindex="${vs.index}" orderid="${order.id}" downBegintime="${order.confirmtime}"
									    limittime="${fns:getDictValue('默认限制支付时间','LIMIT_TIME','7200000')}"></span>
						</span>
					</div>
		        </c:when>
		        
		        <c:when test="${order.status == 2}">
			        <div>
			        	<span class="detail-body-discuss fr btnOrderDelay">
			        		<a href="javascript:void(0);" onclick="applyDelay(${order.id});">申请延期</a>
			        	</span>
						<span class="detail-body-progress fr btnOrderConcede">
							<a href="javascript:void(0);" onclick="unsubscribe(${order.id});">申请退订</a>
						</span>
						<span class="detail-body-countdown fr">
							线下签约：<span class="red contractDowntime" expiretime="${order.remaincontracttime}"
										orderindex="${vs.index}" orderid="${order.id}"></span>
						</span>
					</div>
		        </c:when>
		        
		        <c:when test="${order.status == 9}">
					<span class="detail-body-progress fr">
						<a href="javascript:void(0);" onclick="detail(${order.id});">购房进度</a>
					</span>
					<span class="detail-body-discuss fr">
						<a href="javascript:void(0);" onclick="comment(${order.id});">去评论</a>
					</span>
		        </c:when>
		        
		        <c:when test="${order.status == -1}">
			        	<c:choose>
			        		<c:when test="${order.currentstatus == -1}">
			        		 <div>
			        			<span class="detail-body-progress fr btn-order-delete">
									<a href="javascript:void(0);" onclick="cancelUnsub(${order.id});">取消退订</a>
								</span>
								<span class="detail-body-countdown fr">
									等待处理：<span class="red countdown dealDebook" downBegintime="${order.lastdebooktime}" orderindex="${vs.index}"
												limittime="${fns:getDictValue('默认限制退订处理时间','LIMIT_TIME','172800000')}"></span>
								</span>
							 </div>
			        		</c:when>
			        		
			        		<c:when test="${order.currentstatus == -12}">
			        		 <div>
			        			<span class="detail-body-progress fr btn-order-delete">
									<a href="javascript:void(0);" onclick="cancelUnsub(${order.id});">取消退订</a>
								</span>
								<span class="detail-body-discuss fr btn-order-pay">
									<a href="javascript:void(0);" onclick="reUnsub(${order.id});">重新发起</a>
								</span>
								<span class="detail-body-countdown fr">退订期限：
									<span class="red remainDebookDowntime" remaintime="${order.remaindebooktime}" 
												orderindex="${vs.index}" orderid="${order.id}"></span>
								</span>
							 </div>
			        		</c:when>
			        	</c:choose>
		        </c:when>
		        
		        <c:when test="${order.status == -9}">
		        	<span class="detail-body-progress fr btn-order-delete">
						<a href="javascript:void(0);" onclick="delOrder(${order.id});">删除</a>
					</span>
					<c:if test="${order.currentstatus != -3 && order.currentstatus != -5}">
						<span class="detail-body-discuss fr">
							<a href="javascript:void(0);" onclick="reApply(${order.id});">重新申请预订</a>
						</span>
					</c:if>
		        </c:when>
		        
		   </c:choose>
		   
  		</div>
  						
      </div> 
     </div> 
     </c:forEach>
     
     <div class="clearfix page-wrap" bindForm="searchForm"></div>
     
    </div> 
   </div> 
  </div>  
  
 </body>
</html>
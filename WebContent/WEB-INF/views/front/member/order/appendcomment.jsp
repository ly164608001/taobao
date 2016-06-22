<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<%@include file="/WEB-INF/views/front/member/memberHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>订单评价</title>
	
	<script type="text/javascript">
	
		$(function(){
			parent.scroll(0,0);
			
			$('.btnUpdateMsg').click(function(){
				var appendcontent = $('#appendcontent').val();
				if(isNull(appendcontent)){
					top.layer.alert('请输入追评内容');
					return;
				}
				
				$.ajax({
					type : 'post',
					 url : '${basePath}/front/member/order/submitappend.htm',
					data : $('#appendForm').serialize(),
					dataType : 'json',
					success : function(result){
						if(result.success){
							window.location.href='${basePath}front/member/order/detail.htm?id=${order.id}';
						}else{
							top.layer.alert(result.msg);
						}
					}
				});
			});
			
			
			
		});
		
	</script>
	
</head>
<body>
		<div class="PersonalCenter-main-r tradingCenter-main-r">
        	<!-- tradingCenter-reverse -->
        	<div class="tradingCenter-reverse">
        		<div class="MyFootprint-title"><span class="level-1">交易中心</span>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<span class="level-2">我的订单</span>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<span class="level-3">订单评价</span></div>
        		<h3 class="reverseStade clearfix"><span style="float:left">当前订单状态：<em class="blue">等待银行审核</em></span><span class="reverseStade-tip reverseStade-tip-ok"><img src="${basePath}/static/css/front/images/order-complete.png">交易完成</span></h3>
                <!-- reverse-body -->
        		<div class="reverse-body mt10">
        			<!-- reverse-detail -->
        			<div class="reverse-detail">
        				<table>
        					<tr>
        						<td>楼盘名称：<span>${ order.housesInfo.name}</span></td>
        						<td>楼盘地址：<span>${ order.housesInfo.detailaddress}</span></td>
        						<td>开发商：<span>${estate.username }</span></td>
        					</tr>
        					<tr>
        						<td>下订用户：<span class="linkman">${order.user.username}<img src="${basePath}/static/css/front/images/wkt-pic.png" alt=""></span></td>
        						<td>身份证号：<span>${order.buyeridcard }</span></td>
        						<td>联系方式：<span>${order.buyerphone }</span></td>
        					</tr>
        					<tr>
        						<td>置业商家：<span class="linkman">${order.seller.username }<img src="${basePath}/static/css/front/images/wkt-pic.png" alt=""></span></td>
        						<td>联系方式：<span>${order.seller.phone }</span></td>
        						<td>购房补贴：<span>${order.subsidymoney }元</span></td>
        					</tr>
        					<tr>
        						
        						<td>创建时间：<span><f:formatDate value="${order.createtime}" pattern="yyyy-MM-dd HH:mm:ss" /></span></td>
        						<td>付款时间：<span><f:formatDate value="${order.paytime}" pattern="yyyy-MM-dd HH:mm:ss" /></span></td>
        						<td>成交时间：<span><f:formatDate value="${order.finishtime}" pattern="yyyy-MM-dd HH:mm:ss" /></span></td>
        					</tr>

        				</table>
        			</div>
        			<!-- reverse-level -->
        			<div class="reverse-level">
        				<div class="level-state">
        					<ul class="clearfix">
        						<li class="level-state01">已完成</li>
        						<li class="level-state02">进行中</li>
        						<li class="level-state03">失败</li>
        					</ul>
        				</div>
        				<div class="level-stateLevel mt20">
        					<img src="${basePath}/static/css/front/images/reverse-level05.png" alt="">
        				</div>
        			</div>
        			<div class="reverse-order">
        				<div class="reverse-order-detail">
        					<table class="mt20">
        						<thead>
        							<tr>
	        							<th>商品</th>
	        							<th>单价(元/m<sup>2</sup>)</th>
	        							<th>原总价(元)</th>
	        							<th>楼盘优惠</th>
	        							<th>其他优惠</th>
	        							<th>优惠后总价</th>
	        						</tr>
        						</thead>
        						<tbody>
        							<tr>
        								<<td class="merMsgOne">
        									<img src="${basePath}/static/css/front/images/order-detail01.png">
        									<div class="merMsgOne-msg">
        										<span class="merMsgOne-list">${order.source.houseType.name }</span>
        										<span class="merMsgOne-list">
        											${order.source.houseType.roomnum}室&nbsp;
        											${order.source.houseType.hallnum}厅&nbsp;
													${order.source.houseType.toiletnum}卫&nbsp;
													${order.source.houseType.balconynum}阳</span>
        										<span class="merMsgOne-list">
        											${order.source.housesBuilding.name }&nbsp;&nbsp;&nbsp;
        											${order.source.floornum }层&nbsp;&nbsp;&nbsp;01单元</span>
        										<span class="merMsgOne-list">${order.source.buildarea }平米</span>
        									</div>
        								</td>
        								<td>${order.source.unitprice }</td>
        								<td><f:formatNumber value="${order.oriallmoney }" pattern="#,#00.#"/></td>
        								<td class="privi">
        									<span class="priviList">商业贷款：<span>98折</span></span>
        									<span class="priviList">楼盘红包：<span>2,000元</span></span>
        									<span class="priviList">抵扣卡卷：<span>50,000元</span></span>
        								</td>
        								<td class="privi">
        									<span class="priviList">平台红包：<span>2,000元</span></span>
        									<span class="priviList">购房补贴：<span>${order.subsidymoney }元</span></span>
        								</td>
        								<td>
        									<span>2,124,000</span>
        								</td>
        							</tr>
        						</tbody>
        					</table>
        				</div>
        				<div class="reverse-order-total clearfix mt15">
        					<span class="total-money-complete">订金金额：&nbsp;
        					<span class="red"><f:formatNumber value="${order.bookmoney }" pattern="#,#00.#"/></span>&nbsp;元</span>
        				</div>
        			</div>
        		</div>
        		
                <!-- reverse-body -->
                
                	<div class="reverse-body mt10 houseRecode">
	                    <h3>房源评价</h3>
	                    <div class="houseRecode-body mt20">
	                        <!-- houseRecode-tips -->
	                        <div class="houseRecode-tips clearfix">
	                           <dl class="clearfix">
	                               <dt>价格：</dt>
	                               <dd>
	                               	   <c:forEach begin="1" end="${order.appraise.pricestar}" step="1">
                               	  		<img src="${basePath}static/css/front/images/house-start-red.png"/>
	                               	  	</c:forEach>
	                               	  	<c:forEach begin="1" end="${5-order.appraise.pricestar}" step="1">
	                               	  		<img src="${basePath}static/css/front/images/house-start.png"/>
	                               	  	</c:forEach>	
	                               </dd>
	                               <dt>地段：</dt>
	                               <dd>
	                               	   <c:forEach begin="1" end="${order.appraise.placestar}" step="1">
                               	  		<img src="${basePath}static/css/front/images/house-start-red.png"/>
	                               	  	</c:forEach>
	                               	  	<c:forEach begin="1" end="${5-order.appraise.placestar}" step="1">
	                               	  		<img src="${basePath}static/css/front/images/house-start.png"/>
	                               	  	</c:forEach>
	                               </dd>
	                               <dt>交通：</dt>
	                               <dd>
	                                   <c:forEach begin="1" end="${order.appraise.trafficstar}" step="1">
                               	  		<img src="${basePath}static/css/front/images/house-start-red.png"/>
	                               	  	</c:forEach>
	                               	  	<c:forEach begin="1" end="${5-order.appraise.trafficstar}" step="1">
	                               	  		<img src="${basePath}static/css/front/images/house-start.png"/>
	                               	  	</c:forEach>
	                               </dd>
	                               <dt>环境：</dt>
	                               <dd>
	                                   <c:forEach begin="1" end="${order.appraise.conditionstar}" step="1">
                               	  		<img src="${basePath}static/css/front/images/house-start-red.png"/>
	                               	  	</c:forEach>
	                               	  	<c:forEach begin="1" end="${5-order.appraise.conditionstar}" step="1">
	                               	  		<img src="${basePath}static/css/front/images/house-start.png"/>
	                               	  	</c:forEach>
	                               </dd>
	                           </dl>
	                           <p class="houseRecode-comment">评论内容：${order.appraise.content }</p>
	                           <!-- uploadImg -->
	                           <div class="uploadImg mt10">
	                           		<c:forEach var="picItem" items="${order.appraise.picList }">
	                           			<img width="78px" height="78px" src="${basePath}${picItem}"/>
	                           		</c:forEach>
	                           </div>
	                           <span class="line-hr"></span>
	                           <div class="addComment mt20">
	                           	<form id="appendForm">
	                           	 <input type="hidden" name="id" value="${order.appraise.id }"/>	
	                             <span>追加评论：<input name="appendcontent" id="appendcontent" type="text"></span><a href="#" class="btnUpdateMsg">提交评价</a>
	                             </form>
	                           </div>
	                        </div>
	                    </div>
	                    <span class="line-hr"></span>
	                    <h3 class="clearfix mt10">服务评价<span class="serveMan">服务方：洪立（经纪人）</span></h3>
	                    <div class="houseRecode-body mt20">
	                        <!-- houseRecode-tips -->
	                        <div class="houseRecode-tips clearfix">
	                           <dl class="clearfix">
	                               <dt>服务态度：</dt>
	                               <dd>
	                               	<c:forEach begin="1" end="${order.appraise.servicemannerstar}" step="1">
                               	  		<img src="${basePath}static/css/front/images/house-start-red.png"/>
	                               	  	</c:forEach>
	                               	  	<c:forEach begin="1" end="${5-order.appraise.servicemannerstar}" step="1">
	                               	  		<img src="${basePath}static/css/front/images/house-start.png"/>
	                               	  	</c:forEach>
	                               </dd>
	                               <dt>专业技能：</dt>
	                               <dd>
	                               	<c:forEach begin="1" end="${order.appraise.serviceskillstar}" step="1">
                               	  		<img src="${basePath}static/css/front/images/house-start-red.png"/>
	                               	  	</c:forEach>
	                               	  	<c:forEach begin="1" end="${5-order.appraise.serviceskillstar}" step="1">
	                               	  		<img src="${basePath}static/css/front/images/house-start.png"/>
	                               	  	</c:forEach>
	                               </dd>
	                           </dl>
	                           <p class="houseRecode-comment">${order.appraise.appraisecontent }</p>
	                        </div>
	                    </div>
	                </div><!-- 评价结束 -->
	                
	                
        	</div>
        </div>
    </div>
</div>
<!--split-line-->
<div class="split-line">
	<div class="split-line-w1200"></div>
</div>
</body>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/style.js"></script>
</html>
<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp" %>
<%@include file="/WEB-INF/views/front/member/memberHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>退订申请修改</title>
	<script type="text/javascript" src="${basePath }static/js/front/member/orderOpr.js"></script>
</head>
<body>
        <!--PersonalCenter-main-r-->
		<div class="PersonalCenter-main-r tradingCenter-main-r">
        	<!-- tradingCenter-reverse -->
        	<div class="tradingCenter-reverse">
        		<div class="MyFootprint-title">
        			<span class="level-1">交易中心</span>&nbsp;&nbsp;&gt;&nbsp;&nbsp;
        			<span class="level-2">我的订单</span>&nbsp;&nbsp;&gt;&nbsp;&nbsp;
        			<span class="level-3">退订申请</span>
        		</div>
        		
        		<h3 class="reverseStade">当前订单状态：
        			<span class="blue">
        				<c:choose>
        					<c:when test="${order.status == 0}">待商家确认房源</c:when>
        					<c:when test="${order.status == 1}">待用户支付订金</c:when>
        					<c:when test="${order.status == 2}">待用户线下签约+支付首付</c:when>
        					<c:when test="${order.status == 9}">等待银行审核</c:when>
        					<c:when test="${order.status == -9 || order.status == -1}">订单关闭</c:when>
        					<c:otherwise></c:otherwise>
        				</c:choose>
        			</span>
        		</h3>
        		
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
        						<td>成交时间：<span>&nbsp;-&nbsp;</span></td>
        					</tr>

        				</table>
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
        								<td class="merMsgOne">
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
        			
        			
        			<span class="line-hr"></span>
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
        					<img src="${basePath}/static/css/front/images/unsubscribe01.png" alt="">
        				</div>
        			</div>
        			
        			<!-- 退订按钮点击后填写的退订表单 -->
        				<span class="line-hr"></span>
        				<h3 class="clearfix mt10 comment-title">退订申请</h3>
        				<form id="submitForm">
        					<input name="orderid" value="${order.id}" type="hidden"/>
        					<input name="id" value="${debook.id}" type="hidden"/>
				            <div class="comment-body mt20">
				                <div class="row clearfix">
				                  <div class="comment-body-title">退款原因：</div>
				                  <div class="comment-body-ipt">
				                    <select name="reasonid">
				                      <option <c:if test="${debook.reasonid == 1 }">selected</c:if> value="1">不符合心意</option>
				                      <option <c:if test="${debook.reasonid == 2 }">selected</c:if> value="2">房子太贵</option>
				                      <option <c:if test="${debook.reasonid == 3 }">selected</c:if> value="3">距离太远</option>
				                    </select>
				                  </div>
				                </div>
				                
				                <div class="row mt10 clearfix">
				                  <div class="comment-body-title">退款金额：</div>
				                  <div class="comment-body-ipt">
				                    <input type="text" name="money" value="${debook.money }" onkeyup='this.value=this.value.replace(/\D/gi,"")'>
				                    <span>最多为订金总额&nbsp;<span class="red" id="maxDebookMoney">${order.bookmoney }</span>&nbsp;</span>
				                    <a href="#" class="offerPayTel">退款说明</a>
				                  </div>
				                </div>
				                
				                 <div class="row mt10 clearfix">
				                  <div class="comment-body-title fl">退款说明：</div>
				                  <div class="comment-body-ipt fl">
				                    <textarea class="offerPayTxt" name="description" id="description">${debook.description }</textarea>
				                  </div>
				                </div>
				                
				                <div class="row mt10 clearfix"> 
				                  <div class="comment-body-btn">
				                    <a class="btn-submit">提交申请</a>
				                    <a class="btn-link ml5" href="${basePath}front/member/order/list.htm">取消并返回</a>
				                  </div>
				                </div>
				                
				              </div>
			              </form><!-- 退订表单内容结束 -->
			            
			            <span class="line-hr"></span>
			            <h3 class="clearfix mt20 comment-title">常见问题</h3>
			                <div class="commet-problem mt20 mb50">
			                  <p class="commet-problem01">如果是商家的责任，商家又拒绝退款，应该怎么办？</p>
			                  <p>1）&nbsp;建议把“退款说明”，进行详细说明，以便商家核实处理。</p>
			                  <p>2）&nbsp;如果商家拒绝退款，请认真查看拒绝理由，以便查证是否是自身原因。</p>
			                  <p>3）&nbsp;如果却为商家原因，商家又拒绝退款，请联系我们的客服，我们将第一时间介入解决问题。客服电话：<span class="red">400-165-1566</span> <img src="${basePath }static/images/wkt-pic.png" class="cursor"></p>
			                </div>  
        			
        			
        		</div>
        	</div>
        </div>
    </div>
</div>
<!--split-line-->
<div class="split-line">
	<div class="split-line-w1200"></div>
</div>

<script type="text/javascript">

	$(function(){
		
		parent.scroll(0,0);
		
		//退订
		$('.btn-submit').click(function(){
			submitUnsub('${basePath}/front/member/order/submitupdate.htm');
		});
		
	})
</script>

</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/style.js"></script>
</html>
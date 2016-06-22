<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<%@include file="/WEB-INF/views/front/member/memberHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>订单详情</title>
	
	<script type="text/javascript" src="${basePath}static/js/front/member/orderOpr.js"></script>
</head>
<body>
        <!--PersonalCenter-main-r-->
		<div class="PersonalCenter-main-r tradingCenter-main-r">
        	<!-- tradingCenter-reverse -->
        	<div class="tradingCenter-reverse">
        		<div class="MyFootprint-title">
        			<span class="level-1">交易中心</span>&nbsp;&nbsp;&gt;&nbsp;&nbsp;
        			<span class="level-2">我的订单</span>&nbsp;&nbsp;&gt;&nbsp;&nbsp;
        			<span class="level-3">订单详情</span>
        		</div>
        		
        		<h3 class="reverseStade">当前订单状态：
        			<span class="blue" id="showStatus">
        				${fns:getDictLabel(order.status,'ORDER_STATUS','')}
        			</span>
        		</h3>
        		
        		<div class="reverse-body mt10">
        			<!-- reverse-detail -->
        			<div class="reverse-detail">
        				<table>
        					<tr>
        						<td>楼盘名称：<span>${ order.housesInfo.name}</span></td>
        						<td>楼盘地址：<span>${ order.housesInfo.detailaddress}</span></td>
        						<td>开发商：<span>${estate.username}</span></td>
        					</tr>
        					<tr>
        						<td>下订用户：<span class="linkman">${order.user.username}<img src="${basePath}/static/css/front/images/wkt-pic.png" alt=""></span></td>
        						<td>身份证号：<span>${order.buyeridcard}</span></td>
        						<td>联系方式：<span>${order.buyerphone}</span></td>
        					</tr>
        					<tr>
        						<td>置业商家：<span class="linkman">${order.seller.username}<img src="${basePath}/static/css/front/images/wkt-pic.png" alt=""></span></td>
        						<td>联系方式：<span>${order.seller.phone}</span></td>
        						<td>购房补贴：<span>${order.subsidymoney}元</span></td>
        					</tr>
        					<tr>
        						
        						<td>创建时间：<span><f:formatDate value="${order.createtime}" pattern="yyyy-MM-dd HH:mm:ss" /></span></td>
        						<td>
        							付款时间：
        							<c:choose>
			        					<c:when test="${order.status ==0 || order.status ==1}">
			        						<span>&nbsp;-&nbsp;</span>
			        					</c:when>
			        					<c:otherwise>
			        						<span><f:formatDate value="${order.paytime}" pattern="yyyy-MM-dd HH:mm:ss" /></span>
			        					</c:otherwise>
			        				</c:choose>
        						</td>
        						<td>
        							成交时间：
        							<c:choose>
			        					<c:when test="${order.status == 9}">
			        						<span><f:formatDate value="${order.finishtime}" pattern="yyyy-MM-dd HH:mm:ss" /></span>
			        					</c:when>
			        					<c:otherwise>
			        						<span>&nbsp;-&nbsp;</span>
			        					</c:otherwise>
			        				</c:choose>
        						</td>
        					</tr>

        				</table>
        			</div>
        			
        			<!-- reverse-level -->
        			<div class="reverse-level">
        				<c:if test="${order.status >= 0}">
	        				<div class="level-state">
	        					<ul class="clearfix">
	        						<li class="level-state01">已完成</li>
	        						<li class="level-state02">进行中</li>
	        						<li class="level-state03">失败</li>
	        					</ul>
	        				</div>
        				</c:if>
        				
        				<!-- 流程展示 -->
        				<div id="normalImageShow">
        				<c:choose>
	        				<c:when test="${order.status == 0}">
	        					<div class="level-stateLevel mt20">
	        						<img src="${basePath}/static/css/front/images/reverse-level02.png" alt="">
	        					 </div>
	        				</c:when>
	        				<c:when test="${order.status == 1}">
	        					<div class="level-stateLevel mt20">
	        						<img src="${basePath}/static/css/front/images/reverse-level03.png" alt="">
	        					</div>
	        				</c:when>
	        				<c:when test="${order.status == 2}">
	        					<div class="level-stateLevel mt20">
	        						<img src="${basePath}/static/css/front/images/reverse-level04.png" alt="">
	        					</div>
	        				</c:when>
	        				<c:when test="${order.status == 9}">
	        					<div class="level-stateLevel mt20">
	        						<img src="${basePath}/static/css/front/images/reverse-level05.png" alt="">
	        					</div>
	        				</c:when>
	        				<c:when test="${order.status == -9}">
	        					<div class="level-stateLevel mt20">
	        						<img src="${basePath}/static/css/front/images/reverse-level03-fail.png" alt="">
	        				    </div>
	        				</c:when>
	        			</c:choose>
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
        								<td class="merMsgOne">
        									<img src="${basePath}/static/css/front/images/order-detail01.png">
        									<div class="merMsgOne-msg">
        										<span class="merMsgOne-list">${order.source.houseType.name}</span>
        										<span class="merMsgOne-list">
        											${order.source.houseType.roomnum}室&nbsp;
        											${order.source.houseType.hallnum}厅&nbsp;
													${order.source.houseType.toiletnum}卫&nbsp;
													${order.source.houseType.balconynum}阳</span>
        										<span class="merMsgOne-list">
        											${order.source.housesBuilding.name}&nbsp;&nbsp;&nbsp;
        											${order.source.floornum}层&nbsp;&nbsp;&nbsp;01单元</span>
        										<span class="merMsgOne-list">${order.source.buildarea}平米</span>
        									</div>
        								</td>
        								<td>${order.source.unitprice}</td>
        								<td><f:formatNumber value="${order.oriallmoney}" pattern="#,#00.#"/></td>
        								<td class="privi">
        									<span class="priviList">商业贷款：<span>98折</span></span>
        									<span class="priviList">楼盘红包：<span>2,000元</span></span>
        									<span class="priviList">抵扣卡卷：<span>50,000元</span></span>
        								</td>
        								<td class="privi">
        									<span class="priviList">平台红包：<span>2,000元</span></span>
        									<span class="priviList">购房补贴：<span>${order.subsidymoney}元</span></span>
        								</td>
        								<td>
        									<span>2,124,000</span>
        								</td>
        							</tr>
        						</tbody>
        					</table>
        				</div>
        				
        				<div class="reverse-order-total clearfix mt15">
							
        					<c:choose>
	        					<c:when test="${order.status == 0}">
	        						<span class="total-money">订单总金额(定金)：&nbsp
	        							;<span class="red"><f:formatNumber value="${order.bookmoney}" pattern="#,#00.#"/></span>&nbsp;元</span>
		        					<span class="fr btnOrderDelete"><a href="javascript:void(0)" onclick="cancel(${order.id});">取消预订</a></span>
		        					<span class="fr gray">如果商家在
		        						<span class="red countdown confirm" downBegintime="${order.createtime}" limittime="${fns:getDictValue('默认限制确认时间','LIMIT_TIME','7200000')}"></span>
		        						&nbsp;内未确认订单房源，订单将自动关闭
		        					</span>
	        					</c:when>
	        					<c:when test="${order.status == 1}">
	        						<span class="total-money">订单总金额(定金)：&nbsp;
	        							<span class="red"><f:formatNumber value="${order.bookmoney}" pattern="#,#00.#"/></span>&nbsp;元</span>
		        					<span class="fr btnOrderDelete"><a href="javascript:void(0)" onclick="cancel(${order.id});">取消预订</a></span>
		                            <span class="fr btnOrderPay"><a href="javascript:void(0);" onclick="pay(${order.id});">立即支付</a></span>
		        					<span class="fr gray">请在<span class="red">&nbsp;01&nbsp;</span>时<span class="red">&nbsp;30&nbsp;</span>分<span class="red">&nbsp;29&nbsp;</span>秒&nbsp;内支付该订单，否则订单将失效关闭</span>
	        					</c:when>
	        					<c:when test="${order.status == 2}">
	        						<span class="total-money">订单总金额(定金)：&nbsp;<span class="red">30,000</span>&nbsp;元</span>
		        					<span class="fr btnOrderConcede"><a href="javascript:void(0);" onclick="unsubscribe(${order.id});">申请退订</a></span>
		                            <span class="fr btnOrderDelay"><a href="javascript:void(0);" onclick="applyDelay(${order.id});">申请延期</a></span>
		        					<span class="fr gray order-delay">请在<span class="red">&nbsp;01&nbsp;</span>时<span class="red">&nbsp;30&nbsp;</span>分<span class="red">&nbsp;29&nbsp;</span>秒&nbsp;内完成线下签约，否则将没收该定金<span class="order-delay-msg">已申请延期时长：<span>3</span>天，等待商家同意..</span></span>
	        					</c:when>
	        					<c:when test="${order.status == 9}">
	        						<span class="total-money">订单总金额(定金)：&nbsp;
	        							<span class="red"><f:formatNumber value="${order.bookmoney}" pattern="#,#00.#"/></span>&nbsp;元</span>
                            		<span class="fr btnOrderConcede">
                            			<c:if test="${not empty order.appraise &&  empty order.appraise.appendcontent}">
	                            			<a href="javascript:void(0);" onclick="appendComment(${order.id});">追加评论</a>
                            			</c:if>
                            			<c:if test="${empty order.appraise}">
                            				<a href="javascript:void(0);" onclick="comment(${order.id});">去评论</a>
                            			</c:if>
                            		</span>
	        					</c:when>
	        					<c:when test="${order.status == -9}">
	        						<span class="total-money">订单总金额(定金)：&nbsp;
	        							<span class="red"><f:formatNumber value="${order.bookmoney}" pattern="#,#00.#"/></span>&nbsp;元</span>
		        					<span class="fr btnOrderConcede"><a href="javascript:void(0)" onclick="reApply(${order.id});">重新发起预订</a></span>
		                            <span class="fr btnOrderDelete"><a href="javascript:void(0);" onclick="delOrder(${order.id});">删除</a></span>
	        					</c:when>
	        					<c:when test="${order.status == -1}">
	        						<c:if test="${order.currentstatus == -1}">
	        							<span class="total-money">订单总金额(定金)：&nbsp;
	        								<span class="red"><f:formatNumber value="${order.bookmoney}" pattern="#,#00.#"/></span>&nbsp;元</span>
			        					<span class="fr btnOrderDelete"><a href="javascript:void(0);" onclick="cancelUnsub(${order.id});">取消退订</a></span>
			        					<span class="fr gray">等待处理：<span class="red">&nbsp;01&nbsp;</span>时<span class="red">&nbsp;30&nbsp;</span>分<span class="red">&nbsp;29&nbsp;</span>秒&nbsp;</span>
	        						</c:if>
	        						<c:if test="${order.currentstatus == -7}">
	        							<span class="total-money">订单总金额(定金)：&nbsp;
	        								<span class="red"><f:formatNumber value="${order.bookmoney}" pattern="#,#00.#"/></span>&nbsp;元</span>
		        						<span class="fr btnOrderConcede"><a href="javascript:void(0);" onclick="reUnsub(${order.id});">重新发起</a></span>
			        					<span class="fr btnOrderDelete"><a href="javascript:void(0);" onclick="cancelUnsub(${order.id});">取消退订</a></span>
			        					<span class="fr gray">退订期限：<span class="red">&nbsp;01&nbsp;</span>时<span class="red">&nbsp;30&nbsp;</span>分<span class="red">&nbsp;29&nbsp;</span>秒&nbsp;</span>
	        						</c:if>
	        					</c:when>
	        				</c:choose>
        				</div>
        			</div>
        			
        			<!-- 退订状态 -->
        			<c:if test="${ order.status == -1}">
        			
	        			<span class="line-hr mt20"></span>
	        				<div class="reverse-level">
		        				<div class="level-state">
		        					<ul class="clearfix">
		        						<li class="level-state01">已完成</li>
		        						<li class="level-state02">进行中</li>
		        						<li class="level-state03">失败</li>
		        					</ul>
		        				</div>
		        				<!-- 退订流程图 -->
		        				<div class="level-stateLevel mt20">
		        					<c:choose>
										<c:when test="${order.status == -1}">
											<img src="${basePath}/static/css/front/images/unsubscribe02.png" alt="" />
				        				</c:when>	        					
										<c:when test="${order.status == -3}">
											<img src="${basePath}/static/css/front/images/unsubscribe03-unload.png" alt="" />
				        				</c:when>	
				        				<c:when test="${order.status == -4}">
											<img src="${basePath}/static/css/front/images/unsubscribe03.png" alt="" />
				        				</c:when>
				        				<c:when test="${order.status == -5}">
											<img src="${basePath}/static/css/front/images/unsubscribe04.png" alt="" />
				        				</c:when>	        					
		        					</c:choose>
		        				</div>
		        			</div>
		        			
	        				<c:choose>
							  <c:when test="${fns:getDictValue('退订','ORDER_STATUS','') == order.status}">
								  <span class="line-hr mt20"></span>
					              <h3 class="clearfix mt10 comment-title">请等待卖家处理<span class="comment-time">申请时间：2016-02-26&nbsp;&nbsp;&nbsp;16:50:31</span></h3>
					              <div class="commet-problem mt20">
					                 <p>1）&nbsp;如果商家同意退订，系统将会在三天时间内将定金退回到原支付账户中。</p>
					                 <p>2）&nbsp;如果商家拒绝退款，你可以修改退订申请后再次发起，商家会重新处理。</p>
					                 <p>3）&nbsp;如果商家在<span class="red"></span>
					                 			秒内未处理，退款申请将自动达成，系统将会在三天时间内将定金退回到原支付账户中。<span class="red"></span> 
					                 			<img src="${basePath}/static/css/front/images/wkt-pic.png" class="cursor"></p>
					              </div>
					              <span class="line-hr"></span>
					              <div class="commet-operation">
					                <span>您还可以：&nbsp;&nbsp;<a href="javascript:void(0);" onclick="modifyUnsub(${order.id});">修改退订申请</a>
					                	<span class="split">|</span><a href="javascript:void(0);" onclick="cancelUnsub(${order.id});">取消退订</a>
					                	<span class="split">|</span><a href="javascript:void(0);" onclick="platformInto(${order.id});">申请平台介入</a></span>
					              </div>
					          </c:when>	 
					                 					
							  <c:when test="${order.status == -12}">
							  	  <span class="line-hr mt20"></span>
						          <div class="commet-answer mt40">
						              <h3>商家已经拒绝退款申请</h3>
						              <p class="mt10">我们将在<span class="red">02</span>天<span class="red">23</span>时<span class="red">10</span>分<span class="red">20</span>自动取消该退订申请，如果你还需要继续退款，请<a href="#" class="btn-reloadLink">重新发起申请</a>。</p>
						          </div>
						          <span class="line-hr"></span>
						          <div class="commet-operation">
						              <span>您还可以：&nbsp;&nbsp;<a href="javascript:void(0);" onclick="modifyUnsub(${order.id});">修改退订申请</a>
						              	<span class="split">|</span><a href="javascript:void(0);" onclick="cancelUnsub(${order.id});">取消退订申请</a>
						              	<span class="split">|</span><a href="javascript:void(0);" onclick="platformInto(${order.id});">申请平台介入</a></span>
						          </div>
							  </c:when>	
							  
				        	  <c:when test="${order.status == -13}">
				        	  		<span class="line-hr mt20"></span>
						             <div class="commet-answer mt40">
							             <h3>商家已经同意退款</h3>
							             <p class="mt10">我们将在<span class="red">02</span>天<span class="red">23</span>时<span class="red">10</span>分<span class="red">20</span>秒内将定金退回到原支付账户中，请注意查收。</p>
						             </div> 
				        	  </c:when>
				        	  
				        	  <c:when test="${fns:getDictValue('已退款','ORDER_STATUS','') == order.status}">
				        	  	  <span class="line-hr mt20"></span>
					              <div class="commet-answer-ok mt40">
					                <p class="commet-answer-ok-stade mt10"><span><img src="${basePath}/static/css/front/images/order-complete.png">退款成功！</span></p>
					                <p class="commet-answer-ok-stade-gray mt10"><span>退款成功时间：<span>2016-02-26&nbsp;&nbsp;11:06</span></span></p>
					                <p class="mt10 commet-answer-ok-stade-money">退款金额：&nbsp;<span class="red">30,000&nbsp;</span>元<a href="#" class="btnMoneyDetail">查看退款详情</a></p>
					              </div> 
				        	  </c:when>
				        	  
		        			</c:choose>
		        			
		        			<span class="line-hr mt20"></span>
					        <h3 class="mt20 comment-title">交涉情况</h3>
					        <div class="commet-leaveMsg">
					            <div class="commet-leaveMsg-news clearfix">
					            	<div class="commet-leaveMsg-detail">
					                    <img class="icon-commet-head" src="${basePath}/static/css/front/images/icon-commet-head.png"></img>
					                    <span class="commet-leaveMsg-list">您：<span>因你们的房子存在工程问题，所以申请退订</span></span>
					                </div>
					                <div class="commet-leaveMsg-time">
					                   <span>2016-02-26 16:50:31</span>
					                </div>
					            </div>
					        </div>
					              
	        				<span class="line-hr"></span>
	        				<c:if test="${order.status != -5}">
	        					<h3 class="clearfix mt20 comment-title">常见问题</h3>
				                <div class="commet-problem mt20 mb50">
				                  <p class="commet-problem01">如果是商家的责任，商家又拒绝退款，应该怎么办？</p>
				                  <p>1）&nbsp;建议把“退款说明”，进行详细说明，以便商家核实处理。</p>
				                  <p>2）&nbsp;如果商家拒绝退款，请认真查看拒绝理由，以便查证是否是自身原因。</p>
				                  <p>3）&nbsp;如果却为商家原因，商家又拒绝退款，请联系我们的客服，我们将第一时间介入解决问题。客服电话：<span class="red">400-165-1566</span> 
				                  		<img src="${basePath}/static/css/front/images/wkt-pic.png" class="cursor"></p>
				                </div>
	        				</c:if>
		                
        			</c:if>
        			</div>
        			
        			<!-- 评价展示开始 -->
        			<c:if test="${fns:getDictValue('交易成功','ORDER_STATUS','') == order.status and not empty order.appraise}">
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
	                           <p class="houseRecode-comment">评论内容：${order.appraise.content}</p>
	                           <!-- uploadImg -->
	                           <div class="uploadImg mt10">
	                               <c:forEach var="picItem" items="${order.appraise.picList}">
	                           			<img width="78px" height="78px" src="${basePath}${picItem}"/>
	                           		</c:forEach>
	                           </div>
	                           <span class="line-hr"></span>
	                           <p class="houseRecode-comment">追评：${order.appraise.appendcontent}</p>
	                        </div>
	                    </div>
	                    <span class="line-hr"></span>
	                    <h3 class="clearfix mt10">服务评价<span class="serveMan">服务方：${order.seller.username}
	                    	<c:if test="${fns:getDictValue('经纪人','USER_TYPE','') == order.seller.type}">（经纪人）</c:if>
	                    	<c:if test="${fns:getDictValue('房地产商','USER_TYPE','') == order.seller.type}">（房地产商）</c:if>
	                    	（经纪人）</span></h3>
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
	                           <p class="houseRecode-comment">${order.appraise.appraisecontent}</p>
	                        </div>
	                    </div>
	                </div><!-- 评价结束 -->
                </c:if>
                
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
		window.parent.scoll(0,0);
	});
	
	//待确认、待付款、退订待处理倒计触发方法(开始时间和处理时长):超时样式显示
	function overtimeShow(obj){
		var statusText = '';
		var imgPath = '';
		if($countdownSpan.hasClass('pay')){
			statusText = '订单关闭,用户支付超时';
		}else if($countdownSpan.hasClass('confirm')){
			statusText = '订单关闭,商家确认超时';
		}else if($countdownSpan.hasClass('dealDebook')){
			statusText = '退订成功,待退款';
		}
		
		$('#showStatus').html(statusText);
		//$('#normalImageShow')
	}
	
	/**
	* 追加评论
	*/
	function appendComment(id){
		window.location.href= basePath + 'front/member/order/appendComment.htm?id='+id;
	}
	
</script>

</body>
</html>
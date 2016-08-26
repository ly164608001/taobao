<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>淘宝任务列表</title>
<body>
	<div class="workContent ml20">
		<h4>
			<span class="title">淘宝精刷任务</span>
		</h4>
		<div class="header">
			<div class="panel panel-default panel-shenHead">
				<div class="panel-body">
					<h5>
						您当前的任务审核模式 <input class="btn radius btn-secondary btn-change"
							type="button" value="修改任务审核模式">
					</h5>
					<p>
						<span> 1、审核已付款： <span class="orange">商家自审</span>
						</span> <span> 2、审核确认收货好评： <span class="orange">商家自审</span>
						</span>
					</p>
				</div>
			</div>
		</div>
		<section class="mt20">
		<div class="panel panel-default panel-tips mt20">
			<div class="panel-header">重要说明</div>
			<div class="panel-body">
				<p>
					1、确认要发布任务的产品 <span class="orange">已关闭淘宝客</span>
					的推广，以免部分买家利用淘宝客获得额外您的推广佣金；
				</p>
				<p>
					2、买家如没按商家要求做任务，商家可以投诉， <span class="orange">平台只受理未完成任务的投诉</span>
					，任务完成不再受理；
				</p>
				<div class="showHide">
					<p>
						3、快递 <span class="orange">物流出现卡住或没有物流信息</span> 的情况，淘宝上发货 <span
							class="orange">超过了7天</span> ，即 <span class="orange">第8天</span>
						应允许买家在淘宝确认收货和好评，这种情况不算买家提前收货，请商家选择好的快递公司；
					</p>
					<p>
						4、在任务【 <span class="orange">接手方已付款，等待商家审核</span> 】的商家审核步骤，请商家严格审查
						<span class="orange">买家付款信息(订单号、买家旺旺号)</span> 等信息
						，如出现不一致，请马上提起申诉，否则后续出现相关问题后果自负。比如：❶、出现接单旺旺号与店铺实际下单旺旺号不一致，但您也给审核通过了，导致后面您真实发货，后果自负；❷、出现买家在旺旺刷平台回填的订单号与店铺实际下单的订单号不一致，但您也给审核通过了，导致后面您真实发货，后果自负；
					</p>
					<p>
						5、在任务【 <span class="orange">确认收货好评，完成任务</span> 】的商家审核步骤，默认审核操作时间 <span
							class="orange">24小时</span> ，请商家严格审查 <span class="orange">买家是否确认收货和好评</span>
						等，若买家未按要求完成，请马上提起申诉，否则后续出现相关问题后果自负；
					</p>

					<p>
						6、任务【 <span class="orange">确认收货好评，完成任务</span> 】的商家审核步骤，商家在默认 <span
							class="orange">24小时</span> 内未审核，如果 <span class="orange">再超过24小时</span>
						还未审核，即在 <span class="blue">48小时未审核</span>
						，系统将自动返款(本金和佣金)给买家，请商家及时审核，出现相关问题后果自负。任务有超时会补偿蚂蚁币给买家（ <span
							class="blue">每超出12小时补偿2个蚂蚁币</span> ）；
					</p>
					<p>
						7、 <span class="blue">1个蚂蚁币=0.68元</span> ；
					</p>

					<p>
						8、【 <span class="blue">重要说明</span> 】 若商家的账户余额不足（ <span
							class="orange"> 余额 < 0元</span> ），还有进行中的任务，需要商家审核的步骤【 <span
							class="orange">接手方已付款，等待商家审核</span> 】、【 <span class="orange">确认收货好评，完成任务</span>
						】，商家未在默认 <span class="orange">24小时</span>
						内审核，超时的任务自动审核通过，若后续出现相关问题后果商家自行承担！
					</p>
				</div>
				<div class="checkShow">
					<label for="checkshow"> <input type="checkbox"
						name="checkshow" id="checkshow">&nbsp;下次不再自动展开</label>
				</div>
			</div>
		</div>
		<div class="tiro-control">
			<span class="click-btn open-btn">收缩</span>
		</div>

		</section>
		<div class="progressImg mt20">
			<img src="${basePath}static/css/front/images/tasklc2.png">
		</div>
		<div class="workDoing mt20">
			<div id="tab_demo" class="HuiTab">
				<div class="tabBar cl">
					<span onclick="searchByStatus(1);" <c:if test="${vo.model.mainstatus == 1}">class="clearfix tip-numberWrap"</c:if>><em class="f-l">要您操作的任务</em>
						<em class="tips-number f-l">20</em>
					</span> 
					<span onclick="searchByStatus(2);" <c:if test="${vo.model.mainstatus == 2}">class="clearfix tip-numberWrap"</c:if>> <em class="f-l">进行中的任务</em> <em
						class="tips-number f-l">20</em>
					</span> 
					<span onclick="searchByStatus(3);" <c:if test="${vo.model.mainstatus == 3}">class="clearfix tip-numberWrap"</c:if>> <em class="f-l">暂停中的任务</em> <em
						class="tips-number f-l">20</em>
					</span> 
					<span onclick="searchByStatus(4);" <c:if test="${vo.model.mainstatus == 4}">class="clearfix tip-numberWrap"</c:if>> <em class="f-l">已完成的任务</em> <em
						class="tips-number f-l">20</em>
					</span> 
					<span onclick="searchByStatus(-1);" <c:if test="${empty vo.model.status}">class="clearfix tip-numberWrap"</c:if>> <em class="f-l">全部任务</em> <em
						class="tips-number f-l">20</em>
					</span>
				</div>
				<div class="tabCon">
					<div class="search-tab mt20 search-tab-other">
					  <form id="searchForm" method="post" action="${basePath}front/seller/task/taskList.htm">
					  	<input type="hidden" name="model.mainstatus" value="${vo.model.mainstatus}" id="pstatus"/>
						<ul>
							<li class="tab02">
								<span class="tab-title" style="width: 140px;">任务编号：</span>
								<input type="text" placeholder="请输入任务编号" class="input-text radius size-M" />
								<span class="tab-title">淘宝号：</span> 
								<input type="text" placeholder="请输入淘宝号" class="input-text radius size-M" />
								<span class="tab-title">单品价格：</span> 
								<input type="text" placeholder="请输入单品价格" class="input-text radius size-M" />
							</li>
							<li class="tab02"><span class="tab-title">发布时间：</span> <span
								class="timeBet"> <input id="d4311" placeholder="请输入开始时间"
									class="Wdate write-time input-text radius size-M" type="text"
									onFocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm',maxDate:'#F{$dp.$D(\'d4312\')||\'2020-10-01\'}'})" />
									<span class="sprite">-</span> <input id="d4312"
									placeholder="请输入结束时间"
									class="Wdate write-time input-text radius size-M" type="text"
									onFocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm',minDate:'#F{$dp.$D(\'d4311\')}',maxDate:'2020-10-01'})" />'
							</span> <span class="tab-title">店铺名称：</span> <span
								class="select-box radius"> <select class="select"
									size="1" name="demo1">
										<option value="" selected>默认select</option>
										<option value="1">菜单一</option>
										<option value="2">菜单二</option>
										<option value="3">菜单三</option>
								</select>
							</span> <input class="btn radius btn-secondary" type="button" onclick="dosearch();" value="查询"></li>
						</ul>
					  </form>
					</div>
					<div class="serch-type clearfix mt20">
						<span class="title f-l">当前状态：</span>
						<ul class="clearfix f-l">
							<li><a href="#">已接手待审核(0)</a></li>
							<li><a href="#">待付款(0)</a></li>
							<li><a href="#">已付款待审核(0)</a></li>
							<li><a href="#">待发货(0)</a></li>
							<li><a href="#">待收货(0)</a></li>
							<li><a href="#">已好评，待确认(0)</a></li>
							<li><a href="#">申述中(0)</a></li>
						</ul>
					</div>
					<div class="workTable mt30 searchTable">
						<table class="table table-border table-bg">
							<thead>
								<tr>
									<th><input type="checkbox" name="" /></th>
									<th width="20%">任务编号</th>
									<th>任务价格（元）</th>
									<th width="20%">任务要求</th>
									<th>悬赏佣金</th>
									<th>任务状态</th>
									<th>任务操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${list}" var="order" varStatus="vs"> 
									<tr>
										<th><input type="checkbox" name=""></th>
										<th colspan="6">
											<span class="mr10">发布时间：<f:formatDate value="${order.publictime}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
										 	<span class="mr10">QQ:5464569846</span>
										</th>
									</tr>
									<tr>
										<td>${vs.count}</td>
										<td class="first">
											<span>${order.orderno}</span> <span>发布人：${order.createuser.username}</span>
											<span> 关键词： <em class="red">布衣柜</em> <em class="red">实木</em></span> 
											<span> 
												<span class="label label-warning radius">淘宝</span>
												<span class="mobile-order" title="接任务者需要通过手机、pad等智能设备的app下单支付">手机订单</span>
											</span>
										</td>
										<td class="text-c assure-icon alipay">
											<span> <em class="red">1</em> 件
											</span> <span> 单件 <em class="red">138.00</em> 元
											</span> <span> 总额 <em class="red">138.00</em> 元
											</span> <span> <i></i> 平台担保
											</span>
										</td>
										<td><span>物流显示签收后五星带字好评</span> <span> <span
												class="label label-success radius">本人签收</span> <span
												class="label label-success radius">三星</span> <span
												class="label label-success radius">实名</span> <span
												class="label label-success radius">拍付款</span> <span
												class="label label-warning radius">分享</span> <span
												class="label label-warning radius">收藏</span> <span
												class="label label-warning radius">浏览</span> <span
												class="label label-success radius">本人签收</span> <span
												class="label label-success radius">三星</span> <span
												class="label label-success radius">实名</span> <span
												class="label label-success radius">拍付款</span> <span
												class="label label-warning radius">分享</span> <span
												class="label label-warning radius">收藏</span> <span
												class="label label-warning radius">浏览</span> <br> <span
													class="pt5 order"> 淘宝订单号： <em class="red">1639040737871287</em>
												</span> <span> <a href="#" class="btn btn-link btnBady">查看宝贝截图</a>
												</span></span></td>
										<td><span class="red">8.04元</span> <span>11.82个蚂蚁币</span></td>
										<td>
											<c:choose>
												<c:when test="${order.status == 1}">已发布待接单</c:when>
												<c:when test="${order.status == 1}">已付款待审核</c:when>
												<c:when test="${order.status == 1}"></c:when>
												<c:when test="${order.status == 1}"></c:when>
												<c:when test="${order.status == 1}"></c:when>
												<c:when test="${order.status == 1}"></c:when>
												<c:when test="${order.status == 1}"></c:when>
											</c:choose>
											<span>申诉中</span> 
											<span> <a href="#" class="btn btn-link">我要撤销申诉</a></span>
										</td>
										<td>
											<span> <a href="#" class="btn btn btn-secondary radius btn-sure">我要审核</a></span> 
											<span> <a href="#" class="btn btn-link btn-answer">查看申诉</a></span>
											<span> <a href="#" class="btn btn-link">查看任务详情</a> </span>
										</td>
									</tr>
									<tr>
										<td colspan="5"><span> 接手方： <img
												src="${basePath}static/css/front/images/vip0.jpg"> (IP:
													<em>${order.receiveruser.loginip}</em> ) 
													接手时间： <em><f:formatDate value="${order.receivetime}" pattern="yyyy/MM/dd HH:mm:ss" /></em>
													付款时间： <em><f:formatDate value="${order.paytime}" pattern="yyyy/MM/dd HH:mm:ss" /></em></span></td>
										<td><span> <i class="wangwang"></i> 采用买号 <em
												class="blue">独家秀秀</em>
										</span></td>
										<td><span> <a href="#" class="btn btn-link">查看淘宝地址</a>
										</span></td>
									</tr>
								</c:forEach> 
							</tbody>
						</table>
					</div>
					<div class="mt10 text-c">
						<a href="#" class="btn btn-secondary radius"> <i></i> 刷新任务
						</a>
					</div>
				</div>
				<div class="tabCon">内容二</div>
				<div class="tabCon">内容二</div>
				<div class="tabCon">内容二</div>
				<div class="tabCon">内容二</div>
			</div>
		</div>
	</div>

	<script>
		function searchByStatus(status){
			$('#searchForm input[type!="button"]').val('');
			$('#pstatus').val(status);
			$('#searchForm').submit();
		}
		
		$(function() {
			listenIframeHeight();
			
			// 收缩
			$('.open-btn').on('click', function() {
				$(this).parent('.tiro-control').siblings('.panel')
						.find('.showHide').slideToggle();
				$(this).toggleClass('active');
				if ($(this).hasClass('active')) {
					$(this).text('展开');
					$(this).css('background-position', '52px -24px');
				} else {
					$(this).text('收缩');
					$(this).css('background-position', '52px 11px');
				}
				listenIframeHeight();
			});
			
			// 任务申诉
			$('.btn-answer').on('click', function() {
				indexAgency = top.layer.open({
					type : 2,
					area : [ '700px', '650px' ],
					closeBtn : 1,
					shadeClose : true,
					content : [ './任务申诉(弹窗).html', 'no' ],
					title : '任务申诉',
					btn : [ '确定', '取消' ],
					yes : function(index) {
						console.log('这里执行提交操作');
					}
				});
				return false;
			});
			// 我要审核
			$('.btn-sure').on('click', function() {
				indexAgency = top.layer.open({
					type : 2,
					area : [ '700px', '550px' ],
					closeBtn : 1,
					shadeClose : true,
					content : [ './我要审核(弹窗).html', 'no' ],
					title : '任务审核',
					btn : [ '确认刷手已付款', '我要投诉，刷手虚假付款', '取消' ],
					yes : function(index) {
						console.log('这里执行提交操作');
					}
				});
				return false;
			});
			// 查看已付款截图
			$('.btnBady').on('click', function() {
				indexAgency = top.layer.open({
					type : 2,
					area : [ '580px', '600px' ],
					closeBtn : 1,
					shadeClose : true,
					content : [ './查看已付款订单截图(弹窗).html' ],
					title : '查看已付款订单截图',
					yes : function(index) {
						console.log('这里执行提交操作');
					}
				});
				return false;
			});
		});
	</script>
</body>
</html>
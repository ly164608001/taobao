<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<%@include file="/WEB-INF/views/front/estate/estateHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人中心</title>
</head>
<body>
	<div class="PersonalCenter-main-r">
		<!--personal-data-->
		<div class="personal-data clearfix">
			<div class="personal-messages">
				<div class="personal-messages-title">个人信息</div>
				<div class="personal-messages-main clearfix">
					<div class="personal-messages-main-l">
						<div class="member-head">
							<img src="${basePath}static/css/front/images/icon-commet-merchant.png" width="100"
								height="100" /> <span></span>
						</div>
					</div>
					<div class="personal-messages-main-r">
						<div class="personal-name">福建三盛地产有限公司</div>
						<div class="personal-level-house">
							<ul class="clearfix">
								<li><span class="authentication-pic"></span>（企业已认证）<a
									href="#" class="blue myCenterLink">我的账户 &gt;</a></li>
								<li>当前登入人员：<span>张三</span></li>
								<li>上次登入时间：<span class="gray">2016-02-26 08:30</span></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="edit">
					<input class="btn-edit" type="button" value="编辑企业资料" />
				</div>
			</div>
			<div class="convenient-service noBorder waitOrder">
				<h3 class="waitOrder-title">
					<img src="${basePath}static/css/front/images/icon-waitOrder.png">待处理订单
				</h3>
				<table class="table-orderDetail">
					<tbody>
						<tr class="first">
							<td><span class="orange">10</span><span>待确认房源订单</span></td>
							<td><span class="orange">1</span><span>退订中的订单</span></td>
							<td class="last"><span class="orange">0</span><span>延期签约订单</span></td>
						</tr>
						<tr>
							<td><span class="orange">10</span><span>代付款订单</span></td>
							<td><span class="orange">2</span><span>待签约订单</span></td>
							<td class="last"></td>
						</tr>
					</tbody>
				</table>
				<div class="tableUserLink mt10">
					<table>
						<tr>
							<td><span class="icon-userList01 icon-userList"></span><span
								class="tableUserLink-txt">楼盘代理(<span class="orange">5</span>)
							</span></td>
							<td><span class="icon-userList02 icon-userList"></span><span
								class="tableUserLink-txt">客户资料(<span class="orange">5</span>)
							</span></td>
							<td><span class="icon-userList03 icon-userList"></span><span
								class="tableUserLink-txt">楼盘点评(<span class="orange">5</span>)
							</span></td>
							<td><span class="icon-userList04 icon-userList"></span><span
								class="tableUserLink-txt">购房评价(<span class="orange">5</span>)
							</span></td>
							<td class="last"><span class="icon-userList05 icon-userList"></span><span
								class="tableUserLink-txt">系统通知</span></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<!-- newOrderMsg -->
		<div class="newOrderMsg mb10">
			<h3 class="mb10">
				<img src="${basePath}static/css/front/images/icon-newOrderMsg.png">最新签约
			</h3>
			<div class="table-newOrderMsg">
				<table>
					<thead>
						<tr>
							<th>楼栋</th>
							<th>楼层</th>
							<th>单元</th>
							<th>户型</th>
							<th>单价(元/m)</th>
							<th>总价(元)</th>
							<th>成交时间</th>
							<th>详情</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>3号楼</td>
							<td>17</td>
							<td>03</td>
							<td>EA1户型</td>
							<td>13000</td>
							<td>12,30,000</td>
							<td class="gray">25-10-12 08:05:12</td>
							<td><a href="#">查看</a></td>
						</tr>
						<tr>
							<td>3号楼</td>
							<td>17</td>
							<td>03</td>
							<td>EA1户型</td>
							<td>13000</td>
							<td>12,30,000</td>
							<td class="gray">25-10-12 08:05:12</td>
							<td><a href="#">查看</a></td>
						</tr>
						<tr>
							<td>3号楼</td>
							<td>17</td>
							<td>03</td>
							<td>EA1户型</td>
							<td>13000</td>
							<td>12,30,000</td>
							<td class="gray">25-10-12 08:05:12</td>
							<td><a href="#">查看</a></td>
						</tr>
						<tr>
							<td>3号楼</td>
							<td>17</td>
							<td>03</td>
							<td>EA1户型</td>
							<td>13000</td>
							<td>12,30,000</td>
							<td class="gray">25-10-12 08:05:12</td>
							<td><a href="#">查看</a></td>
						</tr>
					</tbody>

				</table>
			</div>
		</div>
		<div class="see-more">
			<a href="#" class="blue">查看更多</a>
		</div>
		<!-- agencyOrder -->
		<div class="agencyOrder mb10">
			<h3>代理推荐</h3>
			<span class="line-hr mt5"></span>
			<div class="agencyOrder-slide clearfix mt30">
				<span class="preLeft btn-pre"></span>
				<div class="agencyOrder-slide-detail clearfix">
					<div class="agencyOrder-slide-list clearfix">
						<img src="${basePath}static/css/front/images/agencyImg.png">
							<div class="agencyOrder-slide-txt">
								<span class="agencyOrder-company agencyOrder-txt">麦田房产有限公司</span>
								<span class="agencyOrder-phone agencyOrder-txt"><img
									src="${basePath}static/css/front/images/icon-phone.png"><span>13645059836</span></span> <span
									class="agencyOrder-type agencyOrder-txt">代理类型：<span>营销公司</span></span>
							</div>
					</div>
					<div class="agencyOrder-slide-list clearfix">
						<img src="${basePath}static/css/front/images/agencyImg.png">
							<div class="agencyOrder-slide-txt">
								<span class="agencyOrder-company agencyOrder-txt">麦田房产有限公司</span>
								<span class="agencyOrder-phone agencyOrder-txt"><img
									src="${basePath}static/css/front/images/icon-phone.png"><span>13645059836</span></span> <span
									class="agencyOrder-type agencyOrder-txt">代理类型：<span>营销公司</span></span>
							</div>
					</div>
					<div class="agencyOrder-slide-list clearfix">
						<img src="${basePath}static/css/front/images/agencyImg.png">
							<div class="agencyOrder-slide-txt">
								<span class="agencyOrder-company agencyOrder-txt">麦田房产有限公司</span>
								<span class="agencyOrder-phone agencyOrder-txt"><img
									src="${basePath}static/css/front/images/icon-phone.png"><span>13645059836</span></span> <span
									class="agencyOrder-type agencyOrder-txt">代理类型：<span>营销公司</span></span>
							</div>
					</div>
				</div>
				<span class="preRight btn-pre"></span>
			</div>
		</div>
		<div class="see-more">
			<a href="#" class="blue">查看推荐</a>
		</div>
		<div class="dataChatWrap clearfix">
			<div class="dataChat01 datachat fl">
				<h3 class="mb60">购房者户型倾向</h3>
				<img src="${basePath}static/css/front/images/plImg01.jpg">
			</div>
			<div class="dataChat01 datachat fr">
				<h3 class="mb60">购房者面积倾向</h3>
				<img src="${basePath}static/css/front/images/plImg02.jpg">
			</div>
		</div>
		<div class="dataChatTendency mt20">
			<div class="dataChatT01">
				<h3>
					趋势图<span class="dataChatT01-time"><a href="#">最近7天</a><a
						href="#">最近30天</a><a href="#">最近3个月</a><a href="#">最近半年</a></span>
				</h3>
				<div class="lineLight mt10 mb10"></div>
				<div class="dataTips">
					<span class="tip01">访问量</span><span class="tip02">400来电</span><span
						class="tip03">微客通</span>
				</div>
				<div class="dataChatTendency-chat">
					<img src="${basePath}static/css/front/images/plImg03.jpg" alt="" class="mt20 mb20" />
				</div>
			</div>
		</div>
	</div>
</body>
</html>

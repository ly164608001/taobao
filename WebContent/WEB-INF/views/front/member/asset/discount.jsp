<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<%@include file="/WEB-INF/views/front/member/memberHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>抵扣卡券</title>
</head>

<body>
	<form id="searchForm"
		action="${basePath }front/member/asset/discount/list.htm">
		<!-- 分页必须元素 ，其中pageCount中的list为后台返回列表数据名称-->
		<input type="hidden" name="totalPage" value="${vo.totalPage}" /> <input
			type="hidden" name="rows" value="${vo.rows}" /> <input type="hidden"
			name="page" value="${vo.page}" />
		<!-- 业务查询条件 -->
		<input type="hidden" name="model.status" value="${vo.model.status}"
			id="pstatus" />
	</form>
	<!--PersonalCenter-header-->
	<div class="PersonalCenter-main-r">
		<!--CaptureroomRecord-->
		<div class="CaptureroomRecord">
			<!--CaptureroomRecord-title-->
			<div class="MyFootprint-title">
				<span class="level-1">资产中心</span>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<span
					class="level-2">抵扣卡券</span>
			</div>
			<!--SecuritySetting-main-->
			<div class="CaptureroomRecord-main DiscountCard clearfix">
				<!--DiscountCard-->
				<div class="DiscountCard-nav clearfix">
					<div class="DiscountCard-nav-l clearfix">
						<ul>
							<li class="li-1"
								onclick="window.location.href='${basePath}front/member/asset/discount/list.htm?model.status=1'">可用</li>
							<li class="li-2"
								onclick="window.location.href='${basePath}front/member/asset/discount/list.htm?model.status=2'">已使用/过期</li>
						</ul>
					</div>
					<div class="DiscountCard-nav-r clearfix">
						<ul>
							<li>楼盘名称：</li>
							<li><input type="text"/> <a class="btn-search"
								href="javascript:void(0);"></a></li>
						</ul>
					</div>
				</div>
				<div class="filter-box clearfix">
					<div class="filter-nav clearfix">
						<ul>
							<li class="li-2"><span class="icon-down"><a
									href="javascript:void(0);" onclick="window.location.href='${basePath}front/member/asset/discount/list.htm?sortType=1'">卡券金额</a></span></li>
							<li><span class="icon-down"><a
									href="javascript:void(0);" onclick="window.location.href='${basePath}front/member/asset/discount/list.htm?sortType=2'">到期时间</a></span></li>
							<li><span class="icon-down"><a
									href="javascript:void(0);" onclick="window.location.href='${basePath}front/member/asset/discount/list.htm?sortType=3'">生效时间</a></span></li>
						</ul>
					</div>
				</div>
				<div class="DiscountCard-main">

					<dl>
						<c:forEach items="${list }" var="userDiscount">
							<dt class="clearfix">
								<span>来自&nbsp;&nbsp;<em>${userDiscount.activityDeduction.housesInfo.name }</em>&nbsp;&nbsp;卡券
									<c:if test="${userDiscount.status==1}"></span> <a
									href="javascript:void(0);">申请退券</a>
								</c:if>
							</dt>
							<dd>
								<c:if test="${userDiscount.status==1}">
									<div class="dd-main dd-main-1">
										<div class="dd-l dd-l-1">
											<span>￥</span>${userDiscount.activityDeduction.prestoremoney }
										</div>
										<div class="dd-r">
											<p class="p-1">
												使用限制：<span>全楼盘通用</span>
											</p>
											<p class="p-2">
												<span>有限时间：<em><f:formatDate
															value="${userDiscount.applytime}" pattern="yyyy-MM-dd" /> 至
														<f:formatDate value="${userDiscount.activityDeduction.availabletime}"
															pattern="yyyy-MM-dd" /></em></span> <a href="javascript:void(0);">立即使用&nbsp;&gt;</a>
											</p>
											<p class="p-2">
												<span>卡券密码：<em>${userDiscount.couponpassword}</em></span> <i class="view"><img
													src="${basePath}static/css/front/images/view-none.png" /></i>
											</p>
										</div>
									</div>
									<span class="label-ues"><img
										src="${basePath}static/css/front/images/label-ues-1.png"
										width="55" height="58" /></span>
								</c:if>
								<c:if test="${userDiscount.status!=1}">
									<div class="dd-main dd-main-2">
										<div class="dd-l dd-l-2">
											<span>￥</span>${userDiscount.activityDeduction.prestoremoney }
										</div>
										<div class="dd-r">
											<p class="p-1">
												使用限制：<span>全楼盘通用</span>
											</p>
											<p class="p-2">
												<span>有限时间：<em><f:formatDate
															value="${userDiscount.applytime}" pattern="yyyy-MM-dd" /> 至
														<f:formatDate value="${userDiscount.activityDeduction.availabletime}"
															pattern="yyyy-MM-dd" /></em></span>
											</p>
											<p class="p-2">
												<span>卡券密码：<em>${userDiscount.couponpassword}</em></span> <i class="view"><img
													src="${basePath}static/css/front/images/view.png" /></i>
											</p>
										</div>
									</div>
									<span class="label-ues"><img
										src="${basePath}static/css/front/images/label-ues-2.png"
										width="55" height="58" /></span>
								</c:if>
							</dd>
						</c:forEach>
					</dl>

				</div>
				<div class="clearfix page-wrap" bindForm="searchForm"></div>
			</div>
		</div>
	</div>
</body>
</html>

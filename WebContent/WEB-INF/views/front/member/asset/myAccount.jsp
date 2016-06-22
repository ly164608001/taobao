<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<%@include file="/WEB-INF/views/front/member/memberHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>我的账户</title>
<script type="text/javascript">
function searchData(){
	var url = "${basePath}front/member/asset/myaccount/datalist.htm";
	$.ajax({
		type : "POST",
		url : url,
		datatype : "json",
		data : $("#searchForm").serialize(),
		success : function(result) {
			var res = JSON.parse(result);
			if (result.success) {
				//TODO 数据获取成功页面
			} else {
				$("#msg").html(result.msg);
			}
		},
		error : function() {

		}
	});
}
</script>
</head>

<body>
	<div class="PersonalCenter-main-r">
		<div class="CaptureroomRecord">
			<div class="MyFootprint-title">
				<span class="level-1">资产中心</span>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<span
					class="level-2">我的账户</span>
			</div>
			<div class="MyAccount-main">
				<div class="coin-box clearfix">
					<div class="coin-box-l">
						<div class="coin-pic">
							<img src="${basePath}static/css/front/images/coin-pic.png" width="94" height="102" />
						</div>
						<div class="coin-text">
							<p class="p_1">
								夺宝币&nbsp;&nbsp;<span>(&nbsp;&nbsp;1 夺宝币 = 1元
									人民币&nbsp;&nbsp;)</span>
							</p>
							<p class="p_2">
								<em><f:formatNumber value="${account.usablebalance}" pattern="#,#00.00#"/></em>夺宝币
							</p>
						</div>
					</div>
					<div class="coin-box-r">
						<p class="p_3">
							<label>我的红包：</label><em>${bonusCount}</em>&nbsp;&nbsp;个
							<a href="${basePath}front/member/asset/bonus/list.htm">查看</a>
						</p>
						<p class="p_3">
							<label>我的抵扣券：</label><em>${deductionCount}</em>&nbsp;&nbsp;张
							<a href="${basePath}front/member/asset/discount/list.htm">查看</a>
						</p>
					</div>
				</div>
				<div class="Transactionrecord">
					<div class="Transactionrecord-title">交易记录</div>
					<div class="Transactionrecord-box clearfix">
						<form id="searchForm">
							<div class="Transactionrecord-box-main clearfix">
								<ul>
									<li><label>关键词：</label>
										<div class="r-box">
											<select class="sel-index" name="keyword">
												<option>交易号</option>
												<option>对方名称</option>
												<option>订单号</option>
											</select>
											<input name="keyValue" class="text-index" type="text" />
										</div></li>
									<li><label>交易状态：</label>
										<div class="r-box">
											<select name="traceStatus" class="sel-state">
												<option>成功</option>
												<option>失败</option>
												<option>进行中</option>
											</select>
										</div></li>
									<li><label>金额范围：</label>
										<div class="r-box">
											<input name="minMoney" class="range" type="text" /> <span class="line">&nbsp;&nbsp;—&nbsp;&nbsp;</span>
											<input name="maxMoney" class="range" type="text" />
										</div></li>
									<li><label>交易时间：</label>
										<div class="r-box">
											<input name="createtime_start" class="range" type="text" />
	                                        <span class="line">&nbsp;&nbsp;—&nbsp;&nbsp;</span>
	                                        <input name="createtime_end" class="range" type="text" />
										</div></li>
									<li><label>交易类型：</label>
										<div class="r-box">
											<select name="traceType" class="sel-state">
												<option>认筹</option>
												<option>下订</option>
												<option>退款</option>
											</select>
										</div></li>
									<li><label>资金流向：</label>
										<div class="r-box">
											<select name="flowType" class="sel-state">
												<option>支出</option>
												<option>收入</option>
											</select>
										</div></li>
								</ul>
							</div>
						</form>
						<div class="search-box">
							<a class="btn-search" href="javascript:void(0);" onclick="searchData();">搜索</a>
						</div>
					</div>
				</div>
				<div class="recent-box clearfix">
					<div class="recent-nav clearfix">
						<div class="recent-nav-l clearfix">
							<label>最近：</label>
							<ul class="recent-time clearfix">
								<li class="li-time">1周</li>
								<li>1个月</li>
								<li>3个月</li>
								<li>1年</li>
							</ul>
						</div>
					</div>
					<div class="recent-record">
						<div class="recent-record-nav clearfix">
							<ul class="clearfix">
								<li class="li-h4">所有状态</li>
								<li>等待付款</li>
								<li>进行中</li>
								<li>交易成功</li>
								<li>退款</li>
								<li>交易关闭</li>
							</ul>
						</div>
						<div class="panels">
							<div class="panel">
								<table width="100%" border="0" cellspacing="0">
									<tr>
										<th>交易时间</th>
										<th>交易类型</th>
										<th>交易号</th>
										<th>对方</th>
										<th>交易金额</th>
										<th>交易通道</th>
										<th>交易状态</th>
										<th>操作</th>
									</tr>
									<tr>
										<td>2016-04-11 18:56</td>
										<td>认筹</td>
										<td>201604112000402012323</td>
										<td>
											<div class="clearfix">
												<span>三盛国际公园</span> <a class="btn-wkt"
													href="javascript:void(0);"><img
													src="${basePath}static/css/front/images/btn-wkt.png" /></a>
											</div>
										</td>
										<td>-10000</td>
										<td>支付宝</td>
										<td>交易成功</td>
										<td><a href="javascript:void(0)">详情</a></td>
									</tr>
								</table>
							</div>
						</div>
						<div id="page" class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

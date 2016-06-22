<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function changeMenu(activeUrl){
	$("#external-frame").attr("src",activeUrl);
}
</script>
</head>
<body>
<!--PersonalCenter-main-->
<div class="PersonalCenter-main">
	<div class="PersonalCenter-main-w1200 clearfix">
    	<!--PersonalCenter-main-l-->
		<div class="PersonalCenter-main-l">
			<c:forEach items="${menuList}" var="menu">
				<dl>
					<dt class="user-management">${menu.name}</dt>
					<c:forEach  items="${menu.children}" var="child">
						<dd>
							<a href="javascript:void(0);" onclick="changeMenu('${basePath}${child.href}')">${child.name}</a>
						</dd>
					</c:forEach>
				</dl>
	            <div class="bottom-line"></div>	
			</c:forEach> 
			<%-- <dl>
				<dt class="user-management">用户管理</dt>
            	<dd><a href="javascript:void(0);">个人资料</a></dd>
            	<dd><a href="javascript:void(0);">个人积分</a></dd>
            	<dd><a href="javascript:void(0);">安全设置</a></dd>
			</dl>
            <div class="bottom-line"></div>
            <dl>
				<dt class="trading-center">交易中心</dt>
            	<dd><a href="javascript:void(0);" onclick="changeMenu('${basePath}front/member/order/list.htm')">我的订单</a></dd>
			</dl>
            <div class="bottom-line"></div>
            <dl>
				<dt class="asset-center">资产中心</dt>
            	<dd><a href="javascript:void(0);" onclick="changeMenu('${basePath}front/member/asset/myaccount.htm')">我的账户</a></dd>
            	<dd><a href="javascript:void(0);">现金红包</a></dd>
            	<dd><a href="javascript:void(0);">抵扣卡券</a></dd>
			</dl>
            <div class="bottom-line"></div>
            <dl>
				<dt class="message-center">消息中心</dt>
            	<dd><a href="javascript:void(0);">互动消息</a></dd>
                <dd><a href="javascript:void(0);">系统通知</a></dd>
			</dl>
            <div class="bottom-line"></div>
            <dl>
				<dt class="dynamic-recording">动态记录</dt>
            	<dd><a href="javascript:void(0);">我的足迹</a></dd>
                <dd><a href="javascript:void(0);">我的收藏</a></dd>
                <dd><a href="javascript:void(0);">夺房记录</a></dd>
                <dd><a href="javascript:void(0);">看房记录</a></dd>
                <dd><a href="javascript:void(0);">楼盘活动</a></dd>
			</dl> --%>
    	</div>
        <iframe id="external-frame" name="external-frame" onload="setIframeHeight(this)" src="${basePath}front/member/myzoe.htm"
          class="ifame-PersonalCenter" frameborder="0" scrolling="no"></iframe>
    </div>
</div>
</body>
</html>
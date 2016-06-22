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
    	</div>
        <iframe id="external-frame" name="external-frame" onload="setIframeHeight(this)" src="${basePath}front/estate/index.htm"
          class="ifame-PersonalCenter" frameborder="0" scrolling="no"></iframe>
    </div>
</div>
</body>
</html>
<%@page language="java" contentType="text/html; charset=utf-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/headDeclare.jsp"%>
<%@include file="/adminHeadDeclare.jsp"%>
<html>
<head>
<script type="text/javascript">
function iframeResize(iframe) {
	var idocumentElement = iframe.contentWindow.document.documentElement;
	iframe.height = idocumentElement.scrollHeight;
}
</script>
</head>
<body height="100%">
	<div class="dmg-list" id="wrap">
		<div class="dmg-list-body">
			<table width="100%" height="100%" border="0" cellspacing="0"
				cellpadding="0">
				<tr>
					<td width="230" valign="top" class="tree">
						<iframe
							src="${basePath}admin/helpcenter/menu/menutree.htm"
							name="rightTree" id="rightTree" width="230" marginwidth="0"
							onscroll="iframeResize(this);" marginheight="0" frameborder="0"
							style="height:500px; overflow-x:hidden;overflow-y:auto; ">
						</iframe>
					</td>
					<td valign="top" style="paddint-top:10px;">
						<iframe
							src="${basePath}admin/helpcenter/menu/menuList.htm?parentid=-1"
							id="rightList" name="rightList" width="100%" height="100%"
							marginwidth="0" marginheight="0"
							frameborder="0" onscroll="iframeResize(this);" > </iframe>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>
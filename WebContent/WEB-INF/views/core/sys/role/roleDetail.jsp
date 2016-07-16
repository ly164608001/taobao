<%@page language="java" contentType="text/html; charset=utf-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/headDeclare.jsp"%>
<%@include file="/adminHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
</head>
<body>
	<div class="dialogTop">
		<table width="100%" border="0" align="center" cellspacing="10"
			cellpadding="0" class="ld-detailTable">
			<tr>
				<td width="100" class="right evenTrBgColor">
					名称：
				</td>
				<td>
					${model.name}
				</td>
			</tr>
		</table>
	</div>
	<div class="dialogBottom">
		<div class="btns">
			<input type="button" value="关 闭" class="ldBtnGray"
				onclick="lrDialog.close();" />
		</div>
	</div>
</body>
</html>


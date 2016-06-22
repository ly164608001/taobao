<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>申请延期</title>
	<link href="${basePath}static/css/front/wan.reset.css" rel="stylesheet" type="text/css" />
	<link href="${basePath}static/css/front/public.css" rel="stylesheet" type="text/css" />
	<link href="${basePath}static/css/front/PersonalCenter.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="${basePath}static/css/front/tradeCenter.css">
	<link rel="stylesheet" type="text/css" href="${basePath}static/css/front/house.css">
</head>
<body>
<div class="windowContain">
	<form id="applyDelayForm">
		<input type="hidden" name="orderid" value="${orderid }"/> 
		<div class="companySel">
			<span class="companyAnyser-msg-title">&nbsp;&nbsp;&nbsp;&nbsp;延期时长：</span>
			<select name="delaydays">
				<option value="3">3天</option>
				<option value="7">7天</option>
				<option value="14">14天</option>
			</select>
		</div>
		<div class="companyAnyser-msg mt20">
			<span class="companyAnyser-msg-title">申请理由：</span>
			<span class="companyAnyser-msg-body"><textarea name="applyreason" id="applyreason"></textarea></span>
		</div>
	</form>
</div>

</body>
</html>
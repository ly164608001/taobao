<%@page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<title></title>
<%
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
	pageContext.setAttribute("basePath", basePath);
%>
<script type="text/javascript" src="${basePath}static/js/jquery.min.js"></script>
<script type="text/javascript" src="${basePath}static/js/jquery.validate.js"></script>
<script type="text/javascript" src="${basePath}static/js/common.js"></script>
<script type="text/javascript" src="${basePath}static/js/validator.js"></script>
<script type="text/javascript" src="${basePath}static/js/layer/layer.js"></script>
<script type="text/javascript" src="${basePath}static/js/util.js"></script>
<script type="text/javascript">
var basePath = "${basePath}";
</script>
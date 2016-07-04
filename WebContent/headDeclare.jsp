<%@page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<title></title>
<%
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
	pageContext.setAttribute("basePath", basePath);
%>
<link href="${basePath}static/ace/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="${basePath}static/ace/css/font-awesome.min.css" />
<link rel="stylesheet" href="${basePath}static/ace/css/ace.min.css" />
<link rel="stylesheet" href="${basePath}static/ace/css/ace-rtl.min.css" />
<link rel="stylesheet" href="${basePath}static/ace/css/ace-skins.min.css" />
<link rel="stylesheet" href="${basePath}static/css/admin/base.css" />
<script type="text/javascript" src="${basePath}static/js/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${basePath}static/js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${basePath}static/js/easyui/jquery.edatagrid.js"></script>
<script type="text/javascript" src="${basePath}static/js/easyui/datagrid-detailview.js"></script>
<script type="text/javascript" src="${basePath}static/js/jquery.validate.js"></script>
<script type="text/javascript" src="${basePath}static/js/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${basePath}static/js/common.js"></script>
<script type="text/javascript" src="${basePath}static/js/easyui.extends.js"></script>

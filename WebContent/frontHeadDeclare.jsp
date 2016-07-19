<%@page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
	pageContext.setAttribute("basePath", basePath);
%>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="no-cache, must-revalidate" />
<meta http-equiv="expires" content="0" />
<link rel="stylesheet" type="text/css" href="${basePath}static/h-ui/css/H-ui.css" />
<link rel="stylesheet" type="text/css" href="${basePath}static/lib/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${basePath}static/css/front/style.css" />
<script type="text/javascript" src="${basePath}static/js/jquery.min.js"></script>
<script type="text/javascript" src="${basePath}static/js/front/style.js"></script>
<script type="text/javascript" src="${basePath}static/js/jquery.validate.js"></script>
<script type="text/javascript" src="${basePath}static/js/common.js"></script>
<script type="text/javascript" src="${basePath}static/js/validator.js"></script>
<script type="text/javascript" src="${basePath}static/js/layer/layer.js"></script>
<script type="text/javascript" src="${basePath}static/js/util.js"></script>
<script type="text/javascript" src="${basePath}static/js/front/common/common.js"></script>
<script type="text/javascript" src="${basePath }static/js/front/common/page.js"></script>
<script type="text/javascript" src="${basePath}static/h-ui/js/H-ui.js"></script>
<script type="text/javascript" src="${basePath}static/js/front/style.js"></script>
<script type="text/javascript" src="${basePath}static/js/popup-layer.js"></script>
<script type="text/javascript">
var basePath = "${basePath}";

layer.config({
    extend: ['skin/layerSkinExtend.css'], //加载新皮肤
    skin: 'layer-ext-myskin' //一旦设定，所有弹层风格都采用此主题。
});
</script>


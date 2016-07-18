<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>批量导入收货地址</title>
</head>
<body>
	<section class="fileAll-upload">
		<div class="btnWrap">
			<a href="#" class="btn btn-secondary radius">选择文件</a>
			<a href="#" class="btn btn-danger radius">开始上传</a>
			<div id="nameTip" class="onShow">最多上传<font color="red"> 1</font> 个附件,单文件最大 <font color="red">100 MB</font></div>
		</div>
		<p class="mt10">支持 xls|xlsx 格式。</p>
		<div class="panel panel-default panel-file">
			<div class="panel-header">文件列表</div>
			<div class="panel-body clearfix">
				<div class="fileList f-l">
					<img src="${basePath}static/css/front/images/excel.png" alt="">
				</div>
				<div class="fileList f-l">
					<img src="${basePath}static/css/front/images/excel.png" alt="">
				</div>
				<div class="fileList f-l">
					<img src="${basePath}static/css/front/images/excel.png" alt="">
				</div>
			</div>
		</div>
	</section>

</body>
</html>
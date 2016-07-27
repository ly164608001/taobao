<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<head>
	<title>基本资料</title>
	<script type="text/javascript" src="${basePath}static/js/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
	<div class="workContent ml20">
	<h4>
		<span class="title">基本资料</span>
	</h4>

	<div class="btnWrap clearfix">

		<div id="tab_detail" class="HuiTab">
			<div class="tabBar cl">
				<span class="current">基本资料</span>

			</div>
			<div class="tabCon" style="display: block;">

				<div class="moneyOrder rechange">
					<form action="" method="post" class="form form-horizontal" id="demoform-1">
						<legend></legend>

						<div class="row cl">
							<label class="form-label col-xs-4 col-sm-3">用户名：</label>
							<div class="formControls col-xs-2 col-sm-3">
								<span class="text">
									<span class="orange">${model.username}</span>
								</span>
							</div>
						</div>
						<div class="row cl">
							<label class="form-label col-xs-4 col-sm-3">姓名：</label>
							<div class="formControls col-xs-2 col-sm-3">
								<span class="text">
									<span class="orange">${model.detailInfo.realname}</span>
								</span>
							</div>
						</div>
						<div class="row cl">
							<label class="form-label col-xs-4 col-sm-3">手机：</label>
							<div class="formControls col-xs-2 col-sm-3">
								<span class="text">
									<span class="orange">${model.phone}</span>
								</span>
							</div>
						</div>
						<div class="row cl">
							<label class="form-label col-xs-4 col-sm-3">性别：</label>
							<div class="formControls col-xs-6 col-sm-6">
								<div class="radio-box">
									<input type="radio" name="detailInfo.sex">
									<label for="radio-1">男</label>
								</div>
								<div class="radio-box">
									<input type="radio" name="detailInfo.sex">
									<label for="radio-2">女</label>
								</div>
								<div class="radio-box">
									<input type="radio" name="detailInfo.sex">
									<label for="radio-3">保密</label>
								</div>
							</div>
						</div>
						<div class="row cl">
							<label class="form-label col-xs-4 col-sm-3">出生日期：</label>
							<div class="formControls col-xs-2 col-sm-3">
								<input class="Wdate write-time input-text radius size-M"  type="text" value="${model.detailInfo.birthday}" 
								 	onFocus="WdatePicker({dateFmt:&quot;yyyy-MM-dd&quot;,isShowClear:false,readOnly:true});"/>
							</div>
						</div>
						<div class="row cl">
							<label class="form-label col-xs-4 col-sm-3">QQ：</label>
							<div class="formControls col-xs-2 col-sm-3">
								<input type="text" class="input-text" value="${model.detailInfo.qq}"></div>
							<div class="formControls col-xs-2 col-sm-3">
								<span class="onShow">请输入联系QQ</span>
							</div>
						</div>

						<div class="row cl">
							<div class="col-xs-2 col-sm-4 btnWrap">
								<input class="btn radius btn-secondary btn-ti" type="submit" value="提交"></div>
						</div>

					</form>
				</div>
			</div>

		</div>
	</div>
</div>
</body>
</html>
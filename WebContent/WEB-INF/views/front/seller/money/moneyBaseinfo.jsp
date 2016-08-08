<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<head>
	<title>基本资料</title>
	<script type="text/javascript" src="${basePath}static/js/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript">
		function updateInfo(){
			$.ajax({
				type : 'get',
				 url : '${basePath}front/buyer/money/updateInfo.htm',
				dataType : 'json',
				data : $('#submitForm').serialize(),
				success : function(result){
					if(result.success){
						top.layer.alert('更新成功');
					}else{
						top.layer.alert(result.msg);
					}
				}
			}); 
		}
	</script>
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
					<form method="post" class="form form-horizontal" id="submitForm">
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
									<input type="radio" name="sex" value="${fns:getDictValue('男','SEX','')}"
										<c:if test="${fns:getDictValue('男','SEX','') == model.detailInfo.sex}">checked="checked"</c:if> />
									<label>男</label>
								</div>
								<div class="radio-box">
									<input type="radio" name="sex" value="${fns:getDictValue('女','SEX','')}"
										<c:if test="${fns:getDictValue('女','SEX','') == model.detailInfo.sex}">checked="checked"</c:if> />
									<label>女</label>
								</div>
								<div class="radio-box">
									<input type="radio" name="sex" value=""
										<c:if test="${empty model.detailInfo.sex}">checked="checked"</c:if> />
									<label>保密</label>
								</div>
							</div>
						</div>
						<div class="row cl">
							<label class="form-label col-xs-4 col-sm-3">出生日期：</label>
							<div class="formControls col-xs-2 col-sm-3">
								<input class="Wdate write-time input-text radius size-M"  type="text" 
									value='<f:formatDate pattern="yyyy-MM-dd" value="${model.detailInfo.birthday}"/>' name="birthday"
								 	onFocus="WdatePicker({dateFmt:&quot;yyyy-MM-dd&quot;,isShowClear:false,readOnly:true});"/>
							</div>
						</div>
						<div class="row cl">
							<label class="form-label col-xs-4 col-sm-3">QQ：</label>
							<div class="formControls col-xs-2 col-sm-3">
								<input type="text" class="input-text" name="qq" value="${model.detailInfo.qq}" /></div>
							<div class="formControls col-xs-2 col-sm-3">
								<span class="onShow">请输入联系QQ</span>
							</div>
						</div>

						<div class="row cl">
							<div class="col-xs-2 col-sm-4 btnWrap">
								<input class="btn radius btn-secondary btn-ti" type="button" value="提交"
									 onclick="updateInfo();"/></div>
						</div>

					</form>
				</div>
			</div>

		</div>
	</div>
</div>
</body>
</html>
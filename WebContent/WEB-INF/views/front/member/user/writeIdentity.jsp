<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人中心-用户管理-认证-填写身份信息-iframe</title>
<link href="${basePath}/static/css/front/wan.reset.css" rel="stylesheet"
	type="text/css" />
<link href="${basePath}/static/css/front/public.css" rel="stylesheet"
	type="text/css" />
<link href="${basePath}/static/css/front/PersonalCenter.css"
	rel="stylesheet" type="text/css" />
<link href="${basePath}/static/css/front/tradeCenter.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript" src="${basePath}static/js/util.js"></script>
<script type="text/javascript" src="${basePath}static/js/validator.js"></script>
	<script type="text/javascript">
	function uploadsuc(data)
	{
	  if(data.success){
		  var name = window.name;
		  var str = '${basePath}'+data.path;
		  $('#'+data.ttPath).val(data.path);
		  $('#'+data.ttPath+'Img').attr("src",str);
		  $('#'+data.ttPath+'Img').show();
		  var name = window.name;
		  var heigth = parent.$("#"+name).contents().find("body").height() + 10;
		  parent.$("#"+name).height(heigth);
	  }
	}
	function init()
	{
		var name = window.name;
		var handcardphoto = $('#handcardphoto').val();
		var cardphoto = $('#cardphoto').val();
		if(cardphoto !=''){
		 $('#cardphotoImg').attr("src",'${basePath}'+cardphoto);
		 $('#cardphotoImg').show();
		 var heigth = parent.$("#"+name).contents().find("body").height() + 10;
		 parent.$("#"+name).height(heigth);
		}
		if(handcardphoto !=''){
			 $('#handcardphotoImg').attr("src",'${basePath}'+handcardphoto);
			 $('#handcardphotoImg').show();
			 var heigth = parent.$("#"+name).contents().find("body").height() + 10;
			 parent.$("#"+name).height(heigth);
		}
	}
	</script>
</head>


<body>
	<form method="post">
		<!--PersonalCenter-main-r-->
		<div class="PersonalCenter-main-r">
			<!--CaptureroomRecord-->
			<div class="CaptureroomRecord">
				<!--CaptureroomRecord-title-->
				<div class="MyFootprint-title">
					<span class="level-1">个人实名认证</span>
				</div>
				<div class="personStep-img">
					<img src="${basePath}/static/css/front/images/person-step01.png">
				</div>
				<!--SecuritySetting-main-->
				<div class="CaptureroomRecord-main personalTrust">
					<div class="base">
						<div class="PersonalData-title orange">填写身份证信息</div>
						<div class="PersonalData-base clearfix">
							<ul>
								<li class="clearfix"><label><span class="red">*</span>真实姓名：</label>
									<input class="btn-name" id="realname" name="model.realname"
									type="text" value="${authInfo.realname }" /> 
									<input id="id" name="model.id" type="hidden" value="${authInfo.id }" />
								</li>
								<li class="clearfix"><label><span class="red">*</span>身份证号：</label> 
								<input	class="btn-name" id="certificateno" name="certificateno" 
									type="text"  value="${authInfo.certificateno }" />
								</li>
								<!-- <li class="clearfix"><label>手机号：</label> <span
									class="btn-name">13950123594</span></li> -->
								<li class="clearfix"><label><span class="red">*</span>身份证正面照：</label>
									<div class="upload">
										<!-- <input class="btn-upload" type="button" value="图片上传" />
	                                        <input type="file" name="" class="btn-upload-img"> -->
										<iframe id="sfzzm" name="sfzzm" src="${basePath}/upload/index.htm?ttPath=cardphoto" frameborder="0"
											scrolling="no" height="20" width="70"></iframe>
										<input id="cardphoto" name="model.cardphoto" type="hidden" 
											class="sfzzm" value="${authInfo.cardphoto }"/>
										 <span>注：图片上的文字需清晰可见</span>
										<br />
										<img id="cardphotoImg" alt="身份证正面照" src="" style="display: none;width:250px;height:160px;">
									</div></li>
								<li class="clearfix"><label><span class="red">*</span>手持身份证正照：</label>
									<div class="upload">
										<iframe id="sfzbm" name="sfzbm"
											src="${basePath}/upload/index.htm?ttPath=handcardphoto" frameborder="0"
											scrolling="no" height="20" width="70"></iframe>
										<input id="handcardphoto" name="model.handcardphoto" class="sfzbm" id="bm" type="hidden"  value="${authInfo.handcardphoto }"/>
										<!--  <input class="btn-upload" type="button" value="图片上传" />
	                                        <input type="file" name="" class="btn-upload-img"> -->
										<span>注：图片上的文字需清晰可见</span>
										<br />
										<img id="handcardphotoImg" alt="手持身份证正照" src="" style="display: none;width:250px;height:160px;">
									</div></li>
								<li class="clearfix"><label>实例：</label>
									<div class="now-head">
										<img src="${basePath}/static/css/front/images/idCard.png" />
									</div></li>
								<li class="clearfix"><label>证件类型：</label>
									<div class="li-r">
										<select class="item-select" id="type" name="model.type">
											<option value="">选择证件</option>
											<option value="1">身份证</option>
										</select>
									</div></li>
								<div class="btnStep mt100">
									<a href="javascript:void(0)"
										onclick="modifyAuthInfo('${basePath}/au/writeBankCard.htm')">下一步</a>
								</div>
								<div class="clear"></div>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
<script type="text/javascript"
	src="${basePath}/static/js/front/jquery.min.js"></script>
<script type="text/javascript"
	src="${basePath}/static/js/front/style.js"></script>
<script type="text/javascript">
	function modifyAuthInfo(url) {
		//验证填写格式
		if(isNull($('#realname').val())){
			top.layer.alert('真实姓名不能为空！');
			return;
		}	
		if(isNull($('#certificateno').val())){
			top.layer.alert('身份证号不能为空！');
			return;
		}else{
			if(!isCard($('#certificateno').val())){
				top.layer.alert('身份证号格式错误！');
				return;
			} 
		}
		if(isNull($('#cardphoto').val())){
			top.layer.alert('请上传身份证正面照！');
			return;
		}
		if(isNull($('#handcardphoto').val())){
			top.layer.alert('请上传手持身份证正照！');
			return;
		}
		if(isNull($('#type').val())){
			top.layer.alert('请选择证件类型！');
			return;
		}
		$.ajax({
			url : '${basePath}/au/modifyAuthInfo.htm',
			method : 'post',
			data : 'model.certificateno=' + $('#certificateno').val()
					+ '&model.realname=' + $('#realname').val() 
					+ '&model.id='	+ $('#id').val()
					+ '&model.cardphoto=' + $('#cardphoto').val()
					+ '&model.handcardphoto=' + $('#handcardphoto').val()
					+ '&model.type=' + $('#type').val(),
			dataType : 'json',
			success : function(json) {
				if (json.success) {
					parent.changeMenu(url);
				} else {
					top.layer.alert('操作超时，请稍候重试！');
				}
			}
		});
		
	}
</script>
<script type="text/javascript">
	$(function(){
		init();
	})
</script>
</html>

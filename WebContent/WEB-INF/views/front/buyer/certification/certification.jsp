<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>实名认证</title>
</head>
<body>
	<div class="workContent ml20">
		<h4>
			<span class="title">实名认证</span>
		</h4>
		<div class="CaptureroomRecord-main personalTrust">
			<div class="base">
				<div class="PersonalData-title orange">重要提示：请上传本人的身份信息，若提现实名信息与您申请的银行开户姓名不一致，提现会失败</div>
				<div class="PersonalData-title orange">
					学生证照片：
					<a href="#" class="btn btn-secondary radius">如果你是在校大学生，也可以上传学生证照</a>
				</div>
				<div class="PersonalData-base clearfix">
					<ul>
						<li class="clearfix">
							<label>证件类型：</label>
							<div class="li-r">
								<select class="item-select">
									<option value="">选择证件</option>
									<option value="1">身份证</option>
									<option value="2">学生证</option>
								</select>
							</div>
						</li>
						<li class="clearfix">
							<label>
								<span class="red">*</span>
								真实姓名：
							</label>
							<input class="btn-name" type="text"></li>
						<li class="clearfix">
							<label>身份证号：</label>
							<input class="btn-name" type="text"></li>
						<li class="clearfix">
							<label>手机号：</label>
							<span class="btn-name">13950123594</span>
						</li>
						<li class="clearfix">
							<label>
								<span class="red">*</span>
								身份证正面照：
							</label>
							<div class="upload">
								<!-- <input class="btn-upload upload-url" type="button" value="图片上传" >
								<input type="file" name="" class="btn-upload-img">
								-->
								<span class="btn-upload">
									<a href="javascript:void();" class="btn radius btn-upload">图片上传</a>
									<input type="file" multiple name="file_0" class="input-file"></span>
								<span>注：图片上的文字需清晰可见</span>
							</div>
						</li>
						<li class="clearfix">
							<label>实例：</label>
							<div class="now-head f-l">
								<img src="${basePath}static/css/front/images/cd.jpg"></div>
						</li>
						<li class="clearfix">
							<label>
								<span class="red">*</span>
								手持身份证正照：
							</label>
							<div class="upload">
								<span class="btn-upload">
									<a href="javascript:void();" class="btn radius btn-upload">图片上传</a>
									<input type="file" multiple name="file_0" class="input-file"></span>
								<span>注：图片上的文字需清晰可见</span>
							</div>
						</li>
						<li class="clearfix">
							<label>实例：</label>
							<div class="now-head f-l now-head-other">
								<img src="${basePath}static/css/front/images/idCard.png"></div>
						</li>
						<div class="clear"></div>
					</ul>
				</div>
				<div class="btnWrap btnWrap-ren">
					<a href="#" class="btn btn-secondary radius">提交实名认证</a>
				</div>
			</div>

		</div>

	</div>
</body>
</html>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>实名认证</title>
	<script type="text/javascript">
		function uploadsuc(data) {
		  if(data.success){
			  var fullPath = '${basePath}'+data.path;
			  $('#'+data.ttPath).val(fullPath);
			  $('#'+data.ttPath+'Img').attr("src",fullPath);
		  }
		}
		
		function uploadfalse(data){
		  top.layer.msg(data)
		}
	
		$(function(){
			//默认身份证
			$('.StuCard').hide();
			
			//类型选择
			$('#typeSelector').change(function(){
				var selType = $(this).val();
				if(selType == 1){
					$('.StuCard').hide();
					$('.IDCard').show();
				}else if(selType == 2){
					$('.StuCard').show();
					$('.IDCard').hide();
				}
			});
		})
	</script>
</head>
<body>
	<div class="workContent ml20">
		<h4>
			<span class="title">实名认证</span>
		</h4>
		<div class="CaptureroomRecord-main personalTrust">
		  <form id="submitForm">
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
								<select class="item-select" name="type" id="typeSelector">
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
							<input class="btn-name" type="text" name="realname"/></li>
						<li class="clearfix IDCard">
							<label>身份证号：</label>
							<input class="btn-name" type="text" name="certificateno" /></li>
						<li class="clearfix">
							<label>手机号：</label>
							<span class="btn-name">${loginUser.phone}</span>
						</li>
						<li class="clearfix StuCard">
							<label>学生证号：</label>
							<input class="btn-name" type="text" name="stuno" />
						</li>
						
						<li class="clearfix IDCard">
							<label>
								<span class="red">*</span>
								身份证正面照：
							</label>
							<div class="upload">
								<iframe src="${basePath}/upload/index.htm?ttPath=cardphoto&extnames=*.jpg;*.jpeg;*.png;*.gif;" frameborder="0"
										scrolling="no" height="20" width="70"></iframe>
								<input type="hidden" name="cardphoto" id="cardphoto" />
								<span>注：图片上的文字需清晰可见</span>
							</div>
						</li>
						<li class="clearfix IDCard">
							<label>实例：</label>
							<div class="now-head f-l">
								<img id="cardphotoImg" src="${basePath}static/css/front/images/cd.jpg"></div>
						</li>
						
						<li class="clearfix StuCard">
							<label>
								<span class="red">*</span>
								学生证正面照：
							</label>
							<div class="upload">
								<iframe src="${basePath}/upload/index.htm?ttPath=stucardphoto&extnames=*.jpg;*.jpeg;*.png;*.gif;" frameborder="0"
										scrolling="no" height="20" width="70"></iframe>
								<input type="hidden" name="stucardphoto" id="stucardphoto" />
								<span>注：图片上的文字需清晰可见</span>
							</div>
						</li>
						<li class="clearfix StuCard">
							<label>实例：</label>
							<div class="now-head f-l">
								<img id="stucardphotoImg" src="${basePath}static/css/front/images/cd.jpg"></div>
						</li>
						
						<li class="clearfix IDCard">
							<label>
								<span class="red">*</span>
								手持身份证正照：
							</label>
							<div class="upload">
								<iframe src="${basePath}/upload/index.htm?ttPath=handcardphoto&extnames=*.jpg;*.jpeg;*.png;*.gif;" frameborder="0"
										scrolling="no" height="20" width="70"></iframe>
								<input type="hidden" name="handcardphoto" id="handcardphoto" />
								<span>注：图片上的文字需清晰可见</span>
							</div>
						</li>
						<li class="clearfix IDCard">
							<label>实例：</label>
							<div class="now-head f-l now-head-other">
								<img id="handcardphotoImg" src="${basePath}static/css/front/images/idCard.png"></div>
						</li>
						
						<li class="clearfix StuCard">
							<label>
								<span class="red">*</span>
								手持学生证正照：
							</label>
							<div class="upload">
								<iframe src="${basePath}/upload/index.htm?ttPath=handstucardphoto&extnames=*.jpg;*.jpeg;*.png;*.gif;" frameborder="0"
										scrolling="no" height="20" width="70"></iframe>
								<input type="hidden" name="handstucardphoto" id="handstucardphoto" />
								<span>注：图片上的文字需清晰可见</span>
							</div>
						</li>
						<li class="clearfix StuCard">
							<label>实例：</label>
							<div class="now-head f-l now-head-other">
								<img id="handstucardphotoImg" src="${basePath}static/css/front/images/idCard.png"></div>
						</li>
						
						<li class="clearfix IDCard">
							<label>
								<span class="red">*</span>
								生活照：
							</label>
							<div class="upload">
								<iframe src="${basePath}/upload/index.htm?ttPath=lifephoto&extnames=*.jpg;*.jpeg;*.png;*.gif;" frameborder="0"
										scrolling="no" height="20" width="70"></iframe>
								<input type="hidden" name="lifephoto" id="lifephoto" />
								<span>注：图片上的文字需清晰可见</span>
							</div>
						</li>
						<li class="clearfix IDCard">
							<label>实例：</label>
							<div class="now-head f-l now-head-other">
								<img id="lifephotoImg" src="${basePath}static/css/front/images/life.jpg"></div>
						</li>
						
						<div class="clear"></div>
					</ul>
				</div>
				<div class="btnWrap btnWrap-ren">
					<a href="#" class="btn btn-secondary radius">提交实名认证</a>
				</div>
			</div>
			
			</form>
		</div>

	</div>
</body>
</html>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>发布淘宝任务</title>
</head>
<body>
	<div class="workContent ml20">
	<h4>
		<span class="title">发布淘宝任务</span>
	</h4>
	<div class="moneyOrder rechange workDetail">
		<form class="form form-horizontal" id="submitForm">
			<legend></legend>
			
			<!-- 展示显示局域 -->
			<c:forEach items="${list}" var="taskPublish" varStatus="vs">
				<h4>
					<c:choose>
						<c:when test="${vs.count == 1}">1.任务基本信息</c:when>
						<c:when test="${vs.count == 2}">2.任务需求设置</c:when>
						<c:when test="${vs.count == 3}">3.买手身份验证</c:when>
						<c:when test="${vs.count == 4}">4.发布任务设置</c:when>
					</c:choose>
				</h4>
				<!-- 展示属性 -->
				<c:forEach items="${taskPublish.propertiesList}" var="pro">
					<c:choose>
					
						<c:when test="${pro.elementtype == 'radio'}">
								<c:if test="${pro.elementnum == 2}">
									<div class="row cl">
										<label class="form-label col-xs-4 col-sm-3">${pro.elementname}：</label>
										<div class="formControls col-xs-4 col-sm-6">
											<c:forEach items="${pro.valueList}" var="proVal">
												<c:choose>
													<c:when test="${proVal.isdefault == 1}"><span class="tab-tip active">${proVal.label}</span></c:when>
													<c:otherwise><span class="tab-tip">${proVal.label}</span></c:otherwise>
												</c:choose>
											</c:forEach>
											<c:if test="${not empty pro.price and pro.price > 0}">
												<span class="gray">&nbsp;&nbsp;需支付<em class="red">${pro.price}</em>个蚂蚁币</span>
											</c:if>
										</div>
									</div>
								</c:if>
								<c:if test="${pro.elementnum > 2}">
									<div class="row cl">
										<label class="form-label col-xs-4 col-sm-3">${pro.elementname}：</label>
										<div class="formControls col-xs-8 col-sm-9">
											<c:forEach items="${pro.valueList}" var="proVal">
												<div class="radio-box">
												   	 <input type="radio" name="${pro.name}" <c:if test="${proVal.isdefault == 1}">checked="checked"</c:if> value="${proVal.keyvalue}"/>
												   	 <label>${proVal.label}</label>
											  	</div>
											</c:forEach>
											<c:if test="${not empty pro.price and pro.price > 0}">
												<span class="gray">&nbsp;&nbsp;需支付<em class="red">${pro.price}</em>个蚂蚁币</span>
											</c:if>
										</div>
									</div>
								</c:if>
						</c:when>
						
						<c:when test="${pro.elementtype == 'select'}">
							<div class="row cl">
								<label class="form-label col-xs-4 col-sm-3">${pro.elementname}</label>
								<div class="formControls col-xs-2 col-sm-3">
									<span class="select-box">
									  <select class="select" size="1" name="${pro.name}">
									  	 <option value="">请选择</option>
									  	 <c:forEach items="${pro.valueList}" var="proVal">
									  		<option value="${proVal.keyvalue}">${proVal.label}</option>
									  	 </c:forEach>
									  </select>
									</span>
								</div>
							</div>
						</c:when>
						
						<c:when test="${pro.elementtype == 'text'}">
							<div class="row cl">
								<label class="form-label col-xs-4 col-sm-3">${pro.elementname}：<!-- <em class="orange">*</em> --></label>
								<div class="formControls col-xs-2 col-sm-3">
									<input type="text" class="input-text" name="${pro.name}"/>
								</div>
								<c:if test="${not empty pro.price and pro.price > 0}">
									<div class="formControls col-xs-6 col-sm-6">
										<span class="text">&nbsp;&nbsp;<em class="gray">需支付<em class="red">${pro.price}</em>个蚂蚁币。</em></span>
									</div>
								</c:if>
							</div>
						</c:when>
						
						<c:when test="${pro.elementtype == 'img'}">
							<div class="row cl" style="min-height: 110px">
								<label class="form-label col-xs-4 col-sm-3">${pro.elementname}：</label>
								<div class="formControls col-xs-4 col-sm-6">
									<span>
										<a href="#" class="detail-jpg layer-photos-demo" id="layer-photos-demo"> 
											<img layer-pid="showBigimg" layer-src="${basePath}static/css/front/images/jietu.png" src="images/jietu.png" alt="">
										</a>
									</span>
									<br/>
									<iframe src="${basePath}/upload/index.htm?extnames=*.jpg;*.jpeg;*.png;*.gif;" frameborder="0"
										scrolling="no" height="34" width="112"></iframe>
								</div>
							</div>
						</c:when>
						
						<c:when test="${pro.elementtype == 'checkbox'}"></c:when>
						
					</c:choose>
					
				</c:forEach><!-- 任务属性循环end -->
			
			</c:forEach><!-- 最外层任务展示局域end -->
			
		</form>
		
	</div>

</div>
<script>


$(function(){

	// 收缩
	$('.open-btn').on('click',function(){
		$(this).parent('.tiro-control').siblings('.panel').find('.showHide').slideToggle();
		$(this).toggleClass('active');
		if ($(this).hasClass('active')) {
			$(this).text('展开');
			// $(this).find('i').css('background-position','4px -28px')
		}else{
			$(this).text('收缩');
			// $(this).find('i').css('background-position','4px 7px')
		}
	});
	
    layer.ready(function(){ //为了layer.ext.js加载完毕再执行
	  layer.photos({
	    photos: '#layer-photos-demo'
	  });
});  
});
</script>
</body>
</html>

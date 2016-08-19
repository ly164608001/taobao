<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>发布淘宝任务</title>
	
	<script type="text/javascript">
		/**
		 *	根据属性值显示属性
		 * @param obj 点击的元素对象
		*/
		function showProByValue(obj){
			var proid = $(obj).attr('proid');
			var valueid = $(obj).attr('id');
			//隐藏同属性下的所有副属性
			$('.parentProId'+proid).hide();
			$('.proVal'+valueid).show();
			
			var iframeId = $(window.parent.document).find("#external-frame").attr('id');
			setIframeHeightChild(iframeId);
		}
		
		
		$(function(){
			$('.initHidden').hide();
			//搜索进店的初始
			showProByValue($('#62'));
		})
	</script> 
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
					<!-- 属性显示块开头 -->
					<div 
						<c:if test="${empty pro.belongValue or empty pro.belongValue.id}">
							class="row cl" 
						</c:if>
						<c:if test="${not empty pro.belongValue and not empty pro.belongValue.id}">
							class="row cl initHidden parentProId${pro.parent.id} proVal${pro.belongValue.id}" 
						</c:if>
						
						<c:if test="${pro.elementtype == 'img'}">style="min-height: 110px"</c:if> >
					
					<!-- 属性显示块 -->
					<c:choose>
						<c:when test="${pro.elementtype == 'radio'}">
								<c:if test="${pro.elementnum == 2}">
										<label class="form-label col-xs-4 col-sm-3">${pro.elementname}：</label>
										<div class="formControls col-xs-4 col-sm-6">
											<c:forEach items="${pro.valueList}" var="proVal">
												<c:choose>
													<c:when test="${proVal.isdefault == 1}">
														<span class="tab-tip active" proid="${pro.id}" id="${proVal.id}"
															 <c:if test="${not empty proVal.func}">onclick="${proVal.func};"</c:if> >${proVal.label}</span>
													</c:when>
													<c:otherwise>
														<span class="tab-tip" proid="${pro.id}" id="${proVal.id}"
															<c:if test="${not empty proVal.func}">onclick="${proVal.func};"</c:if> >${proVal.label}</span>
													</c:otherwise>
												</c:choose>
											</c:forEach>
											<c:if test="${not empty pro.price and pro.price > 0}">
												<span class="gray">&nbsp;&nbsp;需支付<em class="red">${pro.price}</em>个蚂蚁币</span>
											</c:if>
										</div>
									</div>
								</c:if>
								<c:if test="${pro.elementnum > 2}">
										<label class="form-label col-xs-4 col-sm-3">${pro.elementname}：</label>
										<div class="formControls col-xs-8 col-sm-9">
											<c:forEach items="${pro.valueList}" var="proVal">
												<div class="radio-box">
												   	 <input type="radio" name="${pro.name}" id="${proVal.id}" value="${proVal.keyvalue}"
												   	 	proid="${pro.id}" valueid="${proVal.id}"
												   	 	<c:if test="${proVal.isdefault == 1}">checked="checked"</c:if>
												   	 	<c:if test="${not empty proVal.func}">onclick="${proVal.func};"</c:if>  />
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
								<label class="form-label col-xs-4 col-sm-3">${pro.elementname}：</label>
								<div class="formControls col-xs-4 col-sm-6">
									<span>
										<a href="#" class="detail-jpg layer-photos-demo" id="layer-photos-demo"> 
											<img layer-pid="showBigimg" layer-src="${basePath}static/css/front/images/jietu.png" src="images/jietu.png" alt="">
										</a>
									</span>
									<br/>
									<iframe src="${basePath}/upload/index.htm?extnames=*.jpg;*.jpeg;*.png;*.gif;" frameborder="0"
										scrolling="no" height="34" width="112" class="mt10 ml10"></iframe>
								</div>
							</div>
						</c:when>
						
						<c:when test="${pro.elementtype == 'checkbox'}">
								<label class="form-label col-xs-4 col-sm-3">${pro.elementname}：</label>
								<div class="formControls col-xs-8 col-sm-9 more-click">
									<c:forEach items="${pro.valueList}" var="proVal">
										<span class="tab-tip-add">是</span>
									</c:forEach>
									<c:if test="${not empty pro.price and pro.price > 0}">
										<span><em class="gray">需支付<em class="red">${pro.price}</em>个蚂蚁币</em></span>
									</c:if>
								</div>
							</div>
						</c:when>
						
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

<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>店铺管理</title>
</head>
<body>
	<div class="workContent ml20">
	<h4>
		<span class="title">店铺管理</span>
	</h4>
	
	<div class="workDoing mt20">
		<div id="tab_demo" class="HuiTab">
			<div class="tabBar cl">
				<span>店铺列表</span>
			</div>
			<div class="tabCon">
				<div class="search-tab mt20 search-tab-mini">
				<ul>
					<li class="tab02">
					   <form id="searchForm" action="${basePath}front/seller/shop/shopList.htm">
					   		<input type="hidden" name="page" value="${vo.page}"/>
					   		<input type="hidden" name="totalPage" value="${vo.totalPage}"/>
					   		<input type="hidden" name="model.type" value="${vo.model.type}"/>
					   </form>
					</li>
					<li class="tab02">
						<input id="addBtn"  class="btn radius btn-secondary btn-addTips" type="button" value="+添加店铺">
					</li>
				</ul>
			</div>
				<div class="workTable mt30 appealTable">
					<table class="table table-border table-bg">
						<thead>
							<tr>
								<th>店铺名称</th>
								<th>品类</th>
								<th>淘宝掌柜帐号</th>
								<th>总发布任务</th>
								<th>绑定时间</th>
								<th>状态</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list}" var="item" varStatus="vs">
								<tr>
									<td><span>${item.name}</span></td>
									<td><span>${item.goodsType.typename}</span></td>
									<td><span>${item.manager}</span></td>
									<td><span>${item.alltasknum}</span></td>
									<td><span><f:formatDate value="${item.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/></span></td>
									<td>
										<span>
											<c:choose>
												<c:when test="${item.status == 0}">未激活</c:when>
												<c:when test="${item.status == 1}">已激活</c:when>
											</c:choose>
										</span>
									</td>
									<td>
										<a href="javascript:void(0);" onclick="update(${item.id});" class="btn btn-secondary radius">编辑</a>
										<c:choose>
											<c:when test="${item.status == 0}">
												<a href="javascript:void(0);" onclick="activate(${item.id});" class="btn btn-secondary radius">激活</a>
											</c:when>
											<c:when test="${item.status == 1}">
												<a href="javascript:void(0);" onclick="cancelActivate(${item.id});" class="btn btn-secondary radius">取消激活</a>
											</c:when>
										</c:choose>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>

			</div>
			
		</div>
		<div class="clearfix page-wrap"></div>
	</div>

</div>
<script>
	function update(id){
		var url = '${basePath}front/seller/shop/shopUpdate.htm?id=' + id;
		layerPromptIframe(url, '编辑店铺', oprSuccess);
	}
	
	/*
	* 激活
	*/
	function activate(id){
		var url =  '${basePath}front/seller/shop/activate.htm?id=' + id;
		layerConfirm(url ,'确认激活?', oprSuccess);
	}
	
	function cancelActivate(id){
		var url =  '${basePath}front/seller/shop/cancelActivate.htm?id=' + id;
		layerConfirm(url ,'确认取消激活?', oprSuccess);
	}
	
	function oprSuccess(){
		top.layer.alert('操作成功');
		$('#searchForm').submit();
	}
	
	$(function(){
		
		$('#addBtn').click(function(){
			var url = '${basePath}front/seller/shop/shopAdd.htm?type=${vo.model.type}';
			layerPromptIframe(url, '添加店铺', oprSuccess);
		});
		
	    $.Huitab("#tab_demo .tabBar span","#tab_demo .tabCon","current","click","0");
	});
</script>
</body>
</html>

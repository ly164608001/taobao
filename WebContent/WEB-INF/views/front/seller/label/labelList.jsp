<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>标签管理</title>
</head>
<body>
	<div class="workContent ml20">
	<h4>
		<span class="title">标签管理</span>
	</h4>
	
	<div class="workDoing mt20">
		<div id="tab_demo" class="HuiTab">
			<div class="tabBar cl">
				<span>标签列表</span>
			</div>
			<div class="tabCon">
				<div class="search-tab mt20 search-tab-mini">
				<ul>
					<li class="tab02">
					   <form id="searchForm" action="${basePath}front/seller/label/labelList.htm">
					   		<input type="hidden" name="page" value="${vo.page}"/>
					   		<input type="hidden" name="totalPage" value="${vo.totalPage}"/>
					   		<input type="hidden" name="model.type" value="${vo.model.type}"/>
					   		
							<span class="tab-title" style="width: 90px;">关键词：</span>
							<input type="text" name="model.name" placeholder="请输入关键词" 
									value="${vo.model.name}" class="input-text radius size-M" />
							<input class="btn radius btn-secondary" type="submit" value="查询" />
					   </form>
					</li>
					<li class="tab02">
						<input id="addBtn"  class="btn radius btn-secondary btn-addTips" type="button" value="+添加标签">
					</li>
				</ul>
			</div>
				<div class="workTable mt30 appealTable">
					<table class="table table-border table-bg">
						<thead>
							<tr>
								<th>标签名</th>
								<th>添加时间</th>
								<th>排序</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list}" var="item" varStatus="vs">
								<tr>
									<td><span>${item.name}</span></td>
									<td><span><f:formatDate value="${item.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/></span></td>
									<td><span>${item.sort}</span></td>
									<td>
										<a href="javascript:void(0);" onclick="update(${item.id});" class="btn btn-secondary radius">编辑</a>
										<a href="javascript:void(0);" onclick="del(${item.id});" class="btn btn-secondary radius">删除</a>
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
		var url = '${basePath}front/seller/label/labelUpdate.htm?id=' + id;
		layerPromptIframe(url, '编辑标签', oprSuccess);
	}
	
	function del(id){
		var url = '${basePath}front/seller/label/labelDelete.htm?id='+id;
		layerConfirm(url ,'确认删除该标签?', oprSuccess);
	}
	
	function oprSuccess(){
		top.layer.alert('操作成功');
		$('#searchForm').submit();
	}
	
	$(function(){
		
		$('#addBtn').click(function(){
			var url = '${basePath}front/seller/label/labelAdd.htm?type=${vo.model.type}';
			layerPromptIframe(url, '添加标签', oprSuccess);
		});
		
	    $.Huitab("#tab_demo .tabBar span","#tab_demo .tabCon","current","click","0");
	});
</script>
</body>
</html>

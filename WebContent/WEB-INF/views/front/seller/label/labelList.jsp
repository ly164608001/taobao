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
						<span class="tab-title" style="width: 90px;">关键词：</span>
						<input type="text" placeholder="请输入关键词" class="input-text radius size-M">
						<input class="btn radius btn-secondary" type="button" value="查询">
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
							<tr>
								<td>
									<span>福建</span>
								</td>
								<td>
									<span>2015-52-15 52:52:41</span>
								</td>
								<td>
									<span>1</span>
								</td>
								<td>
									<a href="#" class="btn btn-secondary radius">编辑</a>
									<a href="#" class="btn btn-secondary radius">删除</a>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

			</div>
			<div class="tabCon">内容二</div>
		</div>
		<div class="clearfix page-wrap"></div>
	</div>

</div>
<script>
$(function(){
	
	$('#addBtn').click(function(){
		var url = '${basePath}front/seller/label/labelAdd.htm?type=${vo.model.type}';
		var indexAdd = top.layer.open({
            type:2,
            area:['600px','400px'],
            closeBtn:1,
            shadeClose:true,
            content:[url,'no'],
            title:'添加标签',
            btn:['确定','取消'],
            yes:function(index){
                console.log('这里执行提交操作');
            }
        });
	});
	
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
  
    $.Huitab("#tab_demo .tabBar span","#tab_demo .tabCon","current","click","0");
});
</script>
</body>
</html>

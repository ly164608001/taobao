<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>淘宝任务申诉</title>
</head>
<body>
	<div class="workContent ml20">
		<h4>
			<span class="title">淘宝任务申诉</span>
		</h4>
		<div class="header">
			<div class="panel panel-default">
				<div class="panel-body">
					<p>1、针对违规任务，您可以进行快速投述了,请不要乱投诉哟，否则您将遭受处罚佣金，严重封号的惩罚;</p>
					<p>2、周一至周五 9：00-18：00处理，节假日延迟到工作日处理，请耐心等待。</p>

				</div>
			</div>
		</div>
		<div class="workDoing mt20">
			<div id="tab_demo" class="HuiTab">
				<div class="tabBar cl">
					<span>发起的申诉</span>
					<span>收到的申诉</span>
				</div>
				<div class="tabCon">
					<div class="workTable mt30 appealTable">
						<table class="table table-border table-bg">
							<thead>
								<tr>
									<th>任务ID</th>
									<th>申诉类型</th>
									<th>申诉时间</th>
									<th>处理结构</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<span>546545646546</span>
									</td>
									<td>
										<span>订单不存在</span>
									</td>
									<td>
										<span>2015-52-15 52:52:41</span>
									</td>
									<td>
										<span>结构处理</span>
									</td>
									<td>
										<span>
											<a href="#"  class="btn btn-secondary radius">确定</a>
											<a href="#" class="btn btn-default radius">取消</a>
										</span>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="Huialert Huialert-error mt10 text-c"> <i class="icon-remove"></i>
						亲，没有符合条件的任务
					</div>
				</div>
				<div class="tabCon">内容二</div>
			</div>
		</div>

	</div>
	<script>


$(function(){
    $.Huitab("#tab_demo .tabBar span","#tab_demo .tabCon","current","click","0");
});
</script>
</body>
</html>
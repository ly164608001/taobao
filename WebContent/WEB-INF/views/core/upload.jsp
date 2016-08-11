<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <%
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
	pageContext.setAttribute("basePath", basePath);
%>
    <title>SWFUpload简单使用例子 Java版（JSP）</title>
   
	<script type="text/javascript" src="${basePath}/static/swfupload/js/jquery.js"></script>
	<script type="text/javascript" src="${basePath}/static/swfupload/swfupload/swfupload.js"></script>
	<script type="text/javascript" src="${basePath}/static/swfupload/js/swfupload.queue.js"></script>
	<script type="text/javascript" src="${basePath}/static/swfupload/js/fileprogress.js"></script>
	<script type="text/javascript" src="${basePath}/static/swfupload/js/handlers.js"></script>
	
	<link href="${basePath}/static/swfupload/css/default.css" rel="stylesheet" type="text/css" />
	
  <script type="text/javascript">
  function uploadsuc(data) {
	  var json = JSON.parse(data);
	  if(json.success){
		  alert('uploadsuccess');
		  parent.uploadsuc(json);
	  }
  }

  
 function uploadfalse(data){
	  parent.uploadfalse(data);
  }
  
  var upload;
  window.onload = function() {
	upload = new SWFUpload({
	// 处理文件上传的url
	upload_url: "${basePath}/upload/upload.htm?cid=${cid}&framename=${framename}&ttPath=${ttPath}",	// 路径写全，否则Firefox下会出现404错误。自由修改处一：处理文件上传的url路径，注意还要写全部

	// 上传文件限制设置
	file_size_limit : "${size}",	// 10MB
	file_types : "${extnames}",	//此处也可以修改成你想限制的类型，比如：*.doc;*.wpd;*.pdf
	file_upload_limit : "0",
	file_queue_limit : "1",

	// 事件处理设置（所有的自定义处理方法都在handler.js文件里）
	file_dialog_start_handler : fileDialogStart,
	file_queued_handler : fileQueued, 
	file_queue_error_handler : fileQueueError,
	file_dialog_complete_handler : fileDialogComplete,
	upload_start_handler : uploadStart,
	upload_progress_handler : uploadProgress,
	upload_error_handler : uploadError,
	upload_success_handler : uploadSuccess,
	upload_complete_handler : uploadComplete,

	// 按钮设置
	button_image_url : "${basePath}/static/swfupload/swfupload/small.png",	// 按钮图标
	button_placeholder_id : "spanButtonPlaceholder",
	button_width: 60,
	button_height: 20,
				
	// swf设置
	flash_url : "${basePath}/static/swfupload/swfupload/swfupload.swf",
				

	custom_settings : {
		progressTarget : "fsUploadProgress",
		cancelButtonId : "btnCancel"
	},
				
		// Debug 设置
		debug: false
	});
  }
  </script>

  </head>
  
  <body>
  <span id="spanButtonPlaceholder"></span>
    <div class="flash" id="fsUploadProgress"  style="display:none">
    </div>
    <div style="padding-left: 5px;display:none">
	  	<input id="btnCancel"  type="button" value="取消" onclick="cancelQueue(upload);" disabled="disabled" style="margin-left: 2px; height: 22px; font-size: 8pt;" />
  	</div>
  	<br>
  </body>
</html>
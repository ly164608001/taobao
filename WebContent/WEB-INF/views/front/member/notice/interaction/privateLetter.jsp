 <%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp" %>
<%@include file="/WEB-INF/views/front/member/memberHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>MessageCenter</title>
<script>
function remainnumber(){
	var num=$("#content").val().length;
	if(num>500){
		$("#contentmsg").html('字数超限，请重新输入！');
        document.getElementById("remainnumber").innerHTML=0;
		return;
	}
	if(num<=500 && num>=0){
		$("#contentmsg").html('');
		document.getElementById("remainnumber").innerHTML=500-num;
		return;
	}
}
</script>

</head>
<body>
<div class="write-box">
    <form id="addform" action="${basePath}front/member/notice/interaction/addsave.htm" method="post">
    <div class="write-main">
    	<div class="write-main-col clearfix">
    		<label><em  class="col">*</em>&nbsp;楼盘名称：</label>
            <input id="housesname" name="houses.name" class="btn-name" type="text" />
           	<span id="housemsg" class="red"></span>
        </div>
        <div class="write-main-col clearfix" >
    		<label><em  class="col">*</em>&nbsp;私信内容：</label>
            <div class="message-text fl clearfix">
            	<textarea id="content" name="content" onblur="remainnumber()" class="fl" style="width:300px"></textarea>
            	<span id="contentmsg" class="red fl"></span>
            </div>
        </div>
        <p style="padding-left:60px">还可以输入&nbsp;<em class="col" id="remainnumber" >500</em>&nbsp;字</p>
    </div>
    </form>
</div>
</body>
</html>

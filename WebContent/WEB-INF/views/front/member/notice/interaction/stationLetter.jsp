<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp" %>
<%@include file="/WEB-INF/views/front/member/memberHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MessageCenter</title>
<script>
$(document).ready(function(){
	//写私信验证内容
	 $(function(){
        $('.btn-write').on('click',function(){
            indexPrivate=top.layer.open({
                type:2,
                area:['700px','400px'],
                shadeClose:true,
                content:['${basePath}front/member/notice/interaction/privateLetter.htm','no'],
                title:'写私信',
                btn:['发送','取消'],
                yes:function(layero,index){
                	var body=top.layer.getChildFrame('body',indexPrivate);
                	var num=body.find('#content').val().length;  
               		var housesName =body.find('#housesname').val();
               		if(num>500){
               			body.find("#contentmsg").html('字数超限，请重新输入！');
               			return;
                	}
               		if(isNull(housesName)){
               			body.find("#housemsg").html('楼盘不能为空！');
               			return;
               		}
               		if(isNull(num)){
               			body.find("#contentmsg").html('内容不能为空！');
               			return;
               		}
                	else{
                		var url = "${basePath}front/member/notice/interaction/addsave.json";
                		$.ajax({
                			type : "POST",
                			url : url,
                			datatype : "json",
                			data : body.find('#addform').serialize(),
                			success : function(result) {
                				var res = JSON.parse(result);
                				console.info(res);
                				if (res.success) {
                					indexOk =top.layer.open({
                			           type:1,
                			           content:'发送成功！',
                			           shadeClose:true,
                			           area:'300px',
                			           title:['信息','color:#fff'],
                			           btn:['确认'],
                			           yes:function(){
                			        	   top.layer.close(indexOk);
                			        	   top.layer.close(indexPrivate);
                		                	return;
                			           }
                			       });
                				} else {
                					body.find("#housemsg").html('该楼盘不存在！');
                			       return;
                				}
                			},
                			error : function() {
                			}
                		});
                	}
                }
            });  
        });
       layer.config({extend: ['skin/layerSkinExtend.css'] //加载新皮肤
    	}); 
 	})
	
	//分页
	function filterStatus(status){
		$('#searchForm input[name="totalPage"]').val(1);
		$('#pstatus').val(status);
		$('#searchForm').submit();
	}	
	
	//回复
	$(".input-reply input[type='button']").click(function(){
		var id=$(this).attr("id");
		var lv=id.substring(4,id.length);
		var url = "${basePath}front/member/notice/interaction/stationLetterReplySave.json";
		//判断回复内容是否为空 不为空就提交ajax
		if(isNull($("#content_"+lv).val())){
			indexOk = top.layer.open({
	           type:1,
	           content:'回复内容不能为空！',
	           shadeClose:true,
	           area:'300px',
	           title:['信息','color:#fff'],
	           btn:['确认']
	       })
			return;
		}
		$.ajax({   
			type : "POST",
			url : url,
			datatype : "json",
			data : { id:$("#id_"+lv).val(), content:$("#content_"+lv).val() },//$("#addform").serialize(),
			success : function(result) {
				var res = JSON.parse(result);
				console.info(res);
				if (res.success) {
					indexOk =top.layer.open({
			           type:1,
			           content:'发送成功！',
			           shadeClose:true,
			           area:'300px',
			           title:['信息','color:#fff'],
			           btn:['确认'],
			           yes:function(){
			        	   top.layer.close(indexOk);
			        	   window.location = "${basePath}front/member/notice/interaction/stationLetter.htm";
		                	return;
			           }
			       });
				} else {
					indexOk = top.layer.open({
			           type:1,
			           content:'发送失败！',
			           shadeClose:true,
			           area:'300px',
			           title:['信息','color:#fff'],
			           btn:['确认']
			       })
			       return;
				}
			},
			error : function() {

			}
		});
	});
	
})

//标记已读
function read(){
	var count=$("input[name='noticeIds']:checked").length;
	var status=1;
	document.getElementById('optionMark').value=status;
	if(count>0){
		$("#readMark").submit();
	}
	else {
		indexOk = top.layer.open({
	           type:1,
	           content:'未选中任何信息！',
	           shadeClose:true,
	           area:'300px',
	           title:['信息','color:#fff'],
	           btn:['确认']
	       })
	       return;
	}
}	
//标记未读
function unread(){
	var count=$("input[name='noticeIds']:checked").length;
	var status=-1;
	document.getElementById('optionMark').value=status;
	if(count>0){
		$("#readMark").submit();
	}
	else {
		indexOk = top.layer.open({
	           type:1,
	           content:'未选中任何信息！',
	           shadeClose:true,
	           area:'300px',
	           title:['信息','color:#fff'],
	           btn:['确认']
	       })
	       return;
	}
}
</script>
</head>

<body>

<!-- form的id值要与分页div中的bindForm值一致 -->
<form id="searchForm" action="${basePath }front/member/notice/interaction/stationLetter.htm">
	<!-- 分页必须元素 ，其中pageCount中的list为后台返回列表数据名称 -->
	<input type="hidden" name="totalPage" value="${vo.totalPage}" />
	<input type="hidden" name="rows" value="${vo.rows}" />
	<input type="hidden" name="page" value="${vo.page}" />
	<!-- 业务查询条件 -->
	<input type="hidden" name="model.status" value="${vo.model.status}" id="pstatus"/>
</form>


<!--PersonalCenter-main-->
<div class="PersonalCenter-main">
	<div class="PersonalCenter-main-w1200 clearfix">
        <!--PersonalCenter-main-r-->
		<div class="PersonalCenter-main-r">
        	<!--CaptureroomRecord-->
        	<div class="CaptureroomRecord">
            	<!--CaptureroomRecord-title-->
            	<div class="MyFootprint-title"><span class="level-1">消息中心</span>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<span class="level-2">互动消息</span></div>
                <!--MessageCenter-main-->
                <div class="MessageCenter-main">
                	<div class="MessageCenter-nav">
                        <div class="MessageCenter-nav-l">
                            <ul class="clearfix">
                                <li><a  href="javascript:void(0);" onclick="window.location.href='${basePath}front/member/notice/interaction/interactionNotice.htm'" >楼盘点评：(<span>${totalNum}</span>)</a></li>
                                <li><a class="li-h5">站内信：(<span>${letterNum}</span>)</a></li>
                            </ul>
                        </div>
                        <input   class="btn-write" type="button" value="写私信" />
                    </div>
                    <div class="read-nav clearfix">
                    	<ul>
                        	<li id="all" onclick="window.location.href='${basePath}front/member/notice/interaction/stationLetter.htm'"  <c:if test="${empty vo.model.status}">class="li-h6"</c:if>>全部</li>
                            <li id="read" onclick="window.location.href='${basePath}front/member/notice/interaction/stationLetter.htm?model.status=1'" <c:if test="${vo.model.status==1}">class="li-h6"</c:if>>已读</li>
                            <li id="unread" onclick="window.location.href='${basePath}front/member/notice/interaction/stationLetter.htm?model.status=-1'" <c:if test="${vo.model.status==-1}">class="li-h6"</c:if>>未读</li>
                        </ul>
                    </div>
                    <form id="readMark" action="${basePath}front/member/notice/interaction/letterMarkRead.htm" method="post">
                    <input id="optionMark" name="optionMark" type="hidden" value="" />
                    <div class="read-main">
	                    	<div class="remark">
	                        	<input id="selectCheckBox" type="checkbox" onchange="selectAll('selectCheckBox','noticeIds')" />
	                        	<a href="javascript:void" class="sel-read"><span class="btn_gray btn_dropdown">标记为...</span><span class="ico_select_s"></span></a>
						        <span class="remark-stade" style="display: none;">
						            <a href="javascript:void" id="read" onclick="read()">已读</a>
						            <a href="javascript:void" id="unread" onclick="unread()">未读</a>
						        </span>
	                        </div>
                        <div id="all" class="command-main">
                        	<ul>
                        		 <c:forEach var="station" items="${list}" varStatus="i">
		                            	<li class="clearfix">
		                                	<input name="noticeIds" type="checkbox" value="${station.id}" style="margin-top:50px" />
		                                    <div class="command-pics">
		                                    	<div class="command-pic"><img src="${station.senduser.icon}" width="100" height="100" /></div>
		                                        <p>${station.houses.name}</p>
		                                    </div>
		                                    <div class="command-box">
		                                    	<div class="command-box-head"></div>
		                                        <div class="command-content">
		                                        	<div class="command-text clearfix">
		                                            	<span>${station.houses.name}：</span>
		                                                <div class="text-main">${station.content}</div>
													</div>
		                                            <div class="text-time">${station.sendtime}</div>
		                                            <c:forEach var="reply" items="${station.replyList}">
	                                                    <div class="reply-content">
	                                                    	<span>${reply.senduser.username}：</span>
			                                            	<div class="reply-text">${reply.content}</div> 
			                                            	<div class="text-time text-r">${reply.sendtime}</div>
	                                            		</div>
                                            		</c:forEach>
		                                            <div class="more-opera clearfix">
		                                            	<a class="btn-a btn-more" href="javascript:void(0);"  style="display:none;">展开更多互动</a>
		                                            	<a class="btn-a btn-reply" href="javascript:void(0);" >我要回复</a>
		                                            </div>
		                                            <div class="input-reply" >
		                                            	<input id="content_${i.index}" name="content" type="text" />
		                                            	<input id="id_${i.index}" name="id" type="hidden" value="${station.id}" />
		                                            	<input id="btn_${i.index}"  type="button" value="回复" />
		                                            </div>
		                                        </div>
		                                        <span class="sharp-pic"></span>
		                                        <c:choose>
		                                        <c:when test="${station.status == 1}">
		                                        <span class="remark-read"><img src="${basePath}static/css/front/images/readed.png" width="67" height="58" /></span>
												</c:when>
												<c:when test="${station.status == -1}">
		                                        <span class="remark-read"><img src="${basePath}static/css/front/images/unread.gif" width="67" height="58" /></span>
												</c:when>
												</c:choose>
											</div>
		                                </li>
                                </c:forEach>
                            </ul>
                            </form>
                      		<div class="clearfix page-wrap" bindForm="searchForm"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--split-line-->
<div class="split-line">
	<div class="split-line-w1200"></div>
</div>
</body>
</html>
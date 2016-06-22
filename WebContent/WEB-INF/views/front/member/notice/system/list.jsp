<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp" %>
<%@include file="/WEB-INF/views/front/member/memberHeadDeclare.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>互动消息-系统消息</title>
</head>
<body>
		<!-- form的id值要与分页div中的bindForm值一致 -->
		<form id="searchForm" action="${basePath }front/member/notice/system/list.htm">
			<!-- 分页必须元素 ，其中pageCount中的list为后台返回列表数据名称-->
			<input type="hidden" name="totalPage" value="${vo.totalPage}" />
			<input type="hidden" name="rows" value="${vo.rows}" />
			<input type="hidden" name="page" value="${vo.page}" />
			<!-- 业务查询条件 -->
			<input type="hidden" name="model.status" value="${vo.model.status}" id="pstatus"/>
		</form>
        
        
                <!--PersonalCenter-main-r-->
		<div class="PersonalCenter-main-r">
        	<!--CaptureroomRecord-->
        	<div class="CaptureroomRecord">
            	<!--CaptureroomRecord-title-->
            	<div class="MyFootprint-title"><span class="level-1">消息中心</span>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<span class="level-2">系统消息</span></div>
                <!--MessageCenter-main-->
                <div class="MessageCenter-main">
	                    <div class="read-nav clearfix">
	                    	<ul>
	                        	<li id="all" onclick="window.location.href='${basePath}front/member/notice/system/list.htm?'"  class="li-h6">全部</li>
	                            <li id="read" onclick="window.location.href='${basePath}front/member/notice/system/list.htm?model.status=1'" >已读</li>
	                            <li id="unread" onclick="window.location.href='${basePath}front/member/notice/system/list.htm?model.status=-1'" >未读</li> 
	                        </ul>
	                    </div>
		                    <div class="read-main">
		                    		<div class="remark">
		                        		<input id="selectCheckBox" type="checkbox" onchange="selectAll('selectCheckBox','noticeIds')"/>
		                               <a href="#" class="sel-read">
		                               	<span class="btn_gray btn_dropdown">标记为...</span><span class="ico_select_s"></span>
		                               </a>
		                               <span class="remark-stade" style="display: none;">
			                                <a  href="javascript:void(0);" id="readMark" onclick="readStatus()">已读</a>
			                                <a href="javascript:void(0);" id="unreadMark" onclick="unreadStatus()">未读</a>
			                            </span>
			                            <span><a class="btn_gray btn_dropdown" href="javascript:void(0);" id="delete" onclick="deleteSystem()">删除</a></span>
		                        	</div>
		                        	
				                        <div class="command-main">
				                         	<form id="delform"  method="post">
				                        	<ul>
				       							<c:forEach var="systemInfo" items="${list}">
				                            	<li class="clearfix">
													<input name="noticeIds" type="checkbox" value="${systemInfo.id}" style="margin-top:50px;" />	                        					
														<div class="command-pics">
			                                    			<div class="command-pic"><img src="${basePath}static/css/front/images/admin-pic.png" width="100" height="100" /></div>
			                                        			<p>系统管理员</p>
			            								</div>
		            									<div class="command-box">
			            									<div class="command-box-head"></div>
			            									<div class="command-content">
			            										<div class="command-text clearfix">
									                                  <div class="text-main">${systemInfo.content}</div> 									              						 
																</div>
																<span><f:formatDate value="${systemInfo.receivetime}" pattern="yyyy-MM-dd HH:mm:ss" /></span>
								                           	</div>
                                        					<span class="sharp-pic"></span>
				                                        	 <!--进行判断，当status=-1时选择未读图片 ，当status=1时选择已读图片-->
				                                         	<c:choose>
																<c:when test="${systemInfo.status == -1}"><span class="remark-read"><img src="${basePath}static/css/front/images/unread.gif" width="67" height="58" /></span></c:when>
																<c:when test="${systemInfo.status == 1}"><span class="remark-read"><img src="${basePath}static/css/front/images/readed.png" width="67" height="58" /></span></c:when>
															</c:choose>
														</div>  
				                                </li>    
				        						</c:forEach> 
				                            </ul>  
				                            </form>                                                	
				                        </div>
		                   <div class="clearfix page-wrap" bindForm="searchForm"></div>                                                         
					 </div>
                </div>
            </div>
        </div>
		<!--split-line-->
		<div class="split-line">
			<div class="split-line-w1200"></div>
		</div>
</body>
<script type="text/javascript" src="${basePath }static/js/front/member/notice/systemNotice.js"></script>
</html>

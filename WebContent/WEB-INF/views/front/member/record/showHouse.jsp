<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp" %>
<%@include file="/WEB-INF/views/front/member/memberHeadDeclare.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>动态记录-看房记录</title>
</head>
<script type="text/javascript">
function deleted(){
	if(isCheckboxSelected("delform")){
		$("#delform").submit();
	}
}
</script>

<body><br>
<!-- form的id值要与分页div中的bindForm值一致 -->


        <!--PersonalCenter-main-r-->
		<div class="PersonalCenter-main-r">
        	<!--CaptureroomRecord-->
        	<div class="CaptureroomRecord">
            	<!--CaptureroomRecord-title-->
            	<div class="MyFootprint-title"><span class="level-1">动态记录</span>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<span class="level-2">看房记录</span></div>
            	<!--CaptureroomRecord-main-->
                <div class="CaptureroomRecord-main clearfix">
                	<div class="stage-nav clearfix">
                    	<ul>
                        	<li id="now" <c:if test="${vo.status == 0}">class="active"</c:if>>进行中&nbsp;(&nbsp;<span>${now}</span>&nbsp;)</li>
                            <li id="joi" <c:if test="${vo.status == 1}">class="active"</c:if>>已参与&nbsp;(&nbsp;<span>${join}</span>&nbsp;)</li>
                            <li id="unj" <c:if test="${vo.status == -1}">class="active"</c:if>>未参与&nbsp;(&nbsp;<span>${unjoin}</span>&nbsp;)</li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <!--search-nav-->
                    <div class="search-nav clearfix">
                        <div class="search-nav-l clearfix">
                            <ul>
                                <li id="all" <c:if test="${empty vo.timeType}">class="li-h"</c:if>>全部</li>
                                <li id="tod" <c:if test="${vo.timeType==1}">class="li-h"</c:if>>今天</li>
                                <li id="wee" <c:if test="${vo.timeType==2}">class="li-h"</c:if>>本周</li>
                                <li id="mon" <c:if test="${vo.timeType==3}">class="li-h"</c:if>>本月</li>
                                <li id="nea" <c:if test="${vo.timeType==4}">class="li-h"</c:if>>近3个月</li>
                            </ul>
                        </div>
                        <!-- search  start -->
                        <div class="search-nav-r">
                        <form id="searchForm" action="${basePath }front/member/record/showHouse.htm" method="post">
							<!-- 分页必须元素 ，其中pageCount中的list为后台返回列表数据名称-->
							<input type="hidden" name="totalPage" value="${vo.totalPage}" />
							<input type="hidden" name="rows" value="${vo.rows}"/>
							<input type="hidden" name="page" value="${vo.page}"/>
							<input type="hidden" name="status" value="${vo.status}"/>
							<input type="hidden" name="timeType" value="${vo.timeType}"/>
						
							<!-- 业务查询条件 -->
							<div class="select-time">
	                                <label>活动日期</label>
	                                <div class="first-time">
	                                    <input name="createtime_start" class="laydate-icon write-time start" type="text" id="start" readonly="readonly" >
	                                </div>
	                            </div>
	                            <span class="cut">&nbsp;&nbsp;—&nbsp;&nbsp;</span>
	                            <div class="select-time">
	                                <div class="first-time">
	                                    <input name="createtime_end" class="laydate-icon write-time end" type="text" id="end"  readonly="readonly">
	                                </div>
	                            </div>
	                            <a class="btn-search" href="javascript:void(0);">搜索</a>
						</form>
                        </div>
                         <!-- search end -->
                    </div>
                    
                    
                    
                    <div class="CaptureroomRecord-content">
                    	<div class="CaptureroomRecord-content-box clearfix">
                        	<div class="CaptureroomRecord-content-l"><input id="check" name="chs" type="checkbox" onclick="selectAll('check','chsel')"  /></div>
                        	<input class="btn-delete" type="button" value="删除" onclick="deleted()"/>
                        </div>
                        
                  <!-- main content start-->     
                        
                        <div class="CaptureroomRecord-content-box clearfix">
                        <form id="delform" name="delform" action="${basePath}front/member/record/showhousedelete.htm" method="post">
                      <c:forEach var="showhouse" items="${list}">
                        	<div class="CaptureroomRecord-content-l"><input name="chsel" type="checkbox"  value="${showhouse.atUser.id}"/></div>
                        	<div class="CaptureroomRecord-content-r">
                            	<div class="CaptureroomRecord-content-title clearfix">
                                	<div class="title-l">${showhouse.house.name}：${showhouse.name }</div>
                                   	<div class="title-r">${showhouse.createuser.phone }<i></i></div>
                                </div>
                                <div class="CaptureroomRecord-content-main clearfix" style="border:0 none">
                                	<div class="participants-box">
                                    	<div class="participants-house clearfix">
                                    		<div class="participants-house-pic"><img src="${showhouse.house.housespic }" width="140" height="120" /></div>
                                    		<div class="already">
                                            	<div class="other-message">
                                                	<label>楼盘地址：</label>
                                                    <span>${showhouse.house.detailaddress }</span>
                                                </div>
                                                <div class="other-message">
                                                	<label>均&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价：</label>
                                                    <span><i><f:formatNumber pattern="#,#00.#" value="${showhouse.house.price}" />  </i>&nbsp;&nbsp;元/平米</span>
                                                </div>
                                                <div class="other-message">
                                                	<label>活动时间：</label>
                                                    <span> <f:formatDate pattern="yyyy-MM-dd HH:mm" value="${showhouse.starttime }" /></span>
                                                </div>
                                                <div class="other-message">
                                                	<label>活动地点：</label>
                                                    <span>${showhouse.address }</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="CaptureroomRecord-data">
                                    	<div class="showing-discount">
                                    		<p class="discount-text">看房优惠：</p>
                                        	<p class="discount-detail">${showhouse.activitycontent }</p>
                                        </div>
                                        <div class="now-time"><f:formatDate pattern="yyyy-MM-dd HH:mm:ss"  value="${showhouse.atUser.applytime }"/></div>
                                    </div>
                                </div>
                            </div>
                    </c:forEach>
                    	</form>         
                        </div>
                   <!-- main content end--> 
                        <div class="clearfix page-wrap" bindForm="searchForm"></div> 
                        
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
<script type="text/javascript" src="${basePath}static/js/front/member/record/showhouse.js"></script>
</html>

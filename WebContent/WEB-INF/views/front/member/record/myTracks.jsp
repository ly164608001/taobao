<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp" %>
<%@include file="/WEB-INF/views/front/member/memberHeadDeclare.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>动态记录-我的足迹</title>

</head>

<body>
        <!--PersonalCenter-main-r-->
		<div class="PersonalCenter-main-r">
        	<!--MyFootprint-->
        	<div class="MyFootprint">
            	<!--MyFootprint-title-->
            	<div class="MyFootprint-title"><span class="level-1">动态记录</span>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<span class="level-2">我的足迹</span></div>
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
                    <div class="search-nav-r">
                    	<form id="searchForm" action="${basePath}front/member/record/myTracks.htm" method="post">
                    	<!-- 分页必须元素 ，其中pageCount中的list为后台返回列表数据名称-->
							<input type="hidden" name="totalPage" value="${totalPage}" />
							<input type="hidden" name="rows" value="${rows}"/>
							<input type="hidden" name="page" value="${page}"/>
							<input type="hidden" name="timeType" value="${timeType}"/>
							
                    		<input name="model.deleted" type="hidden" value="0"/>
	                    	<div class="select-time">
	                        	<label>时间</label>
	                            <div class="first-time">
	                            	<input name="createtime_start" class="laydate-icon write-time start" type="text" id="start" >
	                            </div>
	                        </div>
	                        <span class="cut">&nbsp;&nbsp;—&nbsp;&nbsp;</span>
	                        <div class="select-time">
	                            <div class="first-time">
	                            	<input name="createtime_end" class="laydate-icon write-time end" type="text" id="end" > 
	                            </div>
	                        </div>
	                        <a class="btn-search" href="javascript:void(0);">搜索</a>
                        </form>
                    </div>
                </div>
                <!--MyFootprint-main-->
                <div class="MyFootprint-main clearfix">
                	<div class="MyFootprint-main-l">
                        <div class="MyFootprint-timeLine MyFootprint-timeLine01"></div>
                        <div class="MyFootprint-timeLine MyFootprint-timeLine02"></div>
                        <div class="MyFootprint-timeLine MyFootprint-timeLine03"></div>
                        <div class="MyFootprint-timeLine MyFootprint-timeLine04"></div>
                        
                    </div>
                    <div class="MyFootprint-main-r">
                      <div id="content" style="width:888px">
	 					<c:forEach var="items" items="${list }" varStatus="j" >         
	                    	<div class="date-content">
	                        	<div class="date">${items.browertime }</div>
	                            <div class="date-detail clearfix">
	                            	<ul >
	                         <c:forEach var="mytracks" items="${items.mytracks}" varStatus="i">
	                         		<c:if test="${i.index>3 }"> 	
	                                	<li class="clearfix" style="display:none">
	                                </c:if> 
	                                <c:if test="${i.index<=3 }">
	                                	<li class="clearfix" style="display:block">
	                                </c:if>
	                                		<input id="houseid_${mytracks.id}" type="hidden" value="${mytracks.house.id}"/>
	                                    	<div class="house">
	                                        	<img src="${mytracks.house.housespic}" width="200" height="155" />
	                                            <div class="house-name">${mytracks.house.name}</div>
	                                        </div>
	                                        <div class="house-UnitPrice"><span><f:formatNumber pattern="#,#00.#" value="${mytracks.house.price}" /> </span>/平米</div>
	                                        <p>${mytracks.house.detailaddress }</p>
	                                        <span class="HouseType clearfix"><a id="houseType_${mytracks.id}" houseid="${mytracks.house.id}" href="javascript:void(0)">户型</a>
	                                        	<span id="houseTypeDetail_${mytracks.id}" class="HouseType-detail" style="display:none">
	                                                
	                                            </span>
	                                        	
	                                        </span>
	                                    </li>
	                         </c:forEach>    
	                                </ul>
	                            </div>
	                            <div class="more-footprint clearfix"><a href="javascript:void(0);">更多足迹</a></div>
	                        </div>
	   					</c:forEach> 	    
                      </div> 
						<!--  <div class="load-more"><a href="javascript:void(0);">加载更多</a></div>-->
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
<script type="text/javascript" src="${basePath}static/js/front/member/record/mytracks.js"></script>
</html>

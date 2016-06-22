<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp" %>
<%@include file="/WEB-INF/views/front/member/memberHeadDeclare.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>动态记录-我的收藏</title>
<script type="text/javascript">
 function deleteFavorites(houseid){
	 indexOk = top.layer.open({
         type:1,
         content:'是否删除该收藏楼盘?',
         shadeClose:true,
         area:'300px',
         title:['删除收藏','color:#000'],
         btn:['确认','取消'],
         yes:function(){
             top.layer.close(indexOk);
             window.location.href=basePath+"front/member/record/favoritedelete.htm?houseid="+houseid;
            // href="${basePath}front/member/record/favoritedelete.htm?houseid=${favorites.housename.id}"
         }
	 });
 }

</script>

</head>

<body>

        <!--PersonalCenter-main-r-->
		<div class="PersonalCenter-main-r">
        	<!--CaptureroomRecord-->
        	<div class="CaptureroomRecord">
            	<!--CaptureroomRecord-title-->
            	<div class="MyFootprint-title"><span class="level-1">动态记录</span>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<span class="level-2">我的收藏</span></div>
                <!--MyFavorites-main-->
                <div class="CaptureroomRecord-main clearfix">
                	<!--MyFavorites-search-->
                	<div class="MyFavorites-search clearfix">
                		<div class="MyFavorites-search-fl clearfix">
                			<form id="searchForm" action="${basePath}front/member/record/myFavorites.htm" method="post">
                				<!-- 分页必须元素 ，其中pageCount中的list为后台返回列表数据名称-->
								<input type="hidden" name="totalPage" value="${vo.totalPage}" />
								<input type="hidden" name="rows" value="${vo.rows}"/>
								<input type="hidden" name="page" value="${vo.page}"/>
								
                				<input name="model.user.id" type="hidden" value="${userid }"/>
                				<input name="model.housename.name" class="write-time in-search" type="text" placeholder="搜索楼盘" />
                    			<a class="btn-search" href="javascript:void(0);">搜索</a> 
                			</form>
                    	</div>
                    	<div class="clear"></div>
                	</div>
                	
			<c:forEach var="favorites" items="${list}" varStatus="i">
					<input id="favid_${i.index}" name="id" type="hidden" value="${favorites.id }"/>
          			<input id="houseid_${i.index}" name="houseid" type="hidden" value="${favorites.housename.id }"/>
          			
                	<div id="floor_${i.index}" class="floor-box clearfix">
						<div class="floor-box-l">
                    		<div class="place-box">
                            	<div class="house"><img src="${favorites.housename.housespic}" width="200" height="155" /></div>
                                <div class="place-title clearfix">
                                	<span class="place-name">${favorites.housename.name}</span>
                                    <a class="wkt-pic" href="javascript:void(0);"></a>
                                </div>
                                <div class="place-time"><f:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${favorites.favoritetime }" /></div>
                            </div>
                            <div class="opera-box">
                            	<a class="top-pic" href="javascript:void(0);"></a>
                                <a id="del_${i.index}"class="delete-pic" onclick="deleteFavorites(${favorites.housename.id})" ></a>
                            </div>
                    	</div>
                    	
                    	
                        <div  class="floor-box-r">
                        	<div class="type-nav clearfix">
                            	<div id="typeNav_${i.index}" class="type-nav-l">
                                	<ul class="clearfix" id="tab">
                                    	<li id="fav_${i.index}" class="li-h3">收藏户型</li>
                                        <li id="all_${i.index}">所有户型</li>
                                        <li id="rus_${i.index}">限时抢购</li>
                                    </ul>
                                    <a id="selectDelet_${i.index}" class="select-delect" href="javascript:void(0);">批量编辑</a>
                                </div>
                                <div class="type-nav-r"><a href="javascript:void(0);">相似楼盘&nbsp;&gt;</a></div>
                            </div>
                            
                            <div  class="HouseType-list clearfix" id="favorite_${i.index}">
	                            <ul>
	                            	<c:forEach var="types" items="${allList}">
	                            		<c:if test="${types.housename.id== favorites.housename.id}">
		                                	<li>
		                                		<input type="hidden" name="id" value="${types.id }" />
		                                    	<div class="HouseType-list-pic"><img src="${types.housestype.typepic }" width="153" height="153" /><span class="HouseType-cover" id="${types.id }"></span></div>
		                                    	<div class="HouseType-title">${types.housestype.name }</div>
		                                        <div class="HouseType-name">${types.housestype.roomnum }室${types.housestype.hallnum }厅${types.housestype.toiletnum }卫${types.housestype.balconynum }阳 <f:formatNumber pattern="#,#00.#" value="${types.housestype.buildarea }" />m²</div>
	                                    	</li>
                                    	</c:if>
	                                </c:forEach>	                              
	                               </ul>
	                         </div>
	                            
	                         <div class="HouseType-list clearfix" id="alltype_${i.index}" style="display:none">
	                            <ul>
	                            </ul>
	                         </div>
	                            
	                         <div class="limiteTime" id="rush_${i.index}" style="display:none" >
	                            <ul>
	                            </ul>
	                         </div>
                         
                          	 <input id="btn_${i.index}" class="btn-expand" type="button" value="展开所有" />
                         </div>
                    </div>
			</c:forEach>                        
                       
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
<script type="text/javascript" src="${basePath}static/js/front/member/record/myfavorite.js"></script>
</html>

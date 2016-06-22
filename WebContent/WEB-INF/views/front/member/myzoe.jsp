<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp" %>
<%@include file="/WEB-INF/views/front/member/memberHeadDeclare.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人中心</title>
</head>

<body>
<div class="PersonalCenter-main-r">
	<div class="personal-data clearfix">
    	<div class="personal-messages">
        	<div class="personal-messages-title">个人信息</div>
            <div class="personal-messages-main clearfix">
            	<div class="personal-messages-main-l">
                	<div class="member-head">
                    	<img src="${basePath}static/css/front/images/member-head.png" width="100" height="100" />
                        <span></span>
                    </div>
                </div>
                <div class="personal-messages-main-r">
                	<div class="personal-name">${frontUser.username}</div>
                    <div class="personal-level clearfix">
                    	<ul>
                        	<li><span class="member-pic"></span>会员</li>
                            <li>
                            	<c:if test="${authInfo.certificationstatus==1}"><span class="authentication-pic"></span>（个人实名认证）</c:if>
                            	<c:if test="${authInfo.certificationstatus==0}">
                            		<span class="unauthentication-pic"></span>
                            		<a href="${basePath}au/writeIdentity.htm" style="text-decoration: underline;">去认证>></a>
                            	</c:if>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="edit">
            	<input class="btn-edit" type="button" value="编辑个人资料" />
                <a href="javascript:void(0);">交易记录&nbsp;&gt;</a>
            </div>
        </div>
        <div class="convenient-service">
        	<div class="convenient-service-title">快捷服务</div>
            <div class="convenient-service-main clearfix">
            	<div class="convenient-service-main-l">
                	<p class="month"><f:formatDate value="${currentDate}" pattern="yyyy年MM月"/></p>
                    <p class="day"><f:formatDate value="${currentDate}" pattern="dd"/></p>
                    <p class="month"><f:formatDate value="${currentDate}" pattern="E"/></p>
                </div>
                <div class="convenient-service-main-r">
                	<a class="a_1" href="${basePath}front/member/record/myFavorites.htm">
                    	<div></div>
                        <p>收藏夹(<span>5</span>)</p>
                    </a>
                    <a class="a_2" href="${basePath}front/member/notice/interaction/interactionNotice.htm">
                    	<div></div>
                        <p>点评(<span>5</span>)</p>
                    </a>
                    <a class="a_3" href="${basePath}front/member/notice/interaction/stationLetter.htm">
                    	<div></div>
                        <p>消息(<span>5</span>)</p>
                    </a>
                    <a class="a_4" href="${basePath}front/member/asset/discount/list.htm">
                    	<div></div>
                        <p>抵扣卡券(<span>5</span>)</p>
                    </a>
                    <a class="a_5" href="${basePath}front/member/asset/bonus/list.htm">
                    	<div></div>
                        <p>红包(<span>5</span>)</p>
                    </a>
                    <a class="a_6" href="javascript:void(0);">
                    	<div></div>
                        <p>房贷计算器</p>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!--my-RedPacket-->
    <div class="my-RedPacket">
    	<div class="my-RedPacket-title">我的红包</div>
        <div class="RedPacket-use clearfix">
        	<ul>
            	<li class="clearfix">
                	<div class="house-pic"><img src="${basePath}static/css/front/images/house-pic.png" width="143" height="98" /></div>
                    <div class="house-detail">
                    	<p class="price">￥5000</p>
                        <p class="unit-price">均价：<span class="col-price">13000元/m²</span></p>
                        <input class="btn-use" type="button" value="立即使用" />
                    </div>
                    <div class="abs-RedPacket"></div>
                </li>
                <li class="clearfix">
                	<div class="house-pic"><img src="${basePath}static/css/front/images/house-pic.png" width="143" height="98" /></div>
                    <div class="house-detail">
                    	<p class="price">￥5000</p>
                        <p class="unit-price">均价：<span class="col-price">13000元/m²</span></p>
                        <input class="btn-use" type="button" value="立即使用" />
                    </div>
                    <div class="abs-RedPacket"></div>
                </li>
                <li class="clearfix" style="border:0;">
                	<div class="house-pic"><img src="${basePath}static/css/front/images/house-pic.png" width="143" height="98" /></div>
                    <div class="house-detail">
                    	<p class="price">￥5000</p>
                        <p class="unit-price">均价：<span class="col-price">13000元/m²</span></p>
                        <input class="btn-use" type="button" value="立即使用" />
                    </div>
                    <div class="abs-RedPacket"></div>
                </li>
            </ul>
        </div>
    </div>
    <div class="see-more"><a href="javascript:void(0);">查看更多</a></div>
    <!--my-favorites-->
    <div class="my-favorites">
    	<div class="my-favorites-title">我的收藏</div>
        <div class="favorites-main clearfix">
        	<ul>
            	<li>
                	<div class="favorites-pic"><img src="${basePath}static/css/front/images/favorites-pic.png" width="305" height="200" /></div>
                    <p class="place">东二环泰禾广场</p>
                    <p class="average-price">均价：<span><em>1600</em>元/平方米</span></p>
                </li>
                <li>
                	<div class="favorites-pic"><img src="${basePath}static/css/front/images/favorites-pic.png" width="305" height="200" /></div>
                    <p class="place">东二环泰禾广场</p>
                    <p class="average-price">均价：<span><em>1600</em>元/平方米</span></p>
                </li>
                <li>
                	<div class="favorites-pic"><img src="${basePath}static/css/front/images/favorites-pic.png" width="305" height="200" /></div>
                    <p class="place">东二环泰禾广场</p>
                    <p class="average-price">均价：<span><em>1600</em>元/平方米</span></p>
                </li>
            </ul>
        </div>
    </div>
    <div class="see-more"><a href="javascript:void(0);">查看更多</a></div>
    <!--my-footprint-->
    <div class="my-favorites">
    	<div class="my-favorites-title">我的足迹</div>
        <div class="favorites-main clearfix">
        	<ul>
            	<li>
                	<div class="footprint-pic"><img src="${basePath}static/css/front/images/footprint-pic.png" width="225" height="150" /></div>
                    <p class="place">东二环泰禾广场</p>
                    <p class="footprint-price"><span class="col-price">12500</span>元平方米</p>
                    <p class="footprint-place">晋安东二环泰禾广场里晋安东二环泰禾广场晋安东二环泰禾广场晋安东二环泰禾广场</p>
                </li>
                <li>
                	<div class="footprint-pic"><img src="${basePath}static/css/front/images/footprint-pic.png" width="225" height="150" /></div>
                    <p class="place">东二环泰禾广场</p>
                    <p class="footprint-price"><span class="col-price">12500</span>元平方米</p>
                    <p class="footprint-place">晋安东二环泰禾广场里晋安东二环泰禾广场晋安东二环泰禾广场晋安东二环泰禾广场</p>
                </li>
                <li>
                	<div class="footprint-pic"><img src="${basePath}static/css/front/images/footprint-pic.png" width="225" height="150" /></div>
                    <p class="place">东二环泰禾广场</p>
                    <p class="footprint-price"><span class="col-price">12500</span>元平方米</p>
                    <p class="footprint-place">晋安东二环泰禾广场里晋安东二环泰禾广场晋安东二环泰禾广场晋安东二环泰禾广场</p>
                </li>
                <li>
                	<div class="footprint-pic"><img src="${basePath}static/css/front/images/footprint-pic.png" width="225" height="150" /></div>
                    <p class="place">东二环泰禾广场</p>
                   <p class="footprint-price"><span class="col-price">12500</span>元平方米</p>
                    <p class="footprint-place">晋安东二环泰禾广场里晋安东二环泰禾广场晋安东二环泰禾广场晋安东二环泰禾广场</p>
                </li>
            </ul>
        </div>
    </div>
    <div class="see-more"><a href="javascript:void(0);">查看更多</a></div>
    <!--guess-->
    <div class="my-favorites">
    	<div class="my-favorites-title">猜你喜欢的楼盘</div>
        <div class="favorites-main clearfix">
        	<ul>
            	<li>
                	<div class="footprint-pic"><img src="${basePath}static/css/front/images/footprint-pic.png" width="225" height="150" /></div>
                    <p class="place">东二环泰禾广场</p>
                    <p class="footprint-price"><span class="col-price">12500</span>元平方米</p>
                    <p class="footprint-place">晋安东二环泰禾广场里晋安东二环泰禾广场晋安东二环泰禾广场晋安东二环泰禾广场</p>
                    <div class="house-type">普通住宅</div>
                </li>
                <li>
                	<div class="footprint-pic"><img src="${basePath}static/css/front/images/footprint-pic.png" width="225" height="150" /></div>
                    <p class="place">东二环泰禾广场</p>
                    <p class="footprint-price"><span class="col-price">12500</span>元平方米</p>
                    <p class="footprint-place">晋安东二环泰禾广场里晋安东二环泰禾广场晋安东二环泰禾广场晋安东二环泰禾广场</p>
                </li>
                <li>
                	<div class="footprint-pic"><img src="${basePath}static/css/front/images/footprint-pic.png" width="225" height="150" /></div>
                    <p class="place">东二环泰禾广场</p>
                    <p class="footprint-price"><span class="col-price">12500</span>元平方米</p>
                    <p class="footprint-place">晋安东二环泰禾广场里晋安东二环泰禾广场晋安东二环泰禾广场晋安东二环泰禾广场</p>
                </li>
                <li>
                	<div class="footprint-pic"><img src="${basePath}static/css/front/images/footprint-pic.png" width="225" height="150" /></div>
                    <p class="place">东二环泰禾广场</p>
                    <p class="footprint-price"><span class="col-price">12500</span>元平方米</p>
                    <p class="footprint-place">晋安东二环泰禾广场里晋安东二环泰禾广场晋安东二环泰禾广场晋安东二环泰禾广场</p>
                </li>
            </ul>
        </div>
    </div>
    <div class="see-more"><a href="javascript:void(0);">查看更多</a></div>
</div>
</body>
</html>

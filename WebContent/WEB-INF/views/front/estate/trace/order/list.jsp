<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<%@include file="/WEB-INF/views/front/estate/estateHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>订单管理</title>
	<script type="text/javascript" src="${basePath}static/js/My97DatePicker/WdatePicker.js"></script>
</head>

<body>
	
        <div class="PersonalCenter-main-r">
            <div class="orderManage">
                <div class="MyFootprint-title"><span class="level-1">交易中心</span>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<span class="level-2">订单管理</span></div>
                <div class="slideTxtBox orderManage-list mt25">
                	<div class="remark clearfix" style="margin-bottom:20px; padding-bottom:10px; border-bottom:0">
                	  <form id="searchForm" action="${basePath}front/estate/order/list.htm">
                	    <!-- 分页必须元素 ，其中pageCount中的list为后台返回列表数据名称-->
						<input type="hidden" name="totalPage" value="${vo.totalPage}" />
						<input type="hidden" name="rows" value="${vo.rows}" />
						<input type="hidden" name="page" value="${vo.page}" />
						<!-- 业务查询条件 -->
						<input type="hidden" name="model.status" value="${vo.model.status}" id="pstatus"/>
						<input type="hidden" name="model.currentstatus" value="${vo.model.currentstatus}" id="pcurrentstatus"/>
						
                        <div class="remark-time" style="float:left;">
                            <label>付款时间：&nbsp;&nbsp;</label>
                            <div class="first-time" style="margin:0">
                                <!-- <div class="clearfix timeBet"></div>    -->
                                <input id="d4311" class="Wdate write-time" type="text" name="payBeginDate" 
                                	    onFocus="WdatePicker({dateFmt:'yyyy-MM-dd',maxDate:'#F{$dp.$D(\'d4312\')||\'2020-10-01\'}'})"/>
                                <span class="cut">&nbsp;&nbsp;—&nbsp;&nbsp;</span>
                                <input id="d4312" class="Wdate write-time" type="text" name="payEndDate"
                                		onFocus="WdatePicker({dateFmt:'yyyy-MM-dd',minDate:'#F{$dp.$D(\'d4311\')}',maxDate:'2020-10-01'})"/> 
                            </div>
                      	</div>
                        <div class="fr">
                        	<input class="text-index mr20" type="text" name="searchKey" value="${vo.searchKey}" placeholder="订单号/下订用户" />
                            <div class="fl"><a class="btn-search" style="margin:0;" href="javascript:">搜索</a></div>
                        </div>
                       </form> 
                    </div>
                    <div class="hd orderManage-list-head">
                        <ul class="orderManage-list-tab clearfix" id="statustabs">
                            <li <c:if test="${empty vo.model.status}">class="active first"</c:if>><a href="javascript:void(0);">全部</a></li>
                            <li <c:if test="${fns:getDictValue('待确认','ORDER_STATUS','') == vo.model.status}">class="active first"</c:if>><a href="javascript:void(0);">待确认房源</a><span class="msg-tips">${unconfirmCount}</span></li>
                            <li <c:if test="${fns:getDictValue('待付款','ORDER_STATUS','') == vo.model.status}">class="active first"</c:if>><a href="javascript:void(0);">待支付定金</a></li>
                            <li <c:if test="${fns:getDictValue('待线下签约+付首付','ORDER_STATUS','') == vo.model.status}">class="active first"</c:if>><a href="javascript:void(0);">待签约</a></li>
                            <li <c:if test="${fns:getDictValue('交易成功','ORDER_STATUS','') == vo.model.status}">class="active first"</c:if>><a href="javascript:void(0);">交易成功</a></li>
                            <li <c:if test="${fns:getDictValue('退订','ORDER_STATUS','') == vo.model.status and vo.model.currentstatus == -1}">class="active first"</c:if>><a href="javascript:void(0);">退订中</a></li>
                            <li <c:if test="${fns:getDictValue('退订','ORDER_STATUS','') == vo.model.status and vo.model.currentstatus != -1}">class="active first"</c:if>><a href="javascript:void(0);">已退订</a></li>
                            <li <c:if test="${fns:getDictValue('交易关闭','ORDER_STATUS','') == vo.model.status}">class="active first"</c:if> style="width:128px;"><a href="javascript:void(0);">交易关闭</a></li>
                        </ul>
                    </div>
                    <div class="bd orderManage-list-content">
                        <div class="orderManage-content-detail clearfix">
                            <div class="orderManage-content-detail-head mt10">
                                <ul class="clearfix">
                                    <li><a href="#" style="margin-right:200px;">房屋信息</a></li>
                                    <li><a href="#" style="margin-right:100px;">原房价</a></li>
                                    <li><a href="#">楼盘优惠</a></li>
                                    <li><a href="#">其他优惠</a></li>
                                    <li><a href="#">购房详情</a></li>
                                    <li><a href="#" style="margin-right:0px">交易情况</a></li>
                                </ul>
                            </div>
                            
                           <c:forEach var="order" items="${list}" varStatus="vs">
                            	<div class="orderMange-content-detail-list">
                                <div>
                                    <div class="reverse-order-detail orderMange-order-detail">
                                        <table class="mt20">
                                            <thead>
                                                <tr>
                                                    <th colspan="6">
                                                    	<span class="order-detail-msg first">订单号：<span>${order.orderno}</span></span>
                                                    	<span class="order-detail-msg">
                                                    		卖方：<span>${order.seller.username}
                                                    				<c:if test="${fns:getDictValue('经纪人','USER_TYPE','') == order.seller.type}">（代理公司）</c:if>
	                    											<c:if test="${fns:getDictValue('房地产商','USER_TYPE','') == order.seller.type}">（房地产商）</c:if>
                                                    			</span>
                                                    	</span>
                                                    	<span class="order-detail-msg">
                                                    		下订用户：<span>${order.user.username}
	                                                    				<img src="${basePath}/static/css/front/images/wkt-pic.png" alt="" />
	                                                    				<img src="${basePath}/static/css/front/images/icon-mobile-phone.png" />
                                                    				</span></span>
                                                    	<span class="order-detail-msg last"><span><f:formatDate value="${order.createtime}" pattern="yyyy-MM-dd HH:mm:ss" /></span></span>
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="merMsgOne">
                                                        <img src="${basePath}/static/css/front/images/order-detail01.png">
                                                        <div class="merMsgOne-msg">
                                                            <span class="merMsgOne-list">${order.source.houseType.name}</span>
                                                            <span class="merMsgOne-list">
                                                            	${order.source.houseType.roomnum}室&nbsp;
			        											${order.source.houseType.hallnum}厅&nbsp;
																${order.source.houseType.toiletnum}卫&nbsp;
																${order.source.houseType.balconynum}阳</span>
                                                            </span>
                                                            <span class="merMsgOne-list">
                                                            	${order.source.housesBuilding.name}&nbsp;
                                                          	 	${order.source.floornum}层&nbsp;
                                                          	 	${order.source.unit}单元
                                                          	 </span>
                                                            <span class="merMsgOne-list">${order.source.buildarea}平米</span>
                                                        </div>
                                                    </td>
                                                    <td class="privi">
                                                         <span class="priviList">原单价：<span>${order.source.unitprice}元/m<sup>2</sup></span></span>
                                                         <span class="priviList">原总价：<span><f:formatNumber value="${order.oriallmoney}" pattern="#,#00.#"/>元</span></span>
                                                    </td>
                                                    <td class="privi">
                                                        <span class="priviList">商业贷款：<span class="red">98折</span></span>
                                                        <span class="priviList">楼盘红包：<span class="red">2,000</span>元</span>
                                                        <span class="priviList">抵扣卡卷：<span class="red">50,000</span>元</span>
                                                    </td>
                                                    <td class="privi">
                                                        <span class="priviList">平台红包：<span class="red">98折</span></span>
                                                        <span class="priviList">代理红包：<span class="red">2,000</span>元</span>
                                                        <span class="priviList">购房补贴：<span class="red">50,000</span>元</span>
                                                    </td>
                                                    <td class="privi">
                                                        <span class="priviList">优惠后总价：<span class="red">2,000,145</span>元</span>
                                                        <span class="priviList">定金：<span class="red f20"><f:formatNumber value="${order.bookmoney}" pattern="#,#00.#"/></span>元</span>
                                                    </td>
                                                    <td class="privi">
                                                        <span class="priviList"><span class="blue">用户申请预定中</span></span>
                                                        <span class="priviList"><span class="red">01</span>时<span class="red">01</span>分<span class="red">01</span>秒</span>
                                                        <span class="priviList"><a href="#" class="btn-order">操作订单</a></span>
                                                    </td>

                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </c:forEach>
                            
                            <!-- 分页控件 居右-->
							<div class="clearfix page-wrap" bindForm="searchForm"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
<script type="text/javascript">
    
    $(function(){
    	// tab切换
    	$('#statustabs a').click(function(){
    		var selStatus = '';
    		var selCurStatus = '';
    		var status = $(this).text();
    		
    		if('全部' == status){
    			selStatus = '';
    		}else if('待确认房源' == status){
    			selStatus = 0;
    		}else if('待支付定金' == status){
    			selStatus = 1;
    		}else if('待签约' == status){
    			selStatus = 2;
    		}else if('交易成功' == status){
    			selStatus = 9;
    		}else if('退订中' == status){
    			selStatus = -1;
    			selCurStatus = -1;
    		}else if('已退订' == status){
    			selStatus = -1;
    			selCurStatus = -13;
    		}else if('交易关闭' == status){
    			selStatus = -9;
    		}
    		
    		$('#pstatus').val(selStatus);
    		$('#pcurrentstatus').val(selCurStatus);
    		$('#searchForm').submit();
    	});
    })     
       
</script>
</html>

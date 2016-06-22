<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp"%>
<%@include file="/WEB-INF/views/front/member/memberHeadDeclare.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>订单评价</title>
	
	<script type="text/javascript">
	
		/**
		*  判断指定的name的input是否为空
		*/
		function isNullByName(name){
			var value = $('#submitForm input[name="'+name+'"]').val();
			return isNull(value);
		}
		
		
		function comment(){
			
			if(isNullByName('pricestar')){
				top.layer.alert('请选择价格评分');
				return;
			}
			if(isNullByName('placestar')){
				top.layer.alert('请选择地段评分');
				return;
			}
			if(isNullByName('trafficstar')){
				top.layer.alert('请选择交通评分');
				return;
			}
			if(isNullByName('conditionstar')){
				top.layer.alert('请选择环境评分');
				return;
			}
			if(isNullByName('servicemannerstar')){
				top.layer.alert('请选择服务态度评分');
				return;
			}
			if(isNullByName('serviceskillstar')){
				top.layer.alert('请选择专业技能评分');
				return;
			}
			
			//去除图片最后一个分号
			var paths = $('#pics').val();
			paths = paths.substring(0,paths.length-1);
			$('#pics').val(paths);
			
			$.ajax({
				type : 'post',
				 url : '${basePath}/front/member/order/submitcomment.htm',
				data : $('#submitForm').serialize(),
				dataType : 'json',
				success : function(result){
					if(result.success){
						window.location.href='${basePath}front/member/order/detail.htm?id=${order.id}';
					}else{
						top.layer.alert(result.msg);
					}
				}
			});
		}
		
		//图片上传成功回调
		function uploadsuc(data){
			var path = data.path;
			var $showImages = $('#showImg').children();
			var imageHtml = '<img width="78px" height="78px" src="${basePath}'+path+'"/>';
			var pics = $('#pics').val();
			
			for(var i = 0; i < 3 ;i++ ){
				var $item = $showImages.eq(i);
				if($item.html() == ''){
					pics += path + ';';
					$('#pics').val(pics);
					$item.html(imageHtml);
					return;
				}
			}
			
			//图片已满三张
			var newPath = '';
			var pathArr = path.split(';');
			for (var i = 0; i < pathArr.length-2; i++) {
				newPath += pathArr[i] + ';';
			}
			newPath += path + ';';
			('#pics').val(newPath);
			$item = $showImages.eq(2).html(imageHtml);
		}
		
		$(function(){
			parent.scroll(0,0);
			
			//前面星星点亮 后面关闭
			$('.startSelect img').click(function(){
				$(this).attr('src','${basePath}static/css/front/images/house-start-red.png');
				var $this = $(this);
				var $prevAllElem = $this.prevAll('img');
				$this.parent().children().eq(0).val(parseInt($prevAllElem.length)+1);
				$this.nextAll('img').attr('src','${basePath}static/css/front/images/house-start.png');
				$prevAllElem.attr('src','${basePath}static/css/front/images/house-start-red.png');
			});
			
			//评论统计数
			$('.limitNumTextarea').keyup(function(){
				var $this = $(this);
				var $showElem = $this.next().children().eq(0);
				var counter = parseInt($this.val().length);
				var total = parseInt($this.attr('maxlength'));
				$showElem.text(total-counter);
			});
			
		});
		
	</script>
	
</head>
<body>
		<div class="PersonalCenter-main-r tradingCenter-main-r">
        	<!-- tradingCenter-reverse -->
        	<div class="tradingCenter-reverse">
        		<div class="MyFootprint-title"><span class="level-1">交易中心</span>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<span class="level-2">我的订单</span>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<span class="level-3">订单评价</span></div>
        		<h3 class="reverseStade clearfix"><span style="float:left">当前订单状态：<em class="blue">等待银行审核</em></span><span class="reverseStade-tip reverseStade-tip-ok"><img src="${basePath}/static/css/front/images/order-complete.png">交易完成</span></h3>
                <!-- reverse-body -->
        		<div class="reverse-body mt10">
        			<!-- reverse-detail -->
        			<div class="reverse-detail">
        				<table>
        					<tr>
        						<td>楼盘名称：<span>${ order.housesInfo.name}</span></td>
        						<td>楼盘地址：<span>${ order.housesInfo.detailaddress}</span></td>
        						<td>开发商：<span>${estate.username }</span></td>
        					</tr>
        					<tr>
        						<td>下订用户：<span class="linkman">${order.user.username}<img src="${basePath}/static/css/front/images/wkt-pic.png" alt=""></span></td>
        						<td>身份证号：<span>${order.buyeridcard }</span></td>
        						<td>联系方式：<span>${order.buyerphone }</span></td>
        					</tr>
        					<tr>
        						<td>置业商家：<span class="linkman">${order.seller.username }<img src="${basePath}/static/css/front/images/wkt-pic.png" alt=""></span></td>
        						<td>联系方式：<span>${order.seller.phone }</span></td>
        						<td>购房补贴：<span>${order.subsidymoney }元</span></td>
        					</tr>
        					<tr>
        						
        						<td>创建时间：<span><f:formatDate value="${order.createtime}" pattern="yyyy-MM-dd HH:mm:ss" /></span></td>
        						<td>付款时间：<span><f:formatDate value="${order.paytime}" pattern="yyyy-MM-dd HH:mm:ss" /></span></td>
        						<td>成交时间：<span><f:formatDate value="${order.finishtime}" pattern="yyyy-MM-dd HH:mm:ss" /></span></td>
        					</tr>

        				</table>
        			</div>
        			<!-- reverse-level -->
        			<div class="reverse-level">
        				<div class="level-state">
        					<ul class="clearfix">
        						<li class="level-state01">已完成</li>
        						<li class="level-state02">进行中</li>
        						<li class="level-state03">失败</li>
        					</ul>
        				</div>
        				<div class="level-stateLevel mt20">
        					<img src="${basePath}/static/css/front/images/reverse-level05.png" alt="">
        				</div>
        			</div>
        			<div class="reverse-order">
        				<div class="reverse-order-detail">
        					<table class="mt20">
        						<thead>
        							<tr>
	        							<th>商品</th>
	        							<th>单价(元/m<sup>2</sup>)</th>
	        							<th>原总价(元)</th>
	        							<th>楼盘优惠</th>
	        							<th>其他优惠</th>
	        							<th>优惠后总价</th>
	        						</tr>
        						</thead>
        						<tbody>
        							<tr>
        								<<td class="merMsgOne">
        									<img src="${basePath}/static/css/front/images/order-detail01.png">
        									<div class="merMsgOne-msg">
        										<span class="merMsgOne-list">${order.source.houseType.name }</span>
        										<span class="merMsgOne-list">
        											${order.source.houseType.roomnum}室&nbsp;
        											${order.source.houseType.hallnum}厅&nbsp;
													${order.source.houseType.toiletnum}卫&nbsp;
													${order.source.houseType.balconynum}阳</span>
        										<span class="merMsgOne-list">
        											${order.source.housesBuilding.name }&nbsp;&nbsp;&nbsp;
        											${order.source.floornum }层&nbsp;&nbsp;&nbsp;01单元</span>
        										<span class="merMsgOne-list">${order.source.buildarea }平米</span>
        									</div>
        								</td>
        								<td>${order.source.unitprice }</td>
        								<td><f:formatNumber value="${order.oriallmoney }" pattern="#,#00.#"/></td>
        								<td class="privi">
        									<span class="priviList">商业贷款：<span>98折</span></span>
        									<span class="priviList">楼盘红包：<span>2,000元</span></span>
        									<span class="priviList">抵扣卡卷：<span>50,000元</span></span>
        								</td>
        								<td class="privi">
        									<span class="priviList">平台红包：<span>2,000元</span></span>
        									<span class="priviList">购房补贴：<span>${order.subsidymoney }元</span></span>
        								</td>
        								<td>
        									<span>2,124,000</span>
        								</td>
        							</tr>
        						</tbody>
        					</table>
        				</div>
        				<div class="reverse-order-total clearfix mt15">
        					<span class="total-money-complete">订金金额：&nbsp;
        					<span class="red"><f:formatNumber value="${order.bookmoney }" pattern="#,#00.#"/></span>&nbsp;元</span>
        				</div>
        			</div>
        		</div>
        		
                <!-- reverse-body -->
                <form id="submitForm">
                <input name="orderid" value="${order.id}" type="hidden"/>
                <div class="reverse-body mt10 houseRecode">
                    <h3>房源评价</h3>
                    <div class="houseRecode-body mt20">
                        <!-- houseRecode-tips -->
                        <div class="houseRecode-tips clearfix">
                           <dl class="clearfix">
                               <dt>价格：</dt>
                               <dd>
                               	  <span class="startSelect">
                               	  	<input type="hidden" name="pricestar" value=""/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               	  </span>
                               </dd>
                               <dt>地段：</dt>
                               <dd>
                                  <span class="startSelect">
                                  	<input type="hidden" name="placestar" value=""/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               	  </span>
                               </dd>
                               <dt>交通：</dt>
                               <dd>
                                   <span class="startSelect">
                                   	<input type="hidden" name="trafficstar" value=""/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               	  </span>
                               </dd>
                               <dt>环境：</dt>
                               <dd>
                                   <span class="startSelect">
                                   	<input type="hidden" name="conditionstar" value=""/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               	  </span>
                               </dd>
                           </dl>
                           
                           <textarea class="houseRecode-write limitNumTextarea" maxlength="500" name="content"></textarea>
                           <span class="houseRecode-write-tips">还可以再输入<span class="red limitnum">500</span>字</span>
                           
                           <!-- uploadImg -->
                           <div class="uploadImg mt10 clearfix" id="showImg">
                               <span class="icon-inputImg fl"></span>
                               <span class="icon-inputImg fl"></span>
                               <span class="icon-inputImg fl"></span>
                               <iframe src="${basePath}/upload/index.htm?extnames=*.jpg;*.jpeg;*.png;*.gif;" frameborder="0"
										scrolling="no" height="20" width="70"></iframe>
								<span>注：最多可传三张,后缀为:jpg,jpeg,png,gif</span>
								<input type="hidden" name="pics" value="" id="pics" />
                           </div>
                        </div>
                    </div>
                    <span class="line-hr"></span>
                    <h3 class="clearfix mt10">服务评价<span class="serveMan">服务方：洪立（经纪人）</span></h3>
                    <div class="houseRecode-body mt20">
                        <!-- houseRecode-tips -->
                        <div class="houseRecode-tips clearfix">
                           <dl class="clearfix">
                               <dt>服务态度：</dt>
                               <dd>
                                   <span class="startSelect">
                                   	<input type="hidden" name="servicemannerstar" value=""/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               	  </span>
                               </dd>
                               <dt>专业技能：</dt>
                               <dd>
                                   <span class="startSelect">
                                   	<input type="hidden" name="serviceskillstar" value=""/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               		<img src="${basePath}static/css/front/images/house-start.png"/>
                               	  </span>
                               </dd>
                           </dl>
                           <textarea class="houseRecode-write limitNumTextarea" maxlength="500" name="appraisecontent"></textarea>
                           <span class="houseRecode-write-tips">
                           		还可以再输入<span class="red limitNum">500</span>字
                           	</span>
                           <a href="javascript:void(0);" onclick="comment();" class="btnUpdateMsg mt20">提交评价</a>
                        </div>
                    </div>
                </div>
                </form>
                
        	</div>
        </div>
    </div>
</div>
<!--split-line-->
<div class="split-line">
	<div class="split-line-w1200"></div>
</div>
</body>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/style.js"></script>
</html>
// 楼盘中心-楼盘详情-删除图片
$(function(){
	$('.btn-mange').click(function(){
		if ($(this).text()=="批量删除") {
            var innerHtml=[];
            innerHtml.push('<p class="lay-tips">确定删除当前选中的图片?(删除后无法恢复)</p>');
            var txt=innerHtml.join();
            indexAgency= window.parent.parent.layer.open({
                type:1,
                area:['500px','300px'],
                shadeClose:true,
                content:txt,
                btn:['确定','取消'],
                title:'删除楼栋',
                yes:function(index){
                    console.log('这里执行提交操作');
                }
            });  
		}
		$(this).text('批量删除');
		$(this).parents('.btn-houseImg').siblings().find('.HouseType-cover-big').css('display','block');
	});
	$('.HouseType-cover-big').mouseover(function(){
		$(this).addClass('HouseType-cover-select');
	}).mouseout(function(){
		if($(this).hasClass('click-on')){
 				return;
 			}
		$(this).removeClass('HouseType-cover-select');
	});
	$('.HouseType-cover-big').click(function(){
		if($(this).hasClass('click-on')){
 				$(this).removeClass('HouseType-cover-select');
 				$(this).removeClass('click-on');
 				return;
 			}
 			$(this).addClass('click-on');
	})
		
})
// 楼盘中心-楼盘详情-删除视频
$(function(){
	$('.btn-mangeVideo').click(function(){
		if ($(this).text()=="批量删除") {
            var innerHtml=[];
            innerHtml.push('<p class="lay-tips">确定删除当前选中的视频?(删除后无法恢复)</p>');
            var txt=innerHtml.join();
            indexAgency= window.parent.parent.layer.open({
                type:1,
                area:['500px','300px'],
                shadeClose:true,
                content:txt,
                btn:['确定','取消'],
                title:'删除楼栋',
                yes:function(index){
                    console.log('这里执行提交操作');
                }
            });  
		}
		$(this).text('批量删除');
		$(this).parents('.btn-houseImg').siblings().find('.HouseType-cover-big-video').css('display','block');
	});
	$('.HouseType-cover-big-video').mouseover(function(){
		$(this).addClass('HouseType-cover-select');
	}).mouseout(function(){
		if($(this).hasClass('click-on')){
 				return;
 			}
		$(this).removeClass('HouseType-cover-select');
	});
	$('.HouseType-cover-big-video').click(function(){
		if($(this).hasClass('click-on')){
 				$(this).removeClass('HouseType-cover-select');
 				$(this).removeClass('click-on');
 				return;
 			}
 			$(this).addClass('click-on');
	})
		
})
// JavaScript Document
//房地厂商-消息中心-违规记录
$(document).ready(function(e) {
    $('.ViolationRecord-main li:last').css('border-bottom','none');
});

//房地厂商-营销中心-代理管理
$(document).ready(function(e) {
    $('.AgentDetail-r li:even').css('margin-right','20px');
	$('.CurrentAgent-box table tr:even').css('background','#f6f6f6');
});

//房地厂商-营销中心-红包管理
$(document).ready(function(e) {
    $('.btn-img').click(function(){
		$(this).toggleClass('switch-off').toggleClass('switch-on');
	});
});

//房地产商-营销中心-当前楼盘代理-详情
$(document).ready(function(e) {
    $('.AgentPopup-main li:even').css('margin-right','17%');
});

//房地产商-营销中心-代理申请-待处理申请
$(document).ready(function(e) {
    $('.requestContent-Tab tr:last td').css('border-bottom','0');
});

//房地产商-楼盘中心-楼盘详情-详细资料-楼盘参数
$(document).ready(function(e) {
	$('.houseParam li:odd').css('width','440px');
    $('.houseSpecial span').click(function(){
		$(this).addClass('active');
	});
});

//房地产商-楼盘中心-楼盘详情-详细资料-详细信息
$(document).ready(function(e) {
	$('.saleMsg li:odd').css('width','455px');
});

//房地产商-楼盘中心-楼盘详情-详细资料-详细信息
$(document).ready(function(e) {
	$('.external li:even').addClass('mr80');
});

// 房地厂商-找代理人-代理人广场
$(function(){
	$('.listTxt-list dd').click(function(){
		$(this).addClass('active').siblings().removeClass('active');
	})
})

$(function(){
	$('.recent-time li').click(function(){
		$(this).addClass('active').siblings().removeClass('active');
	})
})

$(function(){
	$('.read-nav-ul li').click(function(){
		$(this).addClass('active').siblings().removeClass('active');
	})
})

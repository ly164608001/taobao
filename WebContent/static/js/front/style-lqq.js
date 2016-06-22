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







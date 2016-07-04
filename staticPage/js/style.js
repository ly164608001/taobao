$(function(){
	var timeBet=new Array();
	var innerHtml='';
	timeBet.push('<input class="Wdate write-time input-text radius size-M"  type="text"  onFocus="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm:ss&quot;,isShowClear:false,readOnly:true})"/>');
	innerHtml=timeBet.join('');
	$('.timeAlone').append(innerHtml);
})
$(function(){
	var timeBet=new Array();
	var innerHtml='';
	timeBet.push('<input id="d4311" placeholder="请输入开始时间" class="Wdate write-time input-text radius size-M" type="text" onFocus="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm&quot;,maxDate:&quot;#F{$dp.$D(\'d4312\')||\'2020-10-01\'}&quot;})"/> '+
         '<span class="sprite">-</span>'+
         '<input id="d4312" placeholder="请输入结束时间" class="Wdate write-time input-text radius size-M" type="text" onFocus="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm&quot;,minDate:&quot;#F{$dp.$D(\'d4311\')}&quot;,maxDate:&quot;2020-10-01&quot;})"/>' 
         );
	innerHtml=timeBet.join('');
	$('.timeBet').append(innerHtml);
})

	function detail(id){
		window.location.href= basePath + 'front/member/order/detail.htm?id='+id;
	}
	
	function comment(id){
		window.location.href= basePath + 'front/member/order/comment.htm?id='+id;
	}
	
	/**
	 * 去支付
	 */
	function pay(id){
		top.layer.alert('页面还没出现，不要着急');
	}
	
	/**
	 * 重新预订
	 */
	function reApply(id){
		layerNo = top.layer.open({
            type:1,
            content:'确认重新发起预订申请？',
            shadeClose:true,
            title:['信息','color:#fff'],
            btn:['确认','取消'],
            yes:function(){
            	$.ajax({
					type : 'post',
					 url : basePath + 'front/member/order/reApply.htm',
					data : {'id':id},
					dataType : 'json',
					success : function(result){
						top.layer.close(layerNo);
						if(result.success){
							window.location.href= basePath + 'front/member/order/list.htm';
						}else{
							top.layer.alert(result.msg);
						}
					}
				}); 
            }
        });
		
	} 
	
	/**
	 * 待确认前取消订单
	 */
	function cancel(id){
		layerNo = top.layer.open({
            type:1,
            content:'确认取消订单？',
            shadeClose:true,
            title:['信息','color:#fff'],
            btn:['确认','取消'],
            yes:function(){
            	$.ajax({
					type : 'post',
					 url : basePath + 'front/member/order/cancelUnconfirm.htm',
					data : {'id':id},
					dataType : 'json',
					success : function(result){
						top.layer.close(layerNo);
						if(result.success){
							window.location.href= basePath + 'front/member/order/list.htm';
						}else{
							top.layer.alert(result.msg);
						}
					}
				}); 
            }
        });
		
	} 
	
	/**
	 * 待付款时取消订单
	 */
	function cancelUnpay(id){
		layerNo = top.layer.open({
            type:1,
            content:'确认取消订单？',
            shadeClose:true,
            title:['信息','color:#fff'],
            btn:['确认','取消'],
            yes:function(){
            	$.ajax({
					type : 'post',
					 url : basePath + 'front/member/order/cancelUnpay.htm',
					data : {'id':id},
					dataType : 'json',
					success : function(result){
						top.layer.close(layerNo);
						if(result.success){
							window.location.href= basePath + 'front/member/order/list.htm';
						}else{
							top.layer.alert(result.msg);
						}
					}
				}); 
            }
        });
		
	} 
	
	/**
	 * 删除订单
	 */
	function delOrder(id){
		layerNo = top.layer.open({
            type:1,
            content:'确认删除订单？',
            shadeClose:true,
            title:['信息','color:#fff'],
            btn:['确认','取消'],
            yes:function(){
            	$.ajax({
					type : 'post',
					 url : basePath + 'front/member/order/delOrder.htm',
					data : {'id':id},
					dataType : 'json',
					success : function(result){
						top.layer.close(layerNo);
						if(result.success){
							window.location.href= basePath + 'front/member/order/list.htm';
						}else{
							top.layer.alert(result.msg);
						}
					}
				}); 
            }
        });
	}

	/**
	 * 申请延期
	 */
	function applyDelay(id){
		indexDelay = top.layer.open({
			  type: 2,
			  area:['820px','460px'],
			  content: basePath + 'front/member/order/applyDelay.htm?id='+id,
			  title:'申请延期',
			  btn:['提交','取消'],
			  yes:function(index, layero){
				  var body = top.layer.getChildFrame('body', index);
				  var reason = body.find('#applyreason').val();
				  if($.trim(reason) == ''){
					  top.layer.alert('请填写申请理由');
					  return;
				  }
				  
				  $.ajax({
						type : 'post',
						 url : basePath + 'front/member/order/submitDelay.htm',
						data : body.find('#applyDelayForm').serialize(),
						dataType : 'json',
						success : function(result){
							if(result.success){
								top.layer.close(indexDelay);
								top.layer.alert('延期申请已提交');
							}else{
								top.layer.alert(result.msg);
							}
						}
					}); 
			  }
		
			});    
	}
	
	/**
	 * 退订申请
	 */
	function unsubscribe(id){
		window.location.href= basePath + 'front/member/order/unsubscribe.htm?id='+id;
	}
	
	/**
	 * 修改退订申请
	 */
	function modifyUnsub(id){
		window.location.href= basePath + 'front/member/order/updateunsubscribe.htm?id='+id;
	}
	
	/**
	 * 提交退订申请(修改或新增)
	 */
	function submitUnsub(url){
		var money = $('input[name="money"]').val();
		var maxDebookMoney = parseInt($('#maxDebookMoney').text());
		if(isNull(money)){
			top.layer.alert('退款金额不可为空且为数字');
			return;
		}else if(maxDebookMoney < parseInt(money)){
			top.layer.alert('退款金额不可大于定金');
			return;
		}
		
		var description = $('#description').val();
		if(isNull(description)){
			top.layer.alert('请输入退款说明');
			return;
		}
		
		top.layer.confirm('确认提交？', {
			  btn: ['确定','取消']
			}, function(){
				$.ajax({
					type : 'post',
					 url : url,
					data : $('#submitForm').serialize(),
					dataType : 'json',
					success : function(result){
						if(result.success){
							top.layer.alert('操作成功');
						}else{
							top.layer.alert(result.msg);
						}
					}
				});
			    
			}, function(){
		
			});
	}
	
	/**
	 * 取消退订申请
	 */
	function cancelUnsub(id){
		layerNo = top.layer.open({
            type:1,
            content:'确认取消退订申请？',
            shadeClose:true,
            title:['信息','color:#fff'],
            btn:['确认','取消'],
            yes:function(){
            	$.ajax({
					type : 'post',
					 url : basePath + 'front/member/order/cancelUnsubscribe.htm',
					data : {'id':id},
					dataType : 'json',
					success : function(result){
						top.layer.close(layerNo);
						if(result.success){
							window.location.href= basePath + 'front/member/order/list.htm';
						}else{
							top.layer.alert(result.msg);
						}
					}
				}); 
            }
        });
		
	} 
	
	/**
	 * 重新发起退订申请
	 */
	function reUnsub(id){
		layerNo = top.layer.open({
            type:1,
            content:'确认重新发起退订申请？',
            shadeClose:true,
            title:['信息','color:#fff'],
            btn:['确认','取消'],
            yes:function(){
            	$.ajax({
					type : 'post',
					 url : basePath + 'front/member/order/reUnsubscribe.htm',
					data : {'id':id},
					dataType : 'json',
					success : function(result){
						top.layer.close(layerNo);
						if(result.success){
							window.location.href= basePath + 'front/member/order/list.htm';
						}else{
							top.layer.alert(result.msg);
						}
					}
				}); 
            }
        });
		
	} 
	
	/**
	 * 申请平台介入
	 */
	function platformInto(id){
		layerNo = top.layer.open({
            type:1,
            content:'确认申请平台介入？',
            shadeClose:true,
            title:['信息','color:#fff'],
            btn:['确认','取消'],
            yes:function(){
            	$.ajax({
					type : 'post',
					 url : basePath + 'front/member/order/platformInto.htm',
					data : {'id':id},
					dataType : 'json',
					success : function(result){
						if(result.success){
							top.layer.close(layerNo);
							top.layer.alert('已为您申请平台介入');
						}else{
							top.layer.alert(result.msg);
						}
					}
				}); 
            }
        });
	}
	
	/**
	 * 取消平台介入申请
	 */
	function cancelPlatformInto(id){
		layerNo = top.layer.open({
            type:1,
            content:'确认取消平台介入申请？',
            shadeClose:true,
            title:['信息','color:#fff'],
            btn:['确认','取消'],
            yes:function(){
            	$.ajax({
					type : 'post',
					 url : basePath + 'front/member/order/cancelPlatformInto.htm',
					data : {'id':id},
					dataType : 'json',
					success : function(result){
						if(result.success){
							top.layer.close(layerNo);
							top.layer.alert('已取消平台介入申请');
						}else{
							top.layer.alert(result.msg);
						}
					}
				}); 
            }
        });
	}
	
	
	function toTwoDigit(num){
		return (num<10 ? '0'+num : num);
	}
	
	/**
	* 秒数格式化倒计时输出
	* param: 剩余秒数
	*/
	function formatDowntime(remainsecond){
		var daydown = parseInt(remainsecond/(3600*24));
		var hourdown = parseInt((remainsecond - daydown*3600*24)/3600);
		var minusdown = parseInt((remainsecond - daydown*3600*24 - hourdown*3600)/60);
		var second = parseInt((remainsecond - daydown*3600*24 - hourdown*3600 - minusdown*60));
		var resultText = '';
		if(daydown > 0){
			resultText += daydown+' 天 ';
		}
		resultText += toTwoDigit(hourdown)+' 时 '+toTwoDigit(minusdown)+' 分 '+toTwoDigit(second)+' 秒';
		return resultText;
	}

	
	$(function(){
		
		//待确认、待付款、退订待处理倒计时(开始时间和处理时长)
		$('span.countdown').each(function(){
			var thisElem = this;
			var intervalId = window.setInterval(function(){
				var isdown = countdownInterval(thisElem);
				//超时不需要倒计时
				if(!isdown){
					clearInterval(intervalId);
				}
			},1000);
		});
		
	});
	
	//待确认、待付款、退订待处理倒计触发方法(开始时间和处理时长)
	function countdownInterval(obj){
		var $countdownSpan = $(obj);
		var limittime = parseInt($countdownSpan.attr('limittime'));
		var downBegintime = $countdownSpan.attr('downBegintime');
		
		var beginDate = new Date(downBegintime);
		var curDate = new Date();
		var countdown = parseInt(curDate - beginDate);
		var remainsecond = parseInt((limittime-countdown)/1000);

		if(remainsecond <= 0){
			//各自倒计时结束后显示样式
			overtimeShow(obj);
			return false;
			
		}else{
			$countdownSpan.html(formatDowntime(remainsecond)); 
			return true;
		}
	}
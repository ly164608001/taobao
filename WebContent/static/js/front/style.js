$(function(){
	$('.tradingCent-tip ul li').click(function(){
		$(this).addClass('active').siblings().removeClass('active');
	})
})

// 标记选择
$(function(){
	$('.remark .sel-read').on('click',function(){
		$(this).next('.remark-stade').slideToggle();
		return false;
	});
	$('body').on('click',function(){
		if ($('.remark-stade').is(':visible')) {
			$('.remark-stade').hide();
		}
	})
})


// 头部
$(function(){
	// 其他页面头部
	$('.head-menu li').click(function(){
		$(this).addClass('active').siblings().removeClass('active');
	});
	
	$('.PersonalCenter-header-r ul li').hover(function(){
		$(this).find('.userMsg').show();
		$(this).find('.sp-icon').css('background','url(images/sp-icon-top.png) right center no-repeat');
	},function(){
		$(this).find('.userMsg').hide();
		$(this).find('.sp-icon').css('background','url(images/sp-icon.png) right center no-repeat');
	});
	// 首页头部
	$('.webIndex-header-link ul li,.userMsg').hover(function(){
		$(this).find('.userMsg').show();
		$(this).find('.sp-icon').css('background','url(images/sp-icon-top.png) right center no-repeat');
	},function(){
		$(this).find('.userMsg').hide();
		$(this).find('.sp-icon').css('background','url(images/sp-icon.png) right center no-repeat');
	});
});

// 侧边栏
$(function(){
	$('.PersonalCenter-main-l>dl>dd').click(function(){
		$(this).children('dl').stop(true,true).slideToggle().end().siblings().children('dl').slideUp().end().parents('dl').siblings().find('dl').slideUp();
		$(this).find('span').toggleClass('current').end().siblings().find('span').removeClass('current').end().parent('dl').siblings().find('span').removeClass('current');
		return false;
	})
});

// 资产中心-侧边栏
$(function(){
	$('.PersonalCenter-main-l dl dd a').click(function(){
		$(this).parent().addClass('active').siblings().removeClass('active').parents('dl').siblings().find('dd').removeClass('active');
	})
})

// 地图定位
$(function(){
	$('.area-abc span').click(function(){
		$(this).addClass('active').siblings().removeClass('active');
	})
})


//资产中心-我的账户
$(document).ready(function(e) {
    $('.Transactionrecord-box-main li:even').css('width','535px');
	$('.recent-record-nav li:last').css('border-right','0 none');
});

//用户管理-安全设置
$(document).ready(function(e) {
    $('.account-detail dl dd:last').css('border-top','none');
});



// 趋势图
$(function(){
	$('.dataChatT01-time>a').click(function(){
		$(this).addClass('active').siblings().removeClass('active');
		return false;
	})
})

// 房地厂商-找代理人-代理商主页

$(function(){
	$('.slideTxtBox .hd li').mouseover(function(){
		var index= $(this).index();
		$(this).addClass('active').siblings().removeClass('active');
		// $('.areaAgency-tabCotent').eq(index).addClass('active').show().siblings().removeClass('active').hide();
		return false;
	})
})

// 动态记录-我的管理
$(function(){
	$('.select-delect').click(function(){
		$(this).text('批量删除');
		$(this).parents('.type-nav').siblings().find('.HouseType-cover').css('display','block');
	});
	$('.HouseType-cover').mouseover(function(){
		$(this).addClass('HouseType-cover-select01');
	}).mouseout(function(){
		if($(this).hasClass('click-on')){
 				return;
 			}
		$(this).removeClass('HouseType-cover-select01');
	});
	var val=0;
	$('.HouseType-cover').click(function(){
		if($(this).hasClass('click-on')){
 				$(this).removeClass('HouseType-cover-select01');
 				$(this).removeClass('click-on');
 				return;
 			}
 			$(this).addClass('click-on').addClass('HouseType-cover-select01');
	})
		
})
// 动态记录-我的足迹
$(function(){
	$('.HouseType').hover(function(){
		$(this).find('.HouseType-detail').show();
	},function(){
		$(this).find('.HouseType-detail').hide();
	});
})
// 支付页面
$(function(){
	$('.payMtthos-wrap .payMtthos').click(function(){
		$(this).addClass('active').siblings().removeClass('active');
		return false;
	})
})
// placeholder兼容
$(function(){  
 
  //判断浏览器是否支持placeholder属性
  supportPlaceholder='placeholder'in document.createElement('input'),
 
  placeholder=function(input){
 
    var text = input.attr('placeholder'),
    defaultValue = input.defaultValue;
 
    if(!defaultValue){
 
      input.val(text).addClass("phcolor");
    }
 
    input.focus(function(){
 
      if(input.val() == text){
   
        $(this).val("");
      }
    });
 
  
    input.blur(function(){
 
      if(input.val() == ""){
       
        $(this).val(text).addClass("phcolor");
      }
    });
 
    //输入的字符不为灰色
    input.keydown(function(){
  
      $(this).removeClass("phcolor");
    });
  };
 
  //当浏览器不支持placeholder属性时，调用placeholder函数
  if(!supportPlaceholder){
 
    $('input').each(function(){
 
      text = $(this).attr("placeholder");
 
      if($(this).attr("type") == "text"){
 
        placeholder($(this));
      }
    });
  }
 
})

// 日期控件
$(function(){
	var timeBet=new Array();
	var innerHtml='';
	timeBet.push('<input id="d4311" class="Wdate write-time" type="text" onFocus="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm&quot;,maxDate:&quot;#F{$dp.$D(\'d4312\')||\'2020-10-01\'}&quot;})"/> '+
         '<span class="cut">&nbsp;&nbsp;—&nbsp;&nbsp;</span>'+
         '<input id="d4312" class="Wdate write-time" type="text" onFocus="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm&quot;,minDate:&quot;#F{$dp.$D(\'d4311\')}&quot;,maxDate:&quot;2020-10-01&quot;})"/>' 
         );
	innerHtml=timeBet.join('');
	$('.timeBet').append(innerHtml);
})
$(function(){
	var timeBet=new Array();
	var innerHtml='';
	timeBet.push('<input class="Wdate write-time" type="text"  onFocus="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm:ss&quot;,isShowClear:false,readOnly:true})"/>');
	innerHtml=timeBet.join('');
	$('.timeAlone').append(innerHtml);
})
// big

$(function(){
	var timeBet=new Array();
	var innerHtml='';
	timeBet.push('<input class="Wdate write-time timeCapacity" type="text"  onFocus="WdatePicker({dateFmt:&quot;yyyy-MM-dd HH:mm:ss&quot;,isShowClear:false,readOnly:true})"/>');
	innerHtml=timeBet.join('');
	$('.timeAloneBig').append(innerHtml);
})

// iframe高度自适应
function setIframeHeight(iframe) {
	if (iframe) {
		var iframeWin = iframe.contentWindow || iframe.contentDocument.parentWindow;
		if (iframeWin.document.body) {
			iframe.height = iframeWin.document.documentElement.scrollHeight || iframeWin.document.body.scrollHeight;
		}
		window.parent.window.scrollTo(0,0);
	}
};

window.onload = function () {
setIframeHeight(document.getElementById('external-frame'));
};

// JavaScript Document
$(document).ready(function(e) {
    $('.stage-nav li').click(function(){
		$(this).addClass('li-h2').siblings().removeClass('li-h2');
	});
	$('.search-nav-l li').click(function(){
		$(this).addClass('li-h').siblings().removeClass('li-h');
	});
	$('.type-nav-l li').click(function(){
		$(this).addClass('li-h3').siblings().removeClass('li-h3');
	});
	$('.MessageCenter-nav-l li a').click(function(){
		$(this).addClass('li-h5').parent().siblings().find('a').removeClass('li-h5');
	});
	$('.read-nav li').click(function(){
		$(this).addClass('li-h6').siblings().removeClass('li-h6');
	});
});




	


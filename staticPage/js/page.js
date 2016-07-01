$(function(){
	//初始化产生分页
	var pageText=new Array();
	var innerHtml='';
	pageText.push('<div class="page clearfix">');
	pageText.push('<span class="pageTotal">共<span>10</span>页</span>');
	pageText.push('<a href="javascript:void(0);">首页</a>');
	pageText.push('<a href="javascript:void(0);">上一页</a>');
	pageText.push('<a class="page-num" href="javascript:void(0);">1</a>')
	pageText.push('<a  href="javascript:void(0);">2</a>')
	pageText.push('<a  href="javascript:void(0);">3</a>')
	pageText.push('<a  href="javascript:void(0);">4</a>')
	pageText.push('<a href="javascript:void(0);">下一页</a>')
	pageText.push('<a href="javascript:void(0);">尾页</a>')
	pageText.push('</div>');
	innerHtml = pageText.join('');
	$('.page-wrap').append(innerHtml);
	
	//初始化各个分页的当前页
	var $pageDivs = $('.page-wrap');
	$('div.page-wrap').each(function(){
		var $pageDiv = $(this);
		var $curPage = $pageDiv.find('a.page-num');
		var formName = $pageDiv.attr('bindForm');
		var pageNum = $('#' + formName + ' input[name="page"]').val();
		$curPage.text(pageNum);
	});
	
	//分页事件绑定
	$('.page a').click(function(){
		var formName = $(this).parent().parent().attr('bindForm');
		var oprName = $(this).text();
		var formNameStr = '#'+formName;
		var $formObj = $(formNameStr);
		var $pageObj = $(formNameStr + ' input[name="page"]');
		var page = parseInt($pageObj.val());
		var totalPage = parseInt($(formNameStr + ' input[name="totalPage"]').val());
		
		if('首页' == oprName){
			if(page > 1 ){
				$pageObj.val(1);
				$formObj.submit();
			}
		}
		else if('上一页' == oprName){
			if(page > 1 ){
				$pageObj.val(page-1);
				$formObj.submit();
			}
		}
		else if('下一页' == oprName){
			if(page < totalPage){
				$pageObj.val(page+1);
				$formObj.submit();
			}
		}
		else if('尾页' == oprName){
			if(page < totalPage){
				$pageObj.val(totalPage);
				$formObj.submit();
			}
		}
	});
	
})


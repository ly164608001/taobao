var returnValue;
var maskId;
var lrDialogTop = art.dialog.top;
var lrDialog = new Object();
var lrCheckbox = new Object();
var lrRadio = new Object();
var lrSwitch = new Object();

/**
 * 警告
 * 
 * @param {String}
 *            消息内容
 * @param {String}
 *            图标 question、succeed、warning、error
 * @param {Function}
 *            确定按钮回调函数
 */
lrDialog.alert = lrDialogTop.art.dialog.alert;

/**
 * 确认
 * 
 * @param {String}
 *            消息内容
 * @param {Function}
 *            确定按钮回调函数
 * @param {Function}
 *            取消按钮回调函数
 */
lrDialog.confirm = function(content, yes, no) {
	var confirm = lrDialogTop.art.dialog.confirm(content, yes, no);
	confirm.shake && confirm.shake();// 调用抖动接口
};

/**
 * 提问
 * 
 * @param {String}
 *            提问内容
 * @param {Function}
 *            回调函数. 接收参数：输入值
 * @param {String}
 *            默认值
 */
lrDialog.prompt = lrDialogTop.art.dialog.prompt;

/**
 * 短暂提示
 * 
 * @param {String}
 *            提示内容
 * @param {Number}
 *            显示时间 (默认1.5秒)
 */
lrDialog.tips = lrDialogTop.art.dialog.tips;

/**
 * 右下角滑动通知
 * 
 * @param {String}
 *            通知标题
 * @param {String}
 *            通知内容
 * @param {String}
 *            必须指定一个像素宽度值或者百分比，否则浏览器窗口改变可能导致artDialog收缩
 * @param {String}
 *            图标 face-smile、face-sad
 * @param {String}
 *            显示时间 (默认5秒)
 */
lrDialog.notice = function(title, content, width, icon, time) {
	lrDialogTop.art.dialog.notice({
		title : title,
		content : content,
		width : width || 220,
		icon : icon || 'face-smile',
		time : time || 5
	})
};

/**
 * 关闭当前
 * 
 * @param {Object}
 *            返回值
 */
lrDialog.close = function(value) {
	returnValue = value;
	var api = art.dialog.open.api;
	api && api.close();
};

/**
 * 打开窗口
 * 
 * @param {String}
 *            链接地址
 * @param {String}
 *            标题
 * @param {String}
 *            窗口关闭回调函数
 * @param {String}
 *            宽度
 * @param {String}
 *            高度
 * @param {String}
 * @param {String}
 */
lrDialog.open = function(url, title, oncloseFn, width, height, top, left) {
	var options = {
		title : title,
		lock : true,
		opacity : .3,
		ok : false,
		width : width || "850px",
		height : height || "500px",
		left : left,
		top : top,
		fixed : true,
		close : oncloseFn
	};
	lrDialogTop.art.dialog.open(url, options, false);
};

lrDialog.openSmall = function(url, title, oncloseFn) {
	lrDialog.open(url, title, oncloseFn, "700px", "400px");
};
lrDialog.openMini = function(url, title, oncloseFn) {
	lrDialog.open(url, title, oncloseFn, "400px", "440px");
};
lrDialog.openMedium = function(url, title, oncloseFn) {
	lrDialog.open(url, title, oncloseFn, "850px", "500px");
};

lrDialog.openLarge = function(url, title, oncloseFn) {
	lrDialog.open(url, title, oncloseFn, "1000px", "600px");
};

lrDialog.openFullScreen = function(url, title, oncloseFn) {
	lrDialog.open(url, title, oncloseFn, "100%", "100%", "0%", "0%");
};

/**
 * 加载遮罩
 * 
 * @param {String}
 *            显示的文字
 */
lrDialog.mask = function(text) {
	maskId = layer.load(text || "正在加载中...");
}

/**
 * 取消加载遮罩
 */
lrDialog.unmask = function() {
	layer.close(maskId);
}
function openLrMediumDialog(title, url){
	lrDialog.openMedium(url, title, function(window) {
		var returnValue = window.returnValue;
		if (returnValue == undefined) {//无返回值 直接关闭 
			return true;
		} else {//有返回值 处理一些事
			lrDialog.tips(returnValue);
			$('#dg').datagrid('reload');
			return true;
		}
	});
}
function openLrLargeDialog(title, url){
	lrDialog.openLarge(url, title, function(window) {
		var returnValue = window.returnValue;
		if (returnValue == undefined) {//无返回值 直接关闭 
			return true;
		} else {//有返回值 处理一些事
			lrDialog.tips(returnValue);
			$('#dg').datagrid('reload');
			return true;
		}
	});
}
function openLrDialog(title, url){
	lrDialog.openMini(url, title, function(window) {
		var returnValue = window.returnValue;
		if (returnValue == undefined) {//无返回值 直接关闭 
			return true;
		} else {//有返回值 处理一些事
			lrDialog.tips(returnValue);
			$('#dg').datagrid('reload');
			return true;
		}
	});
}
<%@page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
	pageContext.setAttribute("basePath", basePath);
%>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="no-cache, must-revalidate" />
<meta http-equiv="expires" content="0" />
<link href="${basePath}static/css/front/wan.reset.css" rel="stylesheet" type="text/css" />
<link href="${basePath}static/css/front/public.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="${basePath}static/css/front/tradeCenter.css"/>
<script type="text/javascript" src="${basePath}static/js/front/jquery.min.js"></script>
<script type="text/javascript" src="${basePath}static/js/front/style.js"></script>
<script type="text/javascript" src="${basePath}static/js/jquery.validate.js"></script>
<script type="text/javascript" src="${basePath}static/js/common.js"></script>
<script type="text/javascript" src="${basePath}static/js/validator.js"></script>
<script type="text/javascript" src="${basePath}static/js/layer/layer.js"></script>
<script type="text/javascript" src="${basePath}static/js/util.js"></script>
<script type="text/javascript" src="${basePath}static/js/front/common/common.js"></script>
<script type="text/javascript" src="${basePath }static/js/front/common/page.js"></script>
<script src="http://api.map.baidu.com/api?v=2.0&ak=GFMpGp7t94UYIeBWpGzdbpCFPBT2hveF" type="text/javascript"></script>
<script type="text/javascript">
var basePath = "${basePath}";
$(function(){
	//加载新皮肤
    layer.config({extend: ['${basePath}/static/js/layer/skin/layer-extends.css'],
          skin: 'layer-ext-myskin' 
       }); 
    $('#areaLocation').on('click',function(){
        indexAgency=layer.open({
            type:2,
            area:['730px','500px'],
            closeBtn:1,
            shadeClose:true,
            content:['./个人中心-head-地图定位(弹窗).html','no'],
            title:'请选择城市',
            yes:function(index){
                console.log('这里执行提交操作');
            }
        });  
    });
   layer.config({extend: ['${basePath}/static/js/layer/skin/layerSkinExtend.css'] //加载新皮肤
        }); 
});
function myFun(result){
    var cityName = result.name;
    $(".location-address").html(cityName);
}
var myCity = new BMap.LocalCity();
myCity.get(myFun); 
</script>

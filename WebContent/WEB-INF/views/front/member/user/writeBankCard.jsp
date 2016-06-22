<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="/tagDeclare.jsp"%>
<%@include file="/frontHeadDeclare.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人中心-用户管理-认证-填写银行业信息-iframe</title>
<link href="${basePath}/static/css/front/wan.reset.css" rel="stylesheet" type="text/css" />
<link href="${basePath}/static/css/front/public.css" rel="stylesheet" type="text/css" />
<link href="${basePath}/static/css/front/PersonalCenter.css" rel="stylesheet" type="text/css" />
<link href="${basePath}/static/css/front/tradeCenter.css" rel="stylesheet" type="text/css" >
<script type="text/javascript" src="${basePath}static/js/validator.js"></script>
</head>

<body>
 <!--PersonalCenter-main-r-->
        <div class="PersonalCenter-main-r">
            <!--CaptureroomRecord-->
            <div class="CaptureroomRecord">
                <!--CaptureroomRecord-title-->
                <div class="MyFootprint-title"><span class="level-1">个人实名认证</span></div>
                <div class="personStep-img">
                    <img src="${basePath}/static/css/front/images/person-step02.png">
                </div>
                <!--SecuritySetting-main-->
                <div class="CaptureroomRecord-main personalTrust">
                    <div class="base">
                        <div class="PersonalData-title orange">填写银行卡信息</div>
                        <div class="PersonalData-base clearfix">
                            <ul>
                                <li class="clearfix">
                                    <label>银行开户名：</label>
                                    <span class="btn-name">${authInfo.realname }</span>
                                    <input id="id" name="model.id" type="hidden" value="${authInfo.id }" />
                                </li>
                                <li class="clearfix">
                                    <label>开户银行：</label>
                                    <div class="li-r">
                                        <select class="item-select" id="openingbank" name="model.openingbank">
                                            <option>请选择</option>
                                        </select>
                                    </div>
                                </li>
                                <li class="clearfix">
                                    <label>银行账户：</label>
                                    <input class="btn-name" type="text" id="bankno" name="model.bankno" value="${authInfo.bankno }" />
                                </li>
                                <div class="btnStep mt100">
                                    <a href="javascript:void(0)"
										onclick="parent.changeMenu('${basePath}/au/writeIdentity.htm');">上一步</a>
                                    <a href="javascript:void(0)"
										onclick="modifyAuthInfo('${basePath}/au/identification.htm')">下一步</a>
                                </div>  
                                <div class="clear"></div>
                            </ul>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
</body>
<script type="text/javascript" src="${basePath}/static/js/front/jquery.min.js"></script>
<script type="text/javascript" src="${basePath}/static/js/front/style.js"></script>
<script type="text/javascript">
	function modifyAuthInfo(url) {
		//验证填写格式
		if(isNull($('#bankno').val())){
			top.layer.alert('银行卡号不能为空！');
			return;
		}	
		$.ajax({
			url : '${basePath}/au/modifyAuthInfo.htm',
			method : 'post',
			data : 'model.openingbank=' + $('#openingbank').val()
					+ '&model.bankno=' + $('#bankno').val()
					+ '&model.id=' + $('#id').val(),
			dataType : 'json',
			success : function(json) {
				if (json.success) {
					parent.changeMenu(url);
				} else {
					parent.alert("操作超时，请稍候重试");
				}
			}
		});
	}
</script>
</html>

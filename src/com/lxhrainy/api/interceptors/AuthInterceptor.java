package com.lxhrainy.api.interceptors;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.api.util.ApiCacheUtil;
import com.lxhrainy.api.util.ApiJSONUtil;
import com.lxhrainy.api.util.ResultJson;
import com.lxhrainy.core.sys.model.UserInfo;
import com.lxhrainy.core.sys.service.IUserInfoService;
import com.lxhrainy.core.utils.ContextHolderUtils;
import com.lxhrainy.core.utils.oConvertUtils;


/**
 * 权限拦截器
 * 
 * @author  dyno
 * 
 */
public class AuthInterceptor implements HandlerInterceptor {
	 
	private List<String> excludeUrls;
	
	@Autowired
	private IUserInfoService mobileUserService;
	/**
	 * 在controller后拦截
	 */
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object object, Exception exception) throws Exception {
	}

	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object object, ModelAndView modelAndView) throws Exception {
	}

	/**
	 * 在controller前拦截
	 */
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object object) throws Exception {
		String queryString = request.getQueryString();
		//如果该请求不在拦截范围内，直接返回true
		if (oConvertUtils.isNotEmpty(queryString) 
				&& queryString.split("&").length > 0
				&& excludeUrls.contains(queryString.split("&")[0])) {
			return true;
		} else {
			UserInfo loginUser = ApiCacheUtil.getLoginUser();
			if (oConvertUtils.isEmpty(loginUser)) {
				String userid = ContextHolderUtils.getRequest().getHeader("userid");
			    String uuid = ContextHolderUtils.getRequest().getHeader("uuid");
			    UserInfo user = mobileUserService.getById(oConvertUtils.getInt(userid));
			    if(oConvertUtils.isNotEmpty(userid) && oConvertUtils.isNotEmpty(uuid)){
			    	if(oConvertUtils.isNotEmpty(user)){
				    	if(user.getUuid().equals(uuid)){
					    	ApiJSONUtil.writeJsonToResponse(new ResultJson(ResultJson.ERROR_CODE_USER_NOT_LOGIN,"用户未登录"), response);
					    }else{
					    	ApiJSONUtil.writeJsonToResponse(new ResultJson(ResultJson.ERROR_CODE_USER_LOGINED,"用户已在其他地方登录"), response);
							return false;
					    }
				    }else{
				    	ApiJSONUtil.writeJsonToResponse(new ResultJson(ResultJson.ERROR_CODE_USER_NOT_EXIST,"用户不存在"), response);
						return false;
				    }
			    }else{
			    	ApiJSONUtil.writeJsonToResponse(new ResultJson(ResultJson.ERROR_CODE_PARAMETERS,"cookie参数传递错误"), response);
			    	return false;
			    }
			}
		}
		return true;
	}

	public List<String> getExcludeUrls() {
		return excludeUrls;
	}

	public void setExcludeUrls(List<String> excludeUrls) {
		this.excludeUrls = excludeUrls;
	}
	
	

}

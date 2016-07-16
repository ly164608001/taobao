package com.lxhrainy.core.interceptor;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.google.common.collect.Maps;
import com.lxhrainy.core.utils.HttpURLUtil;
import com.lxhrainy.core.utils.oConvertUtils;
import com.lxhrainy.myjz.common.constant.Global;

/**
 * @ClassName: LocationInterceptor 
 * @Description: 地域拦截器
 * @author lxhrainy 
 * @date 2016年5月17日 下午3:35:19
 */
public class LocationInterceptor implements HandlerInterceptor {

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
	@SuppressWarnings("unchecked")
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object object) throws Exception {
		String currentIp = oConvertUtils.getIpAddrByRequest(request);
		//String currentIp = "202.198.16.3";
		Map<String, Object> locationMap = (Map<String, Object>) request.getSession().getAttribute(Global.USER_LOCATION);
		if(oConvertUtils.isEmpty(locationMap)){
			locationMap = Maps.newHashMap();
			String url = "http://api.map.baidu.com/location/ip?ak=GFMpGp7t94UYIeBWpGzdbpCFPBT2hveF&ip="+currentIp;
			String result = HttpURLUtil.readContentFromGet(url);
			JSONObject rj = JSONObject.parseObject(result);
			int status = (int) rj.get("status");
			if(status != 0){
				locationMap.put("region", Global.DEFAULT_LOCATION);
			}else{
				locationMap = new HashMap<String, Object>();
				String address = (String) rj.get("address");
				String[] arr = address.split("\\|");
				locationMap.put("region", arr[2]);
			}
			request.getSession().setAttribute(Global.USER_LOCATION, locationMap);
		}
		return true;
	}

}

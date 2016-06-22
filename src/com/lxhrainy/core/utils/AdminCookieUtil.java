package com.lxhrainy.core.utils;


import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;

import com.lxhrainy.core.utils.DateTime;
import com.lxhrainy.core.utils.web.CookieUtil;

public class AdminCookieUtil {
	/**
	 * 设置登录Cookie
	 * @param response
	 * @param userid
	 */
	public static void setUserId(HttpServletResponse response,int userid)
	{
		
		CookieUtil.set( response,"admin_userid", CookieUtil.encrypt(Long.toString(userid),getkey()));
	}
	/**
	 * 获取key
	 * @return
	 */
	public static String getkey()
	{
		return Long.toString(DateTime.getTimestamp(DateTime.getStringByTimestamp(DateTime.getNowTime(),"yyyy-MM-dd") + " 00:00:00").getTime())+"000";
	}
	/**
	 * 获取登录ID
	 * @return
	 */
	public static int getUserId()
	{
		String result = CookieUtil.get("admin_userid");
		if(StringUtils.isEmpty(result))
		{
			return 0;
		}
		return Integer.parseInt( CookieUtil.decrypt(result,getkey()));
	}
	/**
	 * 去除
	 * @param response
	 */
	public static void remove(HttpServletResponse response)
	{
		CookieUtil.remove(response,"admin_userid");
	}
}

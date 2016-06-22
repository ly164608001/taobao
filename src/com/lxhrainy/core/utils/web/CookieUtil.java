package com.lxhrainy.core.utils.web;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.binary.Base64;

import com.lxhrainy.core.utils.AESUtil;

/**
 * Cookie操作类
 * @author 杨
 */
public class CookieUtil {
	
	public static String encrypt(String source,String password)
	{
		try {
			byte[] bytes = AESUtil.encrpt(source, password);
			return Base64.encodeBase64String(bytes);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "";
	}
	public static String decrypt(String source,String password)
	{
		try {
			return AESUtil.decrypt(Base64.decodeBase64(source), password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "";
	}
	/**
	 * 设置Cookie		
	 * @param response	  	Response对象
	 * @param cookieName	Cookie名称
	 * @param cookieValue	Cookie值
	 */
	public static void set(HttpServletResponse response ,String cookieName,String cookieValue)
	{
		Cookie cookie = new Cookie(cookieName, cookieValue);
		cookie.setPath("/");
		cookie.setMaxAge((int)getTime());
		response.addCookie(cookie);
	}
	/**
	 * 获取Cookie
	 * @param request		Request对象
	 * @param cookieName	Cookie名称
	 * @return
	 */
	public static String get(String cookieName) 
	{
		HttpServletRequest request = HttpServletUtil.getRequest();
		String result = "";
		Cookie cookieList[] = request.getCookies();
		if(cookieList == null)
			return "";
		for (int i = 0; i < cookieList.length; i++) {
			if (cookieList[i].getName().equals(cookieName)) {
				result = cookieList[i].getValue();
				break;
			}
		}
		return result;
	}
	/**
	 * 删除 Cookie
	 * @param request		Request对象
	 * @param cookieName	Cookie名称
	 */
	public static void remove(HttpServletResponse response,String cookieName) 
	{
		Cookie cookie = new Cookie(cookieName, null);
		cookie.setPath("/");
		cookie.setMaxAge(0);
		response.addCookie(cookie);
	}
	
	public static long getTime()
	{
		SimpleDateFormat dfs = new SimpleDateFormat("yyyy-MM-dd");
		Date begintime = new Date();
		SimpleDateFormat dfs2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date endtime = null;
		try {
			endtime = dfs2.parse(dfs.format(begintime)+" 23:59:59");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return (endtime.getTime()-begintime.getTime())/1000;
	}
}

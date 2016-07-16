package com.lxhrainy.core.utils;

import javax.servlet.http.HttpServletRequest;

/**
 * 
 * 此类用于获得服务器的IP地址，端口号，项目名称
 * 
 */

public class HostAddrUtil {

	/**
	 * 获取服务器地址
	 * 
	 * @return
	 */
	public static String getHostAddr() {
		return getHostAddr(ContextHolderUtils.getRequest());
	}

	/**
	 * 获取服务器地址
	 * 
	 * @param request
	 * @return
	 */
	public static String getHostAddr(HttpServletRequest request) {
		StringBuilder addr = new StringBuilder("http://");
		addr.append(request.getServerName());// 服务器IP地址
		addr.append(":" + request.getServerPort());// 端口号
		addr.append(request.getContextPath() + "/");// 项目名
		return addr.toString();
	}

	/**
	 * 获取服务器ip或域名地址
	 * 
	 * @return
	 */
	public static String getHostServerName() {
		return "http://" + ContextHolderUtils.getRequest().getServerName();
	}

	/**
	 * 获取真实的ip地址
	 */
	public static String getIpAddr(HttpServletRequest request) {
		String ip = request.getHeader("x-forwarded-for");
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		return ip;
	}
}

package com.lxhrainy.core.utils;

import java.text.SimpleDateFormat;
import javax.servlet.http.HttpServletRequest;

public class IpUtil {
	static long count;
	
	/**获取来访ip
	 * @param request
	 * @return
	 */
	public static String getIpAddr(HttpServletRequest request) {  
	    String ip = request.getHeader("x-forwarded-for");  
	    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
	        ip = request.getHeader("Proxy-Client-IP");  
	    }  
	    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
	        ip = request.getHeader("WL-Proxy-Client-IP");  
	    }  
	    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
	        ip = request.getRemoteAddr();  
	    } 
	    return ip;  
	}
	
	/**创建新访客id
	 * @param request
	 * @return
	 */
	public static String getNewFuid(long fnum){
		java.util.Date date=new java.util.Date();
		String dt = new String(new SimpleDateFormat("yyyyMMdd").format(date));
		fnum=fnum+1;
		String newString = String.format("%0"+15+"d", fnum);
		String fuid=dt+newString;
		return fuid;
	}

}

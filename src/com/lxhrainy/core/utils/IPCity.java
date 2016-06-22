package com.lxhrainy.core.utils;

import net.sf.json.JSONObject;

public class IPCity {
	
	public static JSONObject getIpAddress(String ip)
	{
		JSONObject result = new JSONObject();
		
		try{
			String url = "http://ip.taobao.com/service/getIpInfo.php?ip="+ip;
			String r = UrlOperation.get(url);
			JSONObject json = JSONObject.fromObject(r);
			result = json.getJSONObject("data");
		}
		catch(Exception ex)
		{
			
		}
		return result;
	}
	
	public static void main(String[] args)
	{
		System.out.println(IPCity.getIpAddress("218.85.66.77"));
		
	}
}

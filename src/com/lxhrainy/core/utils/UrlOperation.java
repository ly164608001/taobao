package com.lxhrainy.core.utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;

/**
 * 地址操作类
 * @author 杨
 *
 */
public class UrlOperation {
	
	/**
	 * get方式访问链接
	 * @param url
	 * @return
	 */
	public static String get(String url)
	{
		return get(url,"utf-8");
	}
	public static String get(String url,String charset)
	{
		String result = "";
		try{
			URL readUrl = new URL(url);
			URLConnection connection = readUrl.openConnection();
			connection.setRequestProperty("accept", "*/*");
			connection.setRequestProperty("connection", "Keep-Alive");
			connection.setRequestProperty("user-agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
			connection.connect();
			
			BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream(),charset));
			String line;
			while ( (line = in.readLine())!=null ) {
				result += line;
			}
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return result;
	}
	/**
	 * post方式访问链接
	 * @param url 网址
	 * @return
	 */
	public static String post(String url)
	{
		return post(url,null);
	}
	
	/**
	 * post方式访问链接
	 * @param url 网址
	 * @param map 参数
	 * @return
	 */
	public static String post(String url ,Map map)
	{
		String param = "";
		if(map !=null)
		{
			for(Object key : map.keySet())
			{
				if(!StringUtils.isEmpty(param))
				{
					param+="&";
				}
				param+= key + "=" + map.get("key");
			}
		}
		return postByString(url, param);
	}
	
	/**
	 * post方式访问链接
	 * @param url 网址
	 * @param param 参数
	 * @return
	 */
	public static String postByString(String url,String param) 
	{
		String result = "";
		
		try{
			URL readUrl = new URL(url);
			URLConnection connection = readUrl.openConnection();
			connection.setRequestProperty("accept", "*/*");
			connection.setRequestProperty("connection", "Keep-Alive");
			connection.setRequestProperty("user-agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
			connection.setDoOutput(true);
			connection.setDoInput(true);
			
			PrintWriter out = new PrintWriter(connection.getOutputStream());
			out.print(param);
			out.flush();
			
			BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
			String line;
			while ( (line = in.readLine())!=null ) {
				result += line;
			}
		}
		catch(Exception ex){
			
		}
		return result;
	}
	public static void main(String[] args)
	{
		JSONObject model = new JSONObject();
		model.put("uid", 1);
		model.put("touid", 2);
		model.put("msg", "34343");
		String content = URLEncoder.encode(model.toString());
		String url = "http://192.168.16.26:8000/pub?cname=im_1&content="+content;
		System.out.println(url);
		System.out.println(UrlOperation.get(url));
		//System.out.println(UrlOperation.postByString("http://192.168.16.26:8000/pub","cname=im_1&content=33"));
		System.out.println("3334433");
	}
	
}

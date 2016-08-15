package com.lxhrainy.api.util;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.MessageFormat;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.methods.ByteArrayRequestEntity;
import org.apache.commons.httpclient.methods.EntityEnclosingMethod;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.httpclient.methods.RequestEntity;

import test.api.ApiHttpTest;

/**
 * http工具类
 * @author 785462 create by 2015-1-12
 *
 */
public final class HttpUtil {
	
	/**
	 * 发送post请求,客户端采用二进制流发送,服务端采用二进制流接收
	 * 
	 * @param json
	 *            入参的json格式的报文
	 * @param url
	 *            http服务器的地址
	 * @return 返回响应信息
	 * @throws UnsupportedEncodingException 
	 */
	public static String postHttpReq(String url, String json) throws UnsupportedEncodingException {
		HttpClient httpClient = new HttpClient();

		byte b[] = json.getBytes("UTF-8");
		//byte b[] = AES.encrypt(json.getBytes("UTF-8")); //json.getBytes("UTF-8");// 把字符串转换为二进制数据
		RequestEntity requestEntity = new ByteArrayRequestEntity(b);
		EntityEnclosingMethod postMethod = new PostMethod();
		postMethod.setRequestEntity(requestEntity);// 设置数据
		postMethod.setPath(url);// 设置服务的url
		postMethod.setRequestHeader("Content-Type", "application/form-data;charset=UTF-8");// 设置请求头编码
		//postMethod.setRequestHeader("Content-Type", "multipart/form-data;charset=UTF-8");// 设置请求头编码
		postMethod.setRequestHeader("userid", ApiHttpTest.USERID);
		postMethod.setRequestHeader("uuid", ApiHttpTest.UUID);
		postMethod.setRequestHeader("app", ApiHttpTest.ID);
		postMethod.setRequestHeader("usertoken", "20c0c93b3731c402e78390ba0ee0e125");

		// 设置连接超时
		httpClient.getHttpConnectionManager().getParams().setConnectionTimeout(20 * 1000);
		// 设置读取超时
		httpClient.getHttpConnectionManager().getParams().setSoTimeout(30 * 1000);
		
		String responseMsg = "";
		int statusCode = 0;
		try {
			statusCode = httpClient.executeMethod(postMethod);// 发送请求
			responseMsg = postMethod.getResponseBodyAsString();// 获取返回值
		} catch (HttpException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			postMethod.releaseConnection();// 释放连接
		}

		if (statusCode != HttpStatus.SC_OK) {
			System.out.println("HTTP服务异常" + statusCode);
		}
		return responseMsg;
	}
	
	/**
	 * 发送post请求
	 * 
	 * @param url 请求URL
	 * @param content post参数 key1=val1&key2=val2&key3=val3
	 * @return
	 * @throws Exception
	 */
	public static String sendByPost(String url,String content) throws Exception {
		StringBuffer result = new StringBuffer();
		URL u = new URL(url);
		HttpURLConnection con = (HttpURLConnection) u.openConnection();

		con.setDoInput(true);
		con.setDoOutput(true);
		con.setAllowUserInteraction(false);
		con.setUseCaches(false);
		con.setRequestMethod("POST");
		con.setRequestProperty("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
		//con.setRequestProperty("Content-Type", "multipart/form-data;charset=UTF-8");
		con.setConnectTimeout(10000);
		con.setReadTimeout(20000);
		OutputStream out = null;
		BufferedReader reader = null;
		String line = null;
		try {
			out = con.getOutputStream();
			out.write(content.getBytes("UTF-8"));
			out.flush();

			reader = new BufferedReader(new InputStreamReader(con.getInputStream(), "UTF-8"));
			while ((line = reader.readLine()) != null)
				result.append(line);
		} finally {
			if (out != null) {
				out.close();
			}
			if (reader != null) {
				reader.close();
			}
		}
		return result.toString();
	}
	
	public static void main(String[] args) throws Exception {
		String url = "http://localhost/api.do?getVerity";
		String content = "{\"phone\":\"188888888\"}";
		String messageFormat ="lexical error at position {0}, encountered {1}, expected {2}";  
		System.out.println(MessageFormat.format(messageFormat, 123, 100, 456));  
		System.out.println(postHttpReq(url, content));
	}
	
	
	/**
	 * 发送get请求
	 * 
	 * @param url 请求URL
	 * @param content get参数 key1=val1&key2=val2&key3=val3
	 * @return
	 * @throws IOException
	 */
	public static String sendByGet(String url, String content)
			throws IOException {
		URL u = new URL(url + "?" + content);
		HttpURLConnection con = (HttpURLConnection) u.openConnection();
		con.setUseCaches(false);
		StringBuffer result = new StringBuffer();
		BufferedReader reader = null;
		String line = null;
		reader = new BufferedReader(new InputStreamReader(con.getInputStream(), "GBK"));
		while (null != (line = reader.readLine())) {
			result.append(line);
		}
		if (reader != null) {
			reader.close();
		}
		return result.toString();
	}
	
}

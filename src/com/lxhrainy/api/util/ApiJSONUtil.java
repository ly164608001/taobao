package com.lxhrainy.api.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.lxhrainy.core.utils.JSONHelper;
import com.lxhrainy.core.utils.StringUtil;

public class ApiJSONUtil {
	
	/**
	 * json 解密
	 * @param json
	 * @param clazz
	 * @return
	 */
	public static <T> T decryptJSON(String data, Class<T> clazz) {
		String str = AES.decrypt(data);
		if (StringUtil.isNotEmpty(str)) {
			return JSONHelper.fromJsonToObject(str,clazz);
		}
		return null;
	}
	/**
	 * json 解密
	 * @param request
	 * @param clazz
	 * @return
	 */
	public static <T> T decryptJSON(HttpServletRequest request, Class<T> clazz) {
		if (StringUtil.isNotEmpty(request)) {
			InputStream in;
			try {
				in = request.getInputStream();
				ByteArrayOutputStream outStream = new ByteArrayOutputStream();  
		        byte[] data = new byte[4096];  
		        int count = -1;  
		        while ((count = in.read(data, 0, 4096)) != -1)  
		            outStream.write(data, 0, count);  
				if (StringUtil.isNotEmpty(outStream)) {
					byte[] result = AES.decrypt(outStream.toByteArray());
					if (StringUtil.isNotEmpty(result) && result.length > 0) {
						String str = new String(result,"UTF-8");
						if (StringUtil.isNotEmpty(str)) {
							return JSONHelper.fromJsonToObject(str,clazz);
						}
					}
				}
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		}	
		return null;
	}
	/**
	 * json 解密
	 * @param inputStream
	 * @param clazz
	 * @return
	 */
	public static <T> T decryptJSON(InputStream inputStream, Class<T> clazz) {
		if (StringUtil.isNotEmpty(inputStream)) {
			try {
				ByteArrayOutputStream outStream = new ByteArrayOutputStream();  
				byte[] data = new byte[4096];  
				int count = -1;  
				while ((count = inputStream.read(data, 0, 4096)) != -1)  
					outStream.write(data, 0, count);  
				if (StringUtil.isNotEmpty(outStream)) {
					byte[] result = outStream.toByteArray();
					//byte[] result = AES.decrypt(outStream.toByteArray());
					if (StringUtil.isNotEmpty(result) && result.length > 0) {
						String str = new String(result,"UTF-8");
						if (StringUtil.isNotEmpty(str)) {
							return JSONHelper.fromJsonToObject(str,clazz);
						}
					}
				}
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		}	
		return null;
	}
	/**
	 * json发送到client
	 * @param object
	 * @param response
	 */
	public static void writeJsonToResponse(Object object,HttpServletResponse response) {
		try {
			PrintWriter pw = response.getWriter();
			response.setContentType("application/json;charset=UTF-8");
			pw.write(JSON.toJSONStringWithDateFormat(object, "yyyy-MM-dd HH:mm:ss"));
			pw.flush();
			pw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}

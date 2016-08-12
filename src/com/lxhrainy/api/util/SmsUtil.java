package com.lxhrainy.api.util;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import com.lxhrainy.core.utils.StringUtil;


/*
功能:		web.cr6868.com HTTP接口 发送短信
说明:		http://web.cr6868.com/asmx/smsservice.aspx?name=登录名&pwd=接口密码&mobile=手机号码&content=内容&sign=签名&stime=发送时间&type=pt&extno=自定义扩展码
*/
public class SmsUtil {
	// 系统配置
	private static final String USERNAME = "myjz";
	private static final String PASSWORD = "B810A95FAB4A7D2D7982EF4F002D";
	private static final String SIGN = "蚂蚁兼职";

	public static boolean send(String msg, String mobile) throws IOException {
		// 创建StringBuffer对象用来操作字符串
		StringBuffer sb = new StringBuffer("http://web.cr6868.com/asmx/smsservice.aspx?");

		// 向StringBuffer追加用户名
		sb.append("name=").append(USERNAME);

		// 向StringBuffer追加密码（登陆网页版，在管理中心--基本资料--接口密码，是28位的）
		sb.append("&pwd=").append(PASSWORD);

		// 向StringBuffer追加手机号码
		sb.append("&mobile=").append(mobile);

		// 向StringBuffer追加消息内容转URL标准码
		sb.append("&content=" + URLEncoder.encode(msg, "UTF-8"));

		// 追加发送时间，可为空，为空为及时发送
		sb.append("&stime=");

		// 加签名
		sb.append("&sign=" + URLEncoder.encode(SIGN, "UTF-8"));

		// type为固定值pt extno为扩展码，必须为数字 可为空
		sb.append("&type=pt&extno=");
		// 创建url对象
		// String temp = new String(sb.toString().getBytes("GBK"),"UTF-8");
		
		URL url = new URL(sb.toString());

		// 打开url连接
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();

		// 设置url请求方式 ‘get’ 或者 ‘post’
		connection.setRequestMethod("POST");

		// 发送
		InputStream is = url.openStream();

		// 转换返回值
		String returnStr = convertStreamToString(is);
		
		// 返回结果为‘0，20140009090990,1，提交成功’ 发送成功 具体见说明文档
		// 返回发送结果
		if (StringUtil.isNotEmpty(returnStr) && returnStr.charAt(0) == '0') {
			return true;
		}
		return false;
	}

	/**
	 * 转换返回值类型为UTF-8格式.
	 * 
	 * @param is
	 * @return
	 */
	public static String convertStreamToString(InputStream is) {
		StringBuilder sb1 = new StringBuilder();
		byte[] bytes = new byte[4096];
		int size = 0;

		try {
			while ((size = is.read(bytes)) > 0) {
				String str = new String(bytes, 0, size, "UTF-8");
				sb1.append(str);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				is.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return sb1.toString();
	}

}

package com.lxhrainy.core.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 判断密码强度
 * 
 */
public class PasswordUtils {
	public static int checkPwdStrength(String password) {
		int result = 0;
		if (password == null || password.length() == 0) {
			return 0;
		}
		int hasLetter = matcherStr(password, "[a-zA-Z]", "").length();
		int hasNumber = matcherStr(password, "[0-9]", "").length();
		int passLen = password.length();
		if (passLen >= 6) {
			/* 如果仅包含数字或仅包含字母或仅包含特殊字符 */
			if ((passLen == hasLetter) || (passLen == hasNumber) || (hasNumber == 0 && hasLetter == 0)) {
				if (passLen < 12) {
					result = 0;
				} else {
					result = 1;
				}
			}
			/* 如果口令大于6位且即包含数字又包含字母 */
			else if (hasLetter > 0 && hasNumber > 0 && (passLen != hasLetter+hasNumber)) {
				if (passLen >= 10) {
					result = 5;
				} else {
					result = 4;
				}
			}
			
			/* 如果既不包含数字又不包含字母 */
//			else if (hasLetter == 0 && hasNumber == 0) {
//				if (passLen >= 7) {
//					result = 5;
//				} else {
//					result = 4;
//				}
//			}
			/* 没特殊字符有数字和字母*/
			else {
				if (passLen >= 10) {
					result = 3;
				} else {
					result = 2;
				}
			}
		} else { // 口令小于6位则显示太短
			result = 0;
		}
		return result;
	}

	public static String matcherStr(String str, String cp, String s) {
		if (str == null || str.equals("")) {
			return "";
		}
		String txt = new String();
		txt = str;
		if (str != null && !str.equals("")) {
			txt = str;
			Pattern p = Pattern.compile(cp, 2); // 参数2表示大小写不区分
			Matcher m = p.matcher(txt);
			StringBuffer sb = new StringBuffer();
			int i = 0;
			boolean result = m.find();
			// 使用循环将句子里所有匹配的内容找出并替换再将内容加到sb里
			while (result) {
				i++;
				sb.append(m.group());
				sb.append(s);
				// 继续查找下一个匹配对象
				result = m.find();
			}
			txt = String.valueOf(sb);
		} else {
			txt = "";
		}
		return txt;
	}
}

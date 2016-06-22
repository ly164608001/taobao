package com.lxhrainy.core.utils;

import java.util.regex.Pattern;

/**
 * 验证类
 * @author 杨
 */
public class VerifyStringUtil {

	/**
	 * 是否为空
	 */
	public static boolean isEmpty(String v)
	{
		if(v==null)
			return true;
		if(v.equals(""))
			return true;
		return false;
	}
	
	/**
	 * 是否为整型
	 */
	public static boolean isNumber(String v)
	{
		if(isEmpty(v))
			return false;
		Pattern p = Pattern.compile("[-]?[0-9]*");
		if(p.matcher(v).matches())
			return true;	
		return false;
	}
	/**
	 * 是否浮点数
	 */
	public static boolean isFloat(String v)
	{
		if(isEmpty(v))
			return false;
		Pattern p = Pattern.compile("[+-]?(\\d*\\.)?\\d+");
		if(p.matcher(v).matches())
			return true;
		return false;
	}
	
	/**
	 * 正则表达式验证
	 * @param v			数值
	 * @param regex     正则表达式
	 * @return
	 */
	public static boolean verString(String v,String regex)
	{
		if(isEmpty(v))
			return false;
		Pattern p = Pattern.compile(regex);
		if(p.matcher(v).matches())
			return true;
		return false;
	}
	
	public static void main(String[] args)
	{}
}

package com.lxhrainy.core.utils;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang.StringUtils;

public class StringUtil {
	/**
	 * 补齐字符串
	 * 
	 * @param str
	 * @param filledChar
	 * @param totalLen
	 * @return
	 */
	public static String fillStringLen(String str, String filledChar, int totalLen) {
		int i = totalLen - str.length();
		StringBuilder sb = new StringBuilder();
		while (i-- > 0) {
			sb.append(filledChar);
		}
		sb.append(str);
		return sb.toString();
	}
	
	/**
	 * 获取数值列表
	 * @param v	数值
	 * @return
	 */
	public static List<Integer> getIntListByString(String v)
	{
		List<Integer> result = new ArrayList<Integer>();
		if( v!=null)
		{
			if(!v.equals(""))
			{
				for(String s : v.split(","))
				{
					result.add(Integer.valueOf(s));
				}
			}
		}
		return result;
	}
	/**
	 * 获取数值列表
	 * @param v  数值
	 * @return
	 */
	public static List<Long> getLongsListByString(String v)
	{
		List<Long> result = new ArrayList<Long>();
		if(v!=null)
		{
			if(!v.equals(""))
			{
				for(String s:v.split(","))
				{
					result.add(Long.parseLong(s));
				}
			}
		}
		return result;
	}
	
	/**
	 * 获取数值列表
	 * @param v
	 * @return
	 */
	public static List<String> getStringListByString(String v)
	{
		List<String> result = new ArrayList<String>();
		if( v!=null)
		{
			if(!v.equals(""))
			{
				for(String s : v.split(","))
				{
					result.add(s);
				}
			}
		}
		return result;
	}
	
	public static String getStringByIntList(List<Integer> v)
	{
		String result = "";
		for(Integer i : v)
		{
			if(!StringUtils.isEmpty(result))
				result+=",";
			result +=i;
		}
		return result;
	}
	public static String getStringByLongList(List<Long> v)
	{
		String result = "";
		for(Long i : v)
		{
			if(!StringUtils.isEmpty(result))
				result+=",";
			result +=i;
		}
		return result;
	}
	public static String getMoneyString(long money)
	{
		return String.format("%.2f", getMoney(money));
	}
	public static float getMoney(long money)
	{
		String s = (money/100)+"."+ (money%100);
		return Float.parseFloat(s);
	}
	public static boolean isEmpty(String v)
	{
		if(v == null)
			return true;
		if(v.equals(""))
			return true;
		return false;
	}
	/**
	 * 判断对象是否为空
	 * 
	 * @param str
	 * @return
	 */
	public static boolean isNotEmpty(Object str) {
		boolean flag = true;
		if (str != null && !str.equals("")) {
			if (str.toString().length() > 0) {
				flag = true;
			}
		} else {
			flag = false;
		}
		return flag;
	}
	/**
	 * 生成6位随机字符串
	 * @param bitLen
	 * @return
	 */
	public static String getRandomString(int bitLen) {
		String base = "abcdefghijklmnopqrstuvwxyz0123456789";     
	    Random random = new Random();     
	    StringBuffer sb = new StringBuffer();     
	    for (int i = 0; i < bitLen; i++) {     
	        int number = random.nextInt(base.length());     
	        sb.append(base.charAt(number));     
	    }     
	    return sb.toString();
	}
	/**
	 * 判断是否是数字字符串
	 * @param str
	 * @return
	 */
	public static boolean isNumeric(String str){ 
		   Pattern pattern = Pattern.compile("[0-9]*"); 
		   Matcher isNum = pattern.matcher(str);
		   if( !isNum.matches() ){
		       return false; 
		   } 
		   return true; 
		}
}

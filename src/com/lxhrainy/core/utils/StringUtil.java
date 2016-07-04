package com.lxhrainy.core.utils;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang.RandomStringUtils;
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
	/**
	 * 格式化数字
	 * 
	 * @param number
	 * @param pattern
	 * @return
	 */
	public static String formatNumber(Double number, String pattern) {
		DecimalFormat df = new DecimalFormat(pattern);
		return df.format(number);
	}
	/**
	 * 随即生成指定位数的含数字验证码字符串
	 * 
	 * @author Peltason
	 * @date 2007-5-9
	 * @param bit
	 *            指定生成验证码位数
	 * @return String
	 */
	public static String numRandom(int bit) {
		if (bit == 0)
			bit = 6; // 默认6位
		String str = "";
		str = "0123456789";// 初始化种子
		return RandomStringUtils.random(bit, str);// 返回6位的字符串
	}
}

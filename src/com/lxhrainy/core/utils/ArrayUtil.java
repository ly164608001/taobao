package com.lxhrainy.core.utils;

import java.util.ArrayList;
import java.util.List;

public class ArrayUtil {
	
	/**
	 * 将字符串转成字符串集合
	 * @param strs
	 * @return
	 */
	public static List<String> getListByString(String strs)
	{
		List<String> result = new ArrayList<String>();
		if(StringUtil.isEmpty(strs))
			return result;
		for(String s:strs.split(","))
		{
			result.add(s);
		}
		return result;
	}
	
	public static List<String> initString(String[] strs)
	{
		List<String> result = new ArrayList<String>();
		for(String s: strs)
		{
			result.add(s);
		}
		return result;
	}
	
}

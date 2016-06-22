package com.lxhrainy.core.utils;

/**
 * 金额相关
 * @author 杨
 */
public class MoneyUtil {
	
	/**
	 * 获取交易费
	 * @param money	金额
	 * @return
	 */
	public static long getFee(long money)
	{
		long result = money * 2 /100;
		return result;
	}
	/**
	 * 获取前台显示价格
	 */
	public static String getMoney(long money){
		String result=(money/100)+"."+((money%100)<10?"0"+(money%100):(money%100));
		return result;
	}
}

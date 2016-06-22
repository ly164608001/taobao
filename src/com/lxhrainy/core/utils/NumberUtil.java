package com.lxhrainy.core.utils;

import java.math.BigDecimal;
import java.text.DecimalFormat;

/**
 * 数字工具类
 * @author 杨
 *
 */
public class NumberUtil {

	/**
	 * 将Long数据转成金额字符串
	 * @param money	金额
	 * @return
	 */
	public static String getMoneyStringByLong(long money)
	{
		BigDecimal result = new BigDecimal(money); 
		result = result.divide(new BigDecimal(100));
		result = result.setScale(2, BigDecimal.ROUND_HALF_UP);
		return result.toString();
	}
	
	public static Double outPutMoneyDoubleByLong(long money){
		return new Double(money)/100;
	}
	
	public static Long InputMoneyLongByDouble(Double money){
		return (long) (money*100);
	}
	
	/*保留double为两位小数*/
	public static String get2Decimal(double d){
		DecimalFormat df = new DecimalFormat("######0.00");
		return df.format(d);
	}
	
}

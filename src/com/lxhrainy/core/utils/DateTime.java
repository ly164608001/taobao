package com.lxhrainy.core.utils;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class DateTime {
	/**获取当前时间**/
	public static Timestamp getNowTime()
	{
		return new Timestamp(System.currentTimeMillis()); 
	}
	/**
	 * 获取当前日期
	 * @return
	 */
	public static Timestamp getNowDate()
	{
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Timestamp now = new Timestamp(System.currentTimeMillis());  
		String data = format1.format(now); 
		 String date1 = "";    
	     try {
			date1 = format1.format(format.parse(data));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	     return Timestamp.valueOf(date1);
	}
	/***
	 * 将字符串转成时间
	 * @param data  字符串
	 * @return
	 */
	public static Timestamp getTimestamp(String data)
	{
		return Timestamp.valueOf(data);
	}
	/**
	 * 将字符串转成时间
	 * @param data		字符串
	 * @param fotmat	格式
	 * @return
	 */
	public static Timestamp getTimestamp(String data,String fotmat)
	{
		 Date date = new Date();  
	     DateFormat sdf = new SimpleDateFormat(fotmat);  
	     try {
			date = sdf.parse(data);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new Timestamp(date.getTime());
	}
	/**
	 * 将时间转成字符串
	 * @param data 时间
	 * @return
	 */
	public static String getStringByTimestamp(Timestamp data)
	{
		return getStringByTimestamp(data,"yyyy-MM-dd HH:mm:ss");
	}
	/**
	 * 将时间转成字符串
	 * @param data		时间
	 * @param format	格式
	 * @return
	 */
	public static String getStringByTimestamp(Timestamp data,String format)
	{
		if(data==null){
			return "";
		}
		SimpleDateFormat df = new SimpleDateFormat(format);//定义格式，不显示毫秒
		return df.format(data);
	}
	/**
	 * 将字符串转换成日期
	 * @param dateString  1990-01-01
	 * @return
	 */
	public static Date getDatebyString(String dateString){
		Date date=null;
		try  
		{  
		    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd ");  
		    date = sdf.parse(dateString);  
		}  
		catch (ParseException e)  
		{  
		    System.out.println(e.getMessage());  
		}  
		return date;
	}
	/**
	 * 获取两个时间的时间差
	 * @param data1
	 * @param data2
	 * @param type 1天 2小时 3分钟
	 * @return
	 */
	public static long getTimeDifference(Timestamp data1,Timestamp data2,int type){
		long a=0;
		if(type==1)
			a=(data2.getTime()-data1.getTime())/86400000;
		if(type==2)
			a=(data2.getTime()-data1.getTime())/3600000;
		if(type==3)
			a=(data2.getTime()-data1.getTime())/60000;
		return a;
	}
	/***
	 * 将字符串转成时间2 只取到天
	 * @param data  字符串
	 * @return
	 */
	public static Timestamp getTimestamp2(String data)
	{
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 String date1 = "";    
	     try {
			date1 = format1.format(format.parse(data));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	     return Timestamp.valueOf(date1);
	} 
	/**
	 * 增加时间
	 * @param day	时间字符串
	 * @param type	增加类型  ： 1：年  2：月 ，3：日，4：时，5：分，6：秒  
	 * @param x		增加时间
	 * @return  返回的是时间
	 */
	public static Timestamp addDate(String time, int type, int x){   
	        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 24小时制  
	        Date date = null;   
	        try {   
	            date = format.parse(time);   
	        } catch (Exception ex) { 
	        	try {
	        		time+=" 00:00:00";
					date = format.parse(time);
				} catch (ParseException e) {
					e.printStackTrace();
				}   
	        }   
	        if (date == null)   
	            return null;   
	        //System.out.println("front:" + format.format(date)); //显示输入的日期  
	        Calendar cal = Calendar.getInstance();   
	        cal.setTime(date);   
	        switch (type) {
			case 1:
				//年
				cal.add(Calendar.YEAR, x);// 24小时制   
				break;
			case 2:
				//月
				cal.add(Calendar.MONTH, x);// 24小时制   
				break;
			case 3:
				//日
				cal.add(Calendar.DAY_OF_MONTH, x);// 24小时制   
				break;
			case 4:
				//时
				cal.add(Calendar.HOUR_OF_DAY, x);// 24小时制   
				break;
			case 5:
				cal.add(Calendar.MINUTE, x);// 24小时制   
				break;
			case 6:
				cal.add(Calendar.SECOND, x);// 24小时制   
				break;
			}
	        
	        date = cal.getTime();   
	        //System.out.println("after:" + format.format(date));  //显示更新后的日期 
	        cal = null;   
	        //return format.format(date);   
	        return getTimestamp(format.format(date),"yyyy-MM-dd HH:mm:ss");
	    } 
	
	/**
	 * 获取本周单周时间(初始-结束)
	 * @return
	 */
	public static Map<String, Object> getWeekTime(String time) {
		Timestamp date = getTimestamp(time,"yyyy-MM-dd");
		Map<String, Object> map = new HashMap<String, Object>();
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		cal.add(Calendar.DAY_OF_MONTH, -1); //解决周日会出现 并到下一周的情况
		cal.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY); // 获取本周一的日期
		map.put("beginTime", df.format(cal.getTime()));
		// 这种输出的是上个星期周日的日期，因为老外那边把周日当成第一天
		cal.set(Calendar.DAY_OF_WEEK, Calendar.SUNDAY);
		// 增加一个星期，才是我们中国人理解的本周日的日期
		cal.add(Calendar.WEEK_OF_YEAR, 1);
		map.put("endTime", df.format(cal.getTime()));
		return map;
	}
	
	/**
	 * 获取本月时间时间(初始,结束,天数)
	 * @return
	 */
	public static Map<String, Object> getMonthTime(String time) {
		Timestamp date = getTimestamp(time,"yyyy-MM-dd");
		Map<String, Object> map = new HashMap<String, Object>();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	    map.put("beginTime", df.format(getMonthStart(date)));
	    map.put("endTime", df.format(getMonthEnd(date)));
	    map.put("timeCount", getMonthCount(date));
	    return map;
    }
 
	/**
	 * 得到月开始的日期
	 * @param date
	 * @return
	 */
	public static Date getMonthStart(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        int index = calendar.get(Calendar.DAY_OF_MONTH);
        calendar.add(Calendar.DATE, (1 - index));
        return calendar.getTime();
	}
	/**
	 * 得到月结束的日期
	 * @param date
	 * @return
	 */
	public static Date getMonthEnd(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.MONTH, 1);
        int index = calendar.get(Calendar.DAY_OF_MONTH);
        calendar.add(Calendar.DATE, (-index));
        return calendar.getTime();
    }
    /**
     * 得到当月的天数
     */
	public static Integer getMonthCount(Date date){
    	 Calendar calendar = Calendar.getInstance();
         calendar.setTime(date);
         int count = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
         return count;
    }
	
}
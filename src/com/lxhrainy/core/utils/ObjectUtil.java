package com.lxhrainy.core.utils;

import java.beans.PropertyDescriptor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.beanutils.PropertyUtilsBean;

/**
 * 对象操作类
 * @author 杨
 */
public class ObjectUtil {
	/**
	 * 获取单个字段的值
	 * @param o			对象
	 * @param fieldname 字段名称
	 * @return
	 */
	public static Object getField(Object o,String fieldname)
	{
		if(o == null)
			return null;
		Field[] fields= o.getClass().getDeclaredFields();
		 
		try{
	         for (Field field : fields) {
	        	 String name = field.getName();
	        	 if(fieldname.toLowerCase().equals(name.toLowerCase()))
	        	 {
	        		 String strGet = "get" + name.substring(0, 1).toUpperCase() + name.substring(1, name.length());  
	                 Method methodGet;
	                 methodGet = o.getClass().getDeclaredMethod(strGet);
	                 Object ov = methodGet.invoke(o); 
	                 return ov;
	        	 }
	         }
		}
	    catch(Exception ex)
	    {
	        System.out.println(ex.toString());
	    }
		return null;
	}

	public static <T> List<Object> listToObjectList(List<T> list)
	{
		List<Object> result = new ArrayList<Object>();
		for(T t : list)
		{
			result.add(t);
		}
		return result;
	}
	
	public static <T> List<T> ListToList(List<Object> list,Class c)
	{
		List<T> result = new ArrayList<T>();
		for(Object t : list)
		{
			result.add((T) ObjectUtil.ObjectToObject(t, c));
		}
		return result;
	}
	
	/**
	 * 将对象转成另个一个对象
	 * @param obj	原始对象
	 * @param c		转换成对象	
	 * @return
	 */
	public static Object ObjectToObject(Object obj,Class c)
	{
		Field[] fields= c.getDeclaredFields();
		Field[] f1s = obj.getClass().getDeclaredFields();
        Object t = null;
        if(fields.length>0)
        {
          try {
              t= c.newInstance();
          } catch (InstantiationException e) {
              e.printStackTrace();
          } catch (IllegalAccessException e) {
              e.printStackTrace();
          }
        }
        
        try{
            boolean flag;
            for (Field field : fields) {
            	for(Field f1 :f1s)
            	{
            		if(field.getName().equals(f1.getName()))
            		{
            			flag=false;
                        if(!field.isAccessible())
                        {
                            field.setAccessible(true);
                            flag=true;
                        }
                        
                        String name = f1.getName();
                        String getname = name;
                        String strGet = "get" + getname.substring(0, 1).toUpperCase() + getname.substring(1, getname.length());  
                        Method methodGet;
                        methodGet = obj.getClass().getDeclaredMethod(strGet);
                        Object o = methodGet.invoke(obj); 
                              
                       field.set(t,o);
                        
                    	if(flag)
                        {
                            field.setAccessible(false);
                        }
            		}
            	}
            }
        }
        catch(Exception ex)
        {
            System.out.println(ex.toString());
        }
        
        return t;
	}
	/**
	 * 实体类转为map类型
	 * @param obj 实体
	 * @return map
	 */
    public static Map<String, Object> beanToMap(Object obj) { 
            Map<String, Object> params = new HashMap<String, Object>(0); 
            try { 
                PropertyUtilsBean propertyUtilsBean = new PropertyUtilsBean(); 
                PropertyDescriptor[] descriptors = propertyUtilsBean.getPropertyDescriptors(obj); 
                for (int i = 0; i < descriptors.length; i++) { 
                    String name = descriptors[i].getName(); 
                    if (!"class".equals(name)) { 
                        params.put(name, propertyUtilsBean.getNestedProperty(obj, name)); 
                    } 
                } 
            } catch (Exception e) { 
                e.printStackTrace(); 
            } 
            return params; 
    }
}

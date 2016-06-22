package com.lxhrainy.core.utils;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

public class DataHandleUtil {
	/**
	 * 添加要处理的字段
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public static boolean addUpdateField(Class c, Map map, String name, Object val) {
		try {
			if (c.getDeclaredField(name)==null)
				return false;
			String fields = (String)map.get("fieldsExp");
			if (fields==null || fields.equals(""))
				fields = "";
			else
				fields += ",";
			fields += name+"=#{"+name+"}";
			map.remove("fieldsExp");
			map.put("fieldsExp", fields);
			map.put(name, val);
		} catch (NoSuchFieldException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	}
	/**
	 * 7.4 补全sql语句
	 * @param user	用户
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public static Map addInsertInfoMap(Map<String,Object> modelTbl, String keyName, String addFields, String addValues)
	{
		String addFieldsStr = "";
		String addValuesStr = "";
		for(String s : modelTbl.keySet())
		{
			if(!(s.toLowerCase().equals(keyName) || s.toLowerCase().equals("tableprefix")))
			{
				if(!addFieldsStr.equals(""))
				{
					addFieldsStr += ",";
					addValuesStr += ",";
				}
				addFieldsStr += s;
				addValuesStr += "#{"+s+"}";
			}
		}
		modelTbl.put(addFields, StringUtils.isEmpty(addFieldsStr)?"":(addFieldsStr));
		modelTbl.put(addValues, StringUtils.isEmpty(addValuesStr)?"":(addValuesStr));
		return modelTbl;
	}
	/**
	 * 将值对象转化为持久层对象
	 * @param poClass
	 * @param formModel
	 * @return
	 */
	public static <T> T convertVOToPO(Class<T> poClass, Object formModel) {
		T model = null;
		try {
			model = poClass.newInstance();
		} catch (InstantiationException e1) {
			e1.printStackTrace();
		} catch (IllegalAccessException e1) {
			e1.printStackTrace();
		}
		Field[] fields = poClass.getDeclaredFields();
		for (Field field : fields) {
			String name = field.getName();
			String nameStr = name;
			if (nameStr.toLowerCase().equals("tableprefix"))
				continue;
			String getMethodStr = "get" + nameStr.substring(0, 1).toUpperCase() + nameStr.substring(1, nameStr.length());
			String setMethodStr = "set" + nameStr.substring(0, 1).toUpperCase() + nameStr.substring(1, nameStr.length());
			Method getMethod = null;
			Method setMethod = null;
			try {
				getMethod = formModel.getClass().getDeclaredMethod(getMethodStr);
				Class type = field.getType();
				setMethod = poClass.getDeclaredMethod(setMethodStr, type);
				if (type.getSimpleName().toLowerCase().equals("timestamp")) {
					setMethod.invoke(model, DateTime.getTimestamp((String) getMethod.invoke(formModel), "yyyy-MM-dd HH:mm:ss"));
				} else {
					setMethod.invoke(model, getMethod.invoke(formModel));
				}
			} catch (NoSuchMethodException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SecurityException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IllegalArgumentException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return model;
	}
}

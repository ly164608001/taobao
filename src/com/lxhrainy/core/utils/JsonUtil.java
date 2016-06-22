package com.lxhrainy.core.utils;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import net.sf.json.JSONObject;

public class JsonUtil {

	//将json中的key转换成小写
	public static JSONObject getSmall(JSONObject json){
		
		Map<String,Object> map = new HashMap<String,Object>();
		Iterator it = json.keys();  
        // 遍历jsonObject数据，添加到Map对象  
        while (it.hasNext())  
        {  
           String key = String.valueOf(it.next());  
           Object value =  json.get(key);  
           map.put(key.toLowerCase(), value);  
        }  
		return JSONObject.fromObject(map);
	} 
	
}

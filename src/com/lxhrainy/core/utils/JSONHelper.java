package com.lxhrainy.core.utils;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

/**
 * JSON和JAVA的POJO的相互转换
 * @author  张代浩
 * JSONHelper.java
 */
public final class JSONHelper {

	/**
	 * json转换为java对象
	 * 
	 * <pre>
	 * return JackJson.fromJsonToObject(this.answersJson, JackJson.class);
	 * </pre>
	 * 
	 * @param <T>
	 *            要转换的对象
	 * @param json
	 *            字符串
	 * @param valueType
	 *            对象的class
	 * @return 返回对象
	 */
	public static <T> T fromJsonToObject(String json, Class<T> valueType) {
		return JSONObject.parseObject(json, valueType);
	}

	// 将String转换成JSON
	public static String string2json(String key, String value) {
		JSONObject object = new JSONObject();
		object.put(key, value);
		return object.toString();
	}


	/***
	 * 将JSON对象数组序列化为JSON文本
	 * 
	 * @param jsonArray
	 * @return
	 */
	public static String toJSONString(JSONArray jsonArray) {
		return jsonArray.toString();
	}

	/***
	 * 将JSON对象序列化为JSON文本
	 * 
	 * @param jsonObject
	 * @return
	 */
	public static String toJSONString(JSONObject jsonObject) {
		return jsonObject.toString();
	}


	/* *//***
	 * 将对象转换为Collection对象
	 * 
	 * @param object
	 * @return
	 */
	/*
	 * public static Collection toCollection(Object object) { JSONArray
	 * jsonArray = JSONArray.fromObject(object);
	 * 
	 * return JSONArray.toCollection(jsonArray); }
	 */
}

package com.lxhrainy.core.utils;
public class PathUtil {

	public static String getRootPath()
	{
		String path = PathUtil.class.getClassLoader().getResource("").toString();
		if(path.contains("file:/"))
		{
			path = path.replace("file:/", "");
		}
		return path;
	}
	
}

package com.lxhrainy.core.utils;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/**
 * 文件操作类
 * @author 杨
 */
public class FileUtil {
	
	/**
	 * 获取随机文件名
	 * @param path		路径
	 * @param extname	扩展名
	 * @return
	 */
	public static String getFileName(String path,String extname)
	{
		String mypath = path;
		if(mypath.lastIndexOf("\\")<0 && mypath.lastIndexOf("/")<0)
		{
			mypath+="/";
		}
		String filename = System.currentTimeMillis()+"";
		String result = mypath+filename+extname;
		File f = new File(result);
		int i = 0;
		while(f.exists())
		{
			filename = System.currentTimeMillis()+""+i;
			result = mypath+filename+extname;
			f = new File(result);
			i++;
		}
		return filename;
	}
	/**
	 * 读取文件
	 * @param path 文件路径
	 * @return
	 */
	public static String readFile(String path)
	{
		String result = new String();
		try {
			File f = new File(path);
			BufferedReader input = new BufferedReader(new FileReader(f));
			String s = new String();
			
			while((s = input.readLine())!=null){
			    result += s+"\n";
			}
			input.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}
	/**
	 * 添加文件内容
	 * @param path	文件路径	
	 * @param v		文件内容
	 */
	public static void writeFile(String path,String v)
	{
		try {
			File f = new File(path);
			if(!f.exists())
			{
				f.createNewFile();
			}
			BufferedWriter output = new BufferedWriter(new FileWriter(f));
			output.write(v);
			output.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	/**
	 * 追加文件内容
	 * @param path	文件路径
	 * @param v		文件内容
	 */
	public static void appendFile(String path, String v)
	{
		try {
			File f = new File(path);
			if(!f.exists())
			{
				f.createNewFile();
			}
			BufferedReader input = new BufferedReader(new FileReader(f));
			String s = new String();
			String result = new String();
			while((s = input.readLine())!=null){
			    result += s+"\n";
			}
			input.close();
			result += v;
			BufferedWriter output = new BufferedWriter(new FileWriter(f));
			output.write(result);
			output.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 删除文件
	 * @param path 文件路径
	 */
	public static void deleteFile(String path)
	{
		File f = new File(path);
		if(f.exists())
		{
			f.delete();
		}
	}
	/**
	 * 获取文件后缀名
	 * @param filename 文件
	 * @return
	 */
	public static String getExtName(String filename)
	{
		if (filename.lastIndexOf(".") != -1 && filename.lastIndexOf(".") != 0) {
			return filename.substring(filename.lastIndexOf(".") + 1);
		} else {
			return "";
		}
	}
	
}

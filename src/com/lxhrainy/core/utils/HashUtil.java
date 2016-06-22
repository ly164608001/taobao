package com.lxhrainy.core.utils;

import java.security.MessageDigest;

/**
 * 哈希算法
 * @author 杨
 *
 */
public class HashUtil {
	
	/**
	 * 哈希字符串
	 * @param v   字符串
	 * @return
	 */
	public static byte[] hashString(String v) throws Exception
	{
		MessageDigest md = MessageDigest.getInstance("SHA-256");
		md.update(v.getBytes("utf-8"));
		byte[] bytes = md.digest();
		return bytes;
	}
	/**
	 * 哈希二进制数组
	 * @param bytes 二进制数组  
	 * @return
	 */
	public static byte[] hashBytes(byte[] bytes) throws Exception
	{
		MessageDigest md = MessageDigest.getInstance("SHA-256");
		md.update(bytes);
		byte[] bytes2 = md.digest();
		return bytes2;
	}
	
	/**
	 * 验证Hash码是否正确
	 * @param v
	 * @param bytes
	 */
	public static boolean verifyHashString(String v,byte[] bytes) throws Exception
	{
		MessageDigest md = MessageDigest.getInstance("SHA-256");
		md.update(v.getBytes("utf-8"));
		byte[] bytes2 = md.digest();
		if(getHashValue(bytes2).equals(getHashValue(bytes))){
			return true;
		}
		return false;
	
	}
	/**
	 * 验证Hash码是否正确
	 * @param sbytes 源二进制流
	 * @param bytes
	 * @return
	 */
	public static boolean verifyHashBytes(byte[] sbytes,byte[] bytes) throws Exception
	{
		MessageDigest md = MessageDigest.getInstance("SHA-256");
		md.update(sbytes);
		byte[] bytes2 = md.digest();
		if(getHashValue(bytes2).equals(getHashValue(bytes))){
			return true;
		}
		return false;
	}
	/**
	 * 获取hash字符串 
	 * @param bytes 字符串
	 * @return
	 */
	public static String getHashValue(byte[] bytes)
	{
		String des = "";
        String tmp = null;
        for (int i = 0; i < bytes.length; i++) {
            tmp = (Integer.toHexString(bytes[i] & 0xFF));
            if (tmp.length() == 1) {
                des += "0";
            }
            des += tmp;
        }
        return des;
	}
	/**
	 * 
	 * @param hexString 
	 * @return
	 */
	public static byte[] toBytes(String hexString)
	{
		 if (hexString == null || "".equals(hexString)){  
	            return null;  
	     }  
	     int len = hexString.length() / 2;  
	     byte[] result = new byte[len];  
	     for (int i = 0; i < len; i++) {  
	            result[i] = Integer.valueOf(hexString.substring(2 * i, 2 * i + 2), 16).byteValue();  
	     }  
	     return result;  
	}
	
}

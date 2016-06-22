package com.lxhrainy.core.utils;
import java.util.Random;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.codec.binary.Base64;

/**
 * AES算法
 * @author 杨
 *
 */
public class AESUtil {
	public static final String VIPARA = "2015050120150601";  
	public static final String bm = "utf-8";
	/**
	 * 加密
	 * @param source	源字符串
	 * @param password  密码
	 * @return
	 */
	public static byte[] encrpt(String source,String password) throws Exception
	{
		 IvParameterSpec zeroIv = new IvParameterSpec(VIPARA.getBytes()); 
		 SecretKeySpec key = new SecretKeySpec(password.getBytes(), "AES");  
		 Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");  
		 cipher.init(Cipher.ENCRYPT_MODE, key, zeroIv);  
		 byte[] result = cipher.doFinal(source.getBytes(bm)); 
         return result;
	}
	/**
	 * 解密
	 * @param content   目标字符串
	 * @param password  密码
	 * @return
	 * @throws Exception
	 */
	public static String decrypt(byte[] content, String password) throws Exception 
	{
		IvParameterSpec zeroIv = new IvParameterSpec(VIPARA.getBytes()); 
		 SecretKeySpec key = new SecretKeySpec(password.getBytes(), "AES");               
         Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");// 创建密码器   
         cipher.init(Cipher.DECRYPT_MODE, key,zeroIv);// 初始化   
         byte[] result = cipher.doFinal(content);  
         return new String(result,bm);
	}
	
	@SuppressWarnings("static-access")
	public static String encrptString(String source,String password) throws Exception
	{
		Base64 base64=new Base64();  
		byte[] result = encrpt(source,password);
		return base64.encodeBase64String(result);
	}
	@SuppressWarnings("static-access")
	public static String decryptString(String source,String password) throws Exception
	{
		Base64 base64=new Base64();  
		byte[] result = base64.decodeBase64(source);
		return decrypt(result,password);
	}
	/**
	 * 将字符串解出
	 * @param v
	 * @param password
	 * @return
	 */
	public static String decryptByString(String v,String password) throws Exception
	{
		return decrypt(HashUtil.toBytes(v),password);
	}
	 /** 
	  * 生成随即密码 
	  * @param pwd_len 生成的密码的总长度 
	  * @return  密码的字符串 
	  */  
	 public static String genRandomNum(int pwd_len){  
		 //35是因为数组是从0开始的，26个字母+10个数字  
		 final int  maxNum = 36;  
		 int i;  //生成的随机数  
		 int count = 0; //生成的密码的长度  
		 char[] str = { 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k',  
		    'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w',  
		    'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' };  
		    
		 StringBuffer pwd = new StringBuffer("");  
		 Random r = new Random();  
		 while(count < pwd_len){  
			 //生成随机数，取绝对值，防止生成负数，    
			 i = Math.abs(r.nextInt(maxNum));  //生成的数最大为36-1  
			 if (i >= 0 && i < str.length) {  
				 pwd.append(str[i]);  
				 count ++;  
			 }  
		 }  
		    
		 return pwd.toString();  
	 }  

}

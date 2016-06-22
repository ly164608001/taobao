package com.lxhrainy.core.utils;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;

public class MD5Util {
	
	 /*** 
     * MD5加码 生成32位md5码 
     */  
    public static String encrpt(String inStr){  

        char[] charArray = inStr.toCharArray();
        byte[] byteArray = new byte[charArray.length];  
        
        for (int i = 0; i < charArray.length; i++)  
            byteArray[i] = (byte) charArray[i];  
        return encrptBytes(byteArray);
  
    } 
    public static String encrptInputStream (InputStream  is)
    {
    	 byte[] in2b = input2byte(is);
    	 return encrptBytes(in2b);
    	 
    }
    public static String encrptBytes(byte[] byteArray)
    {
    	MessageDigest md5 = null;  
        try{  
            md5 = MessageDigest.getInstance("MD5");  
        }catch (Exception e){  
            System.out.println(e.toString());  
            e.printStackTrace();  
            return "";  
        }    
       
        byte[] md5Bytes = md5.digest(byteArray);  
        StringBuffer hexValue = new StringBuffer();  
        for (int i = 0; i < md5Bytes.length; i++){  
            int val = ((int) md5Bytes[i]) & 0xff;  
            if (val < 16)  
                hexValue.append("0");  
            hexValue.append(Integer.toHexString(val));  
        }  
        return hexValue.toString(); 
    }
    
    public static final byte[] input2byte(InputStream inStream)   {  
        ByteArrayOutputStream swapStream = new ByteArrayOutputStream();  
        byte[] buff = new byte[100];  
        int rc = 0;  
        try {
			while ((rc = inStream.read(buff, 0, 100)) > 0) {  
			    swapStream.write(buff, 0, rc);  
			}
		} catch (IOException e) {
			e.printStackTrace();
		}  
        byte[] in2b = swapStream.toByteArray();  
        return in2b;  
    }
	
}

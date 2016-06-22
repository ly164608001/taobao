package com.lxhrainy.core.utils;

import java.io.IOException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashMap;
import java.util.Map;

import javax.crypto.Cipher;

import org.apache.commons.codec.binary.Base64;
import org.bouncycastle.jce.provider.BouncyCastleProvider;


/**
 * RSA算法
 * @author 杨
 */
public class RSAUtil {
	
	/**
	 * 获取RSA公私钥
	 * @return
	 */
	public static Map<String,Key> getKey()
	{
		Map<String,Key> result = new HashMap<String,Key>();
		KeyPairGenerator keyPairGenerator;
		try {
			keyPairGenerator = KeyPairGenerator.getInstance("RSA");
			keyPairGenerator.initialize(1024);
			KeyPair keyPair  = keyPairGenerator.generateKeyPair();
			
			RSAPublicKey publicKey = (RSAPublicKey) keyPair.getPublic();
			RSAPrivateCrtKey privateCrtKey = (RSAPrivateCrtKey) keyPair.getPrivate();
			
			result.put("publickey",publicKey);
			result.put("privatekey", privateCrtKey);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * 获取RSA base64公钥
	 * @return
	 * publickey  公钥
	 * privatekey 私钥
	 */
	public static Map<String,String> getBase64Key()
	{
		Map<String,Key> keyresult = getKey();
		
		Map<String,String> result = new HashMap<String,String>();
		result.put("publickey", encryptBase64Key(keyresult.get("publickey")));
		result.put("privatekey", encryptBase64Key(keyresult.get("privatekey")));
		return result;
	}
	
	/**
	 * 获取64编码key
	 * @param key  钥
	 * @return
	 */
	public static String encryptBase64Key(Key key)
	{
		return (new Base64()).encodeBase64String(key.getEncoded());
	}
	/**
	 * 将64位编码 key 转成 byte
	 * @param keyString	64位编码key
	 * @return
	 */
	public static byte[] decryptBase64Key(String keyString) throws IOException
	{
		return (new Base64()).decodeBase64(keyString);
	}
	/**
	 * 获取公钥
	 * @param result base64位编码公钥
	 * @return
	 */
	public static RSAPublicKey getPublicKey(String keyString) throws Exception
	{
	    X509EncodedKeySpec spec = new X509EncodedKeySpec(decryptBase64Key(keyString));  
	    KeyFactory keyFactory = KeyFactory.getInstance("RSA");  
	    return (RSAPublicKey) keyFactory.generatePublic(spec);  
	   
	}
	/**
	 * 获取私钥
	 * @param keyString
	 * @return
	 */
	public static RSAPrivateKey getPrivateKey(String keyString) throws Exception
	{
		PKCS8EncodedKeySpec spec = new PKCS8EncodedKeySpec(decryptBase64Key(keyString));  
	    KeyFactory keyFactory = KeyFactory.getInstance("RSA");  
	    return (RSAPrivateKey) keyFactory.generatePrivate(spec); 
	}
	
	/**
	 * 用RSA私钥加密报文
	 * @param key 私钥
	 * @param v	     需加密信息
	 * @return
	 */
	public static byte[] encryptBase64PrivateKey(String key,String v) throws Exception
	{
		return encrypt(getPrivateKey(key),v);
	}
	/**
	 * 用Rsa公钥加密报名
	 * @param key  base64位公钥
	 * @param v	       数值
	 * @return
	 */
	public static byte[] encryptByBase64PublicKey(String key,String v) throws Exception
	{
		return encrypt(getPublicKey(key),v);
	}
	/**
	 * 用RSA公钥解密
	 * @param key   公钥
	 * @param bytes 需解密的二进制流
	 * @return
	 */
	public static String decryptByBase64PubliceKey(String key,byte[] bytes) throws Exception
	{
		return decrypt(getPublicKey(key),bytes);
	}
	/**
	 * 用rsa私钥解密报名
	 * @param key	私钥
	 * @param bytes 需解密的二进制流
	 * @return
	 */
	public static String decryptByBase64Privatekey(String key,byte[] bytes) throws Exception
	{
		return decrypt(getPrivateKey(key),bytes);
	}
	
	
	/**
	 * RSA加密
	 * @param key 密钥
	 * @param msg 信息
	 * @return
	 */
	public static byte[] encrypt(Key key,String msg) throws Exception
	{
		return encryptBytes(key,msg.getBytes("utf-8"));
	}
	/**
	 * RSA加密二进制流
	 * @param key	 密钥
	 * @param bytes2 二进制流
	 * @return
	 */
	public static byte[] encryptBytes(Key key,byte[] bytes2) throws Exception
	{
		Cipher cipher = Cipher.getInstance("RSA",  new BouncyCastleProvider());   
        cipher.init(Cipher.ENCRYPT_MODE, key);     
		byte[] bytes =  cipher.doFinal(bytes2); 
		return bytes;
	}
	
	/**
	 * 解密
	 * @param key
	 * @param bytes
	 * @return
	 */
	public static String decrypt(Key key,byte[] bytes) throws Exception
	{
		Cipher cipher = Cipher.getInstance("RSA",  new BouncyCastleProvider()); 
		cipher.init(Cipher.DECRYPT_MODE, key);
        byte[] bytes2 = cipher.doFinal(bytes);
        return new String(bytes2,"utf-8");
	}
	/**
	 * 解密
	 * @param key   钥匙
	 * @param bytes 加密的二进制流
	 * @return
	 */
	public static byte[] decryptBytes(Key key,byte[] bytes) throws Exception
	{
		Cipher cipher = Cipher.getInstance("RSA",  new BouncyCastleProvider()); 
		cipher.init(Cipher.DECRYPT_MODE, key);
        byte[] bytes2 = cipher.doFinal(bytes);
        return bytes2;
	}
}

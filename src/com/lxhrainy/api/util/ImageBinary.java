package com.lxhrainy.api.util;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class ImageBinary {
	
	static BASE64Encoder encoder = new sun.misc.BASE64Encoder();      
    static BASE64Decoder decoder = new sun.misc.BASE64Decoder();

	public static void main(String[] args) {
		//System.out.println(getImageBinary());      
        
        //base64StringToImage(getImageBinary());
	}
	public static String getImageBinary(){      
        File f = new File("C:\\Users\\Administrator\\Desktop\\刷单平台\\IMG_0262.PNG");             
        BufferedImage bi;      
        try {      
            bi = ImageIO.read(f);      
            ByteArrayOutputStream baos = new ByteArrayOutputStream();      
            ImageIO.write(bi, "jpg", baos);      
            byte[] bytes = baos.toByteArray();      
                  
            return encoder.encodeBuffer(bytes).trim();      
        } catch (IOException e) {      
            e.printStackTrace();      
        }      
        return null;      
    }      
          
    public static String base64StringToImage(String base64String, HttpServletRequest request){  
    	String filename = "";
        try {      
            byte[] bytes1 = decoder.decodeBuffer(base64String);      
            ByteArrayInputStream bais = new ByteArrayInputStream(bytes1);      
            BufferedImage bi1 =ImageIO.read(bais);   
            String requestPath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/upload/";
            String savePath = request.getSession().getServletContext().getRealPath("/") + "/upload/";
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
            String ymd = sdf.format(new Date());
    		savePath += ymd + "/";
    		File dirFile = new File(savePath);
    		if (!dirFile.exists()) {
    			dirFile.mkdirs();
    		}
    		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
    		String newFileName = df.format(new Date()) + "_"
					+ new Random().nextInt(1000) + ".png";
            File w2 = new File(savePath + newFileName);//可以是jpg,png,gif格式      
            boolean result = ImageIO.write(bi1, "jpg", w2);//不管输出什么格式图片，此处不需改动      
            if(result){
            	filename = requestPath + ymd + "/" + newFileName;
            }else{
            	filename = "";
            }
        } catch (IOException e) {      
            e.printStackTrace();      
        }  
        return filename;
    }
}

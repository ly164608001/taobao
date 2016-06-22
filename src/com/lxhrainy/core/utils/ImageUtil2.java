package com.lxhrainy.core.utils;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.GraphicsConfiguration;
import java.awt.GraphicsDevice;
import java.awt.GraphicsEnvironment;
import java.awt.HeadlessException;
import java.awt.Image;
import java.awt.Toolkit;
import java.awt.Transparency;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGEncodeParam;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

public class ImageUtil2 {

	/**
	 * 按图片大小保存
	 * @param im
	 * @param newwidth
	 * @param temppath
	 * @return
	 */
	public static boolean saveImageByWidth(BufferedImage im,int newwidth,String temppath)
	{
		int newheight = 0;
		if(im.getWidth() <= newwidth )
		{
			return false;
		}
		else
		{
			newheight = newwidth * im.getHeight() / im.getWidth();
		}
		try{
			BufferedImage result = new BufferedImage(newwidth, newheight, BufferedImage.TYPE_INT_RGB);
			boolean ist = isTransparent(im);
			if(ist && temppath.contains("png"))
			{
				Graphics2D g2d = result.createGraphics();  
				result = g2d.getDeviceConfiguration().createCompatibleImage(newwidth,newheight,  Transparency.TRANSLUCENT);  
		         g2d.dispose();  
		         g2d = result.createGraphics();  
		         Image from = im.getScaledInstance(newwidth, newheight, im.SCALE_AREA_AVERAGING);  
		         g2d.drawImage(from, 0, 0, null);
		         g2d.dispose();  
		         ImageIO.write(result, "png", new File(temppath));
			}
			else
			{
				result.getGraphics().drawImage(im.getScaledInstance(newwidth, newheight, java.awt.Image.SCALE_SMOOTH), 0, 0, null);
				File f3 = new File(temppath);
				FileOutputStream newimage = new FileOutputStream(f3);
		        JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(newimage);
		        JPEGEncodeParam jep = JPEGCodec.getDefaultJPEGEncodeParam(result);
		        /* 压缩质量 */
		        jep.setQuality(0.9f, true);
		        encoder.encode(result, jep);
		       /*近JPEG编码*/
		        newimage.close();
			}
			
			
	        return true;
		}
		catch(Exception ex)
		{
			return false;
		}
	}
	
	/**
	 * 生成缩略图（三种规格）
	 * @param rootpath 根目录
	 * @param path	        路径
	 * @param im       图片
	 */
	public static void saveSmallImage(String rootpath,String path,BufferedImage im)
	{
		saveSmallImage(rootpath,path,im,70,70);
		saveSmallImage(rootpath,path,im,220,220);
		saveSmallImage(rootpath,path,im,398,398);
	}
	/**
	 * 生成缩略图
	 * @param rootpath
	 * @param path
	 * @param im
	 * @param width
	 * @param height
	 */
	public static void saveSmallImage(String rootpath,String path,BufferedImage im,int width,int height)
	{
		try{
			int newwidth = width;
			int newheight = height;
			if(width<100)
			{
				newwidth = 100;
			}
			if(height<100)
			{
				newheight = 100;
			}
			File f = new File(rootpath+path);
			BufferedImage result = new BufferedImage(newwidth, newheight, BufferedImage.TYPE_INT_RGB);
			boolean ist = isTransparent(im);
			if(ist && path.contains("png"))
			{
				Graphics2D g2d = result.createGraphics();  
				result = g2d.getDeviceConfiguration().createCompatibleImage(newwidth,newheight,  Transparency.TRANSLUCENT);  
		         g2d.dispose();  
		         g2d = result.createGraphics();  
		         Image from = im.getScaledInstance(newwidth, newheight, im.SCALE_AREA_AVERAGING);  
		         g2d.drawImage(from, 0, 0, null);
		         g2d.dispose();  
			}
			else
			{
				result.getGraphics().drawImage(im.getScaledInstance(newwidth, newheight, java.awt.Image.SCALE_SMOOTH), 0, 0, null);
			}

			String v = rootpath+path;
	        int l1 = v.lastIndexOf("\\");
	        int l2 = v.lastIndexOf("/");
	        int l = 0;
	        if(l1>l2)
	        {
	        	l = l1;
	        }
	        else
			{
	        	l = l2;
			}
			String nowpath = v.substring(0,l)+File.separator+"thumbnail"+File.separator+width+"_"+height;
			File f2 = new File(nowpath);
			if(!f2.exists())
			{
				f2.mkdirs();
			}
			nowpath += v.substring(l, v.length());
			if(ist && path.contains("png"))
			{
				ImageIO.write(result, "png", new File(nowpath));
			}
			else
			{
				File f3 = new File(nowpath);
				FileOutputStream newimage = new FileOutputStream(f3);
		        JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(newimage);
		        JPEGEncodeParam jep = JPEGCodec.getDefaultJPEGEncodeParam(result);
		        /* 压缩质量 */
		        jep.setQuality(0.9f, true);
		        encoder.encode(result, jep);
		       /*近JPEG编码*/
		        newimage.close();
			}
			
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
	}
	/**
	 * 压缩保存
	 * @param result	
	 * @param nowpath
	 */
	public static void saveImage(BufferedImage result,String nowpath)
	{
		try{
			File f3 = new File(nowpath);
			FileOutputStream newimage = new FileOutputStream(f3);
	        JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(newimage);
	        JPEGEncodeParam jep = JPEGCodec.getDefaultJPEGEncodeParam(result);
	        /* 压缩质量 */
	        jep.setQuality(0.9f, true);
	        encoder.encode(result, jep);
	       /*近JPEG编码*/
	        newimage.close();
		}
		catch(Exception ex)
		{
			
		}
	}
	/**
	 * 将图片强制转成正方形
	 * @param sourceImage	原图
	 * @return
	 */
	public static BufferedImage changeImageToSquare(BufferedImage sourceImage)
	{
		int width = sourceImage.getWidth();
		int height = sourceImage.getHeight();
		if(width==height)
			return sourceImage;
		int targetwh = 0;
		int offsetx = 0;
		int offsety = 0;
		if(width>height)
		{
			targetwh = width;
			offsety = targetwh / 2 - height / 2;
		}
		else
		{
			targetwh = height;
			offsetx = targetwh / 2 - width / 2;
		}
			
		
		BufferedImage result = new BufferedImage(targetwh, targetwh, BufferedImage.TYPE_INT_RGB);
		Graphics2D dg = (Graphics2D) result.getGraphics();
		dg.fillRect(0, 0, targetwh, targetwh);  //将画布载入图片
		dg.drawImage(sourceImage, offsetx, offsety, null);       //将图片画入图片
        dg.dispose();

		return result;
	}
	
	public static BufferedImage toBufferedImage(Image image)
	{
		return toBufferedImage(image,false);
	}
	public static BufferedImage toBufferedImage(Image image,boolean ispng) {  
        if (image instanceof BufferedImage) {  
            return (BufferedImage) image;  
        }  
        image = new ImageIcon(image).getImage();  
        BufferedImage bimage = null;  
        GraphicsEnvironment ge = GraphicsEnvironment  
                .getLocalGraphicsEnvironment();  
        try {  
            int transparency = Transparency.OPAQUE;  
            GraphicsDevice gs = ge.getDefaultScreenDevice();  
            GraphicsConfiguration gc = gs.getDefaultConfiguration();  
            bimage = gc.createCompatibleImage(image.getWidth(null),  
                    image.getHeight(null), transparency);  
        } catch (HeadlessException e) {  
            // The system does not have a screen  
        }  
        if (bimage == null) {  
            // Create a buffered image using the default color model  
            int type = BufferedImage.TYPE_INT_RGB;  
            bimage = new BufferedImage(image.getWidth(null),  
                    image.getHeight(null), type);  
        }  
        // Copy image to buffered image  
        Graphics g = bimage.createGraphics();  
        // Paint the image onto the buffered image  
        if(ispng)
        {
        	g.drawImage(image, 0, 0,Color.WHITE, null);  
        }
        else
        {
        	g.drawImage(image, 0, 0, null);  
        }
        
        g.dispose();  
        return bimage;  
    } 
	
	private static boolean isTransparent(BufferedImage bi)
	{
		 int width = bi.getWidth();
	        int height = bi.getHeight();
	        boolean isTransparent = false;
	        // 扫描图片
	        for (int i = 0; i < height; i++) {
	            for (int j = 0; j < width; j++) {// 行扫描
	                int dip = bi.getRGB(j, i);
	                if (dip >>24 == 0){
	                    isTransparent = true;
	                }
	            }
	        }
	        return isTransparent;
	}
	public static void main(String[] args) throws IOException
	{
		int newWidth = 100;
		int newHeight = 100;
		 java.awt.Image imageTookit = Toolkit.getDefaultToolkit().createImage("d:\\1.png");
		 BufferedImage bufferedImage = ImageIO.read(new File("d:\\1.png"));  
		 System.out.println(ImageUtil2.isTransparent(bufferedImage));
		 BufferedImage newBufferedImage = new BufferedImage(bufferedImage.getWidth(),
				 bufferedImage.getHeight(), BufferedImage.TYPE_INT_RGB);
		 Graphics2D g2d = newBufferedImage.createGraphics();  
		 newBufferedImage = g2d.getDeviceConfiguration().createCompatibleImage(newWidth,newHeight,  Transparency.TRANSLUCENT);  
         g2d.dispose();  
         g2d = newBufferedImage.createGraphics();  
         Image from = bufferedImage.getScaledInstance(newWidth, newHeight, bufferedImage.SCALE_AREA_AVERAGING);  
         g2d.drawImage(from, 0, 0, null);
         g2d.dispose();  

		 //newBufferedImage.createGraphics().drawImage(bufferedImage, 0, 0, Color.WHITE, null);
		 //ImageIO.write(newBufferedImage, "png", new File("d:\\2.png"));
		 System.out.println("Done");

	}
}

package com.lxhrainy.core.sys.web;

import java.awt.Toolkit;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;
import java.sql.Timestamp;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import sun.misc.BASE64Decoder;

import com.alibaba.druid.util.StringUtils;
import com.alibaba.fastjson.JSONObject;
import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGEncodeParam;
import com.sun.image.codec.jpeg.JPEGImageEncoder;
import com.lxhrainy.core.utils.DateTime;
import com.lxhrainy.core.utils.ImageUtil2;
import com.lxhrainy.core.utils.MD5Util;

@Controller
@RequestMapping("upload")
public class UploadController {
	
	/**
	 * 上传按钮
	 * @param cid
	 * @param framename
	 * @param size
	 * @param extnames
	 * @param domainname 域名
	 * @param type 默认大按钮  1 是小按钮 2是中按钮3是大按钮
	 * @param img预留页面 按钮图标路径
	 * @param imgh按钮高
	 * @param imgw按钮宽
	 * @return
	 */
	@RequestMapping("/index.htm")
	public ModelAndView index(String domainname,Integer cid,String framename,Integer size ,String extnames,Integer type,String ttPath)
	{
		return indexOperation(domainname, cid, framename, size, extnames, type, null, null, null,1,ttPath);
	}
	public ModelAndView indexOperation(String domainname,Integer cid,String framename,Integer size ,String extnames,Integer type,String img,Integer imgh,Integer imgw,Integer width,String ttPath)
	{
//		//预留页面 img按钮图标路径
		ModelAndView mv = new ModelAndView();
		mv.addObject("cid",cid);
		mv.addObject("framename", framename);
		mv.addObject("size", size);
		mv.addObject("extnames", StringUtils.isEmpty( extnames)?"*":extnames);
		mv.addObject("domainname",domainname);
		mv.addObject("ttPath",ttPath);
		if(img!=null){
			mv.addObject("img",img);
		}else{
			img="/swfupload/swfupload/xpbutton.png";
			mv.addObject("img",img);
		}
		if(imgh!=null){
			mv.addObject("imgh",imgh);
		}else {
			mv.addObject("imgh",25);
		}
		if(imgw!=null){
			mv.addObject("imgw",imgw);
		}else {
			mv.addObject("imgw",98);
		}
		if(width!=null){
			mv.addObject("width",width);
		}
		type = 1;
		if(type!=null)
		{
			if(type == 1)
			{
				mv.setViewName("core/upload");
			}
		}
		
		return mv;
	}
	/**
	 * 默认上传
	 */
	@RequestMapping("/upload.htm")
	@ResponseBody
	public String upload(HttpServletRequest request,Integer typeid,String framename,Integer width) throws IOException
	{
		return uploadOperation(request,typeid,framename,width,false);
	}
	/**
	 * 结制转正方形上传
	 */
	@RequestMapping("/upload2")
	@ResponseBody
	public String upload2(HttpServletRequest request,Integer typeid,String framename) throws IOException
	{
		return uploadOperation(request,typeid,framename,0,true);
	}
	/**
	 * 正常上传底层接口
	 * @param request
	 * @param typeid		类型
	 * @param framename		frame名称
	 * @param width			结制转换宽度
	 * @param isresetsquare  
	 * @return
	 */
	private String uploadOperation(HttpServletRequest request,Integer typeid,String framename,Integer width,boolean isresetsquare)
	{
		// 变量定义
		String name = "";
		String rootpath = request.getSession().getServletContext().getRealPath("/");
		InputStream is = null;
		// 获取上传的数据流
		try {
			DiskFileItemFactory fac = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(fac);
			upload.setHeaderEncoding("utf-8");
			@SuppressWarnings("unchecked")
			List<FileItem> list = upload.parseRequest(request);
			for (FileItem item : list) {
				if (!item.isFormField()) {
					// 如果名称不存，则自动跳转下一个
					name = item.getName();
					if (name == null || name.trim().equals("")) {
						continue;
					}
					is = item.getInputStream();
				}
			}
		} catch (Exception ex) {

		}

		String extname = this.getExtName(name);

		JSONObject jm = new JSONObject();
		try {
			String path = this.saveFile(123, typeid, name, extname,
					rootpath, is, true, width == null ? 0 : width, isresetsquare);
			jm.put("path", path);
			jm.put("success", true);
			jm.put("ttPath", request.getParameter("ttPath"));
		} catch (Exception ex) {
			ex.printStackTrace();
			jm.put("success", false);
		}
		return jm.toString();
	}
	
	/**
	 * 安卓端上传接口接口
	 * @param request
	 * @param response
	 * @param framename
	 * @param typeid
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("/uploadandroid")
	@ResponseBody
	public String uploadandroid(HttpServletRequest request,String imgStr,String imgFilePath,String framename,Integer typeid,Long userid) throws IOException 
	{
		imgStr=imgStr.replaceAll(" ","+"); // 调整异常数据  
		// 对字节数组字符串进行Base64解码并生成图片  
        byte[] b = new BASE64Decoder().decodeBuffer(imgStr);  
        for (int i = 0; i < b.length; ++i) {  
            if (b[i] < 0) {  
                b[i] += 256;  
            }  
        }  
        String rootpath = request.getSession().getServletContext().getRealPath("/");
        String name = "";
        String extname = this.getExtName(imgFilePath);
        InputStream is = new ByteArrayInputStream(b);
        JSONObject jm = new JSONObject();
		try {
			String path = this.saveFile(userid==null?0:userid, typeid, name, extname,
					rootpath, is, false, 0, false);
//			jm = JSONObject.fromObject(model);
			jm.put("path", path);
			jm.put("framename", framename);
			jm.put("typeid", typeid == null ? 0 : typeid);
			jm.put("name", name);
			jm.put("extname", extname);
			jm.put("success", true);
		} catch (Exception ex) {
			jm.put("success", false);
		}
		
		return jm.toString();
	}
	/**
	 * 安卓端语音上传接口
	 * @param request
	 * @param response
	 * @param framename
	 * @param typeid
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping("/uploadvoice")
	@ResponseBody
	public String uploadvoice(HttpServletRequest request,String voiceStr,String extname) throws IOException 
	{
		voiceStr=voiceStr.replaceAll(" ","+");
		  // 对字节数组字符串进行Base64解码并生成语音  
        // Base64解码  
        byte[] b = new BASE64Decoder().decodeBuffer(voiceStr);  
        for (int i = 0; i < b.length; ++i) {  
            if (b[i] < 0) {  
                // 调整异常数据  
                b[i] += 256;  
            }  
        }  
        //InputStream is = new ByteArrayInputStream(b);
		///初始化
        JSONObject jm = new JSONObject();
        boolean issuc = false;
        //处理路径相关、如目录不存在则创建
        String rootpath = request.getSession().getServletContext().getRealPath("/");
        Timestamp time = new Timestamp(System.currentTimeMillis());
        String sourcepath = "/uploadvoice/" + DateTime.getStringByTimestamp(time, "yyyy") + "/" + DateTime.getStringByTimestamp(time, "MM") +"/" + DateTime.getStringByTimestamp(time, "dd") ;  //上传根目录
        File dir = new File(rootpath + sourcepath);
        if(!dir.exists())
        {
        	dir.mkdirs();
        }
        //将文件上传到服务器
        try{
            String md5value = MD5Util.encrptBytes(b);
            	//文件名
            	String pathtime = DateTime.getStringByTimestamp(new Timestamp(System.currentTimeMillis()), "yyyyMMddHHmmss") ;
            	sourcepath += "/" +pathtime +"_" +md5value + extname;
            	File file = new File(rootpath + sourcepath);
    	         OutputStream out = new FileOutputStream(file); 
                 out.write(b);
                 out.flush();  
                 out.close();
                 jm.put("path", sourcepath);
                 issuc = true;
        }
        catch(Exception ex){
        	jm.put("a", ex.toString());
        	ex.printStackTrace();
        }
     
        jm.put("success", issuc);
		return jm.toString();
	}
	/**
	 * 一键搬迁上传（强制转正方形）
	 * @return
	 */
	@RequestMapping("/upload3")
	@ResponseBody
	public String upload3(HttpServletRequest request,String turl,String framename,Integer typeid,Long userid)
	{
		return uploadOneKeyMove(request, turl, framename, typeid, userid, true, 0);
	}
	
	/**
	 * 一键搬迁上传（不强制转正方形）
	 * @return
	 */
	@RequestMapping("/upload4")
	@ResponseBody
	public String upload4(HttpServletRequest request,String turl,String framename,Integer typeid,Long userid)
	{
		return uploadOneKeyMove(request, turl, framename, typeid, userid, false, 0);
	}
	
	/**
	 * 一键搬迁上传图片
	 * @param request	
	 * @param turl				需要抓取的图片url
	 * @param framename	
	 * @param typeid			分类id
	 * @param userid			用户id
	 * @param isresetsquare  	是否生成正方形
	 * @param width				是否重置大小（宽度）
	 * @return
	 */
	private String uploadOneKeyMove(HttpServletRequest request,String turl,String framename,Integer typeid,Long userid,boolean isresetsquare,Integer width)
	{
		JSONObject jm = new JSONObject();
		try{
			String rootpath = request.getSession().getServletContext().getRealPath("/");
			turl= turl.split("\\?")[0];
			URL url = new URL(turl);
	        URLConnection urlcon = (URLConnection)url.openConnection();
			urlcon.connect();         //获取连接
			InputStream is = urlcon.getInputStream();
			String name = "";
			String extname = this.getExtName(turl);
			String path = this.saveFile(userid==null?0:userid, typeid, name, extname,
					rootpath, is, true, width == null ? 0 : width, isresetsquare);
//			jm = JSONObject.fromObject(model);
			jm.put("path", path);
			jm.put("framename", framename);
			jm.put("typeid", typeid == null ? 0 : typeid);
			jm.put("name", name);
			jm.put("extname", extname);
			jm.put("success", true);
		}
		catch(Exception ex)
		{
			jm.put("path", "");
			jm.put("success", false);
		}
		return jm.toString();
		
	}
	
	
	
	/**
	 * 生成图片
	 * @param userid	           用户id
	 * @param typeid		分类id
	 * @param name			文件名称
	 * @param extname		文件扩展名
	 * @param rootpath		根目录
	 * @param is			文件输入流
	 * @param issavesmall   是否生成缩略图
	 * @param resetwidth    是否重置大小
	 * @param isresetsquare		是否生成正方形
	 */
	public String saveFile(long userid,Integer typeid, String name,String extname,String rootpath,InputStream is,boolean issavesmall,int resetwidth,boolean isresetsquare) throws IOException
	{
		//基本信息获取
		boolean ispng = extname.contains(".png")?true:false;
		byte[] inputbytes = input2byte(is);						//二进制数据流
		String md5value = MD5Util.encrptBytes(inputbytes);		//md5值 
		BufferedImage im = getBufferImage(inputbytes,ispng);  		//二进制图片流
		Timestamp time = new Timestamp(System.currentTimeMillis());
		String path = "/upload/" + DateTime.getStringByTimestamp(time, "yyyy") + "/" + DateTime.getStringByTimestamp(time, "MM") + "/" + DateTime.getStringByTimestamp(time, "dd") ; 
		File dir = new File(rootpath + path);
        if(!dir.exists())
        {
        	dir.mkdirs();
        }
        
		
		//是否要重置图片大小
		if(resetwidth>0)
		{
			String temppath = this.getTempPath(rootpath, md5value,extname);
			if(ImageUtil2.saveImageByWidth(im, resetwidth, temppath))  //如果重置大小成功
			{
				File f = new File(temppath);
				FileInputStream fis=new FileInputStream(f);
				inputbytes = input2byte(fis);
				md5value =  MD5Util.encrptBytes(inputbytes);	
				im = getBufferImage(inputbytes,ispng);  					
				f.delete();
			}
		}
		
		//是否强制转成正方形
		if(isresetsquare)
		{
			if(im.getWidth() != im.getHeight())
        	{
				im = ImageUtil2.changeImageToSquare(im);
				String temppath = this.getTempPath(rootpath, md5value,extname);
				
				File f3 = new File(temppath);
				FileOutputStream newimage = new FileOutputStream(f3);
		        JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(newimage);
		        JPEGEncodeParam jep = JPEGCodec.getDefaultJPEGEncodeParam(im);
		        /* 压缩质量 */
		        jep.setQuality(0.9f, true);
		        encoder.encode(im, jep);
		       /*近JPEG编码*/
		        newimage.close();
				ImageIO.write(im, extname, new File(temppath));
				File f = new File(temppath);
				FileInputStream fis=new FileInputStream(f);
				inputbytes = input2byte(fis);
				md5value =  MD5Util.encrptBytes(inputbytes);	
				im = getBufferImage(inputbytes,ispng);  
				f.delete();
        	}
		}
		
		//服务器是否存在此图片
		//Image model = imageService.getModel(md5value);
//		Image model = new Image();
			path = path + "/" + md5value + extname;
			this.writeFile(rootpath+path, inputbytes);
			//File f = new File(rootpath+path);
			
			
//        	model.setAddtime(new Timestamp(System.currentTimeMillis()));
//        	model.setImagemd5(md5value);
//        	model.setImagesize(f.length());
//        	model.setPath(path);
//        	model.setIssavesmall(issavesmall);
        	//imageService.add(model);
        	
        	//是否生成缩略图
        	if(issavesmall)
        	{
        		ImageUtil2.saveSmallImage(rootpath, path, im);
        	}
		
		//int result = imageUserService.save(userid, typeid==null?0:typeid,name, model,extname);
		
		return path;//model;
	}
	
	/***
	 * 二进制流写文件
	 * @param path
	 * @param v
	 */
	private void writeFile(String path,byte[] bytes)
	{
		try{
			File file = new File(path);
			OutputStream os = new FileOutputStream(file);  
			os.write(bytes, 0, bytes.length);
			os.close();
		}
		catch(Exception ex)
		{
			
		}
	}
	/**
	 * 获取扩展名
	 * @param name
	 * @return
	 */
	private String getExtName(String name)
	{
		String extname = "";
        if (name.lastIndexOf(".") >= 0) {  
        	extname = name.substring(name.lastIndexOf("."));  
        }
        return extname;
	}	
	/**
	 * 获取临时路径
	 * @param request
	 * @return
	 */
	private String getTempPath(String rootpath,String md5value,String extname)
	{
		Timestamp time = new Timestamp(System.currentTimeMillis());
		String sourcepath = "temp" + File.separator + DateTime.getStringByTimestamp(time, "yyyy") + File.separator + DateTime.getStringByTimestamp(time, "MMdd");
		File dir = new File(rootpath + sourcepath);
        if(!dir.exists())
        {
        	dir.mkdirs();
        }
        return rootpath + sourcepath + File.separator + md5value + extname;
        
	}
	private BufferedImage getBufferImage(byte[] bytes,boolean ispng)
	{
		if(ispng)
		{
			try {
				return ImageIO.read(new ByteArrayInputStream(bytes));
			} catch (IOException e) {
				return null;
			}
		}
		else
		{
			java.awt.Image imageTookit = Toolkit.getDefaultToolkit().createImage(bytes);
			return ImageUtil2.toBufferedImage(imageTookit);
		}
		
	}
	/**
	 * 将输入流转成二进制码
	 * @param inStream 
	 */
	private byte[] input2byte(InputStream inStream)   {  
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

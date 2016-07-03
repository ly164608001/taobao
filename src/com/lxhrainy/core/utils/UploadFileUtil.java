package com.lxhrainy.core.utils;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.alibaba.fastjson.JSONObject;

/**
 * KindEditor文件上传类
 * 
 * @author xueyunteng
 */
public class UploadFileUtil {

	@SuppressWarnings("rawtypes")
	public String savefile(HttpServletRequest request) {

		// 文件保存目录路径
		String savePath = request.getSession().getServletContext()
									.getRealPath("/") + "attached/";

		// 文件保存目录URL
		String saveUrl = request.getContextPath() + "/attached/";

		// 定义允许上传的文件扩展名
		HashMap<String, String> extMap = new HashMap<String, String>();
		extMap.put("image", "gif,jpg,jpeg,png,bmp");
		extMap.put("flash", "swf,flv");
		extMap.put("media", "swf,flv,mp3,wav,wma,wmv,mid,avi,mpg,asf,rm,rmvb");
		extMap.put("file", "doc,docx,xls,xlsx,ppt,htm,html,txt,zip,rar,gz,bz2");

		// 最大文件大小
		long maxSize = 1000000;

		// response.setContentType("text/html; charset=UTF-8");
		if (!ServletFileUpload.isMultipartContent(request)) {
			return getError("请选择文件。");
		}
		
		String dirName = request.getParameter("dir");
		if (dirName == null) {
			dirName = "image";
		}
		
		// 创建文件夹
		savePath += dirName + "/";
		saveUrl += dirName + "/";
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String ymd = sdf.format(new Date());
		savePath += ymd + "/";
		saveUrl += ymd + "/";
		File dirFile = new File(savePath);
		if (!dirFile.exists()) {
			dirFile.mkdirs();
		}

		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);

		upload.setHeaderEncoding("UTF-8");
		List items = null;
		try {
			items = upload.parseRequest(request);
		} catch (FileUploadException e1) {
			e1.printStackTrace();
		}
		Iterator itr = items.iterator();
		while (itr.hasNext()) {
			FileItem item = (FileItem) itr.next();
			String fileName = item.getName();
			// isFormField：判断是否是普通的表单类型 （！表示是file的表单类型）
			if (!item.isFormField()) {
				// 检查文件大小
				if (item.getSize() > maxSize) {
					return getError("上传文件大小超过限制。");
				}
				// 检查扩展名
				String fileExt = fileName.substring(
						fileName.lastIndexOf(".") + 1).toLowerCase();
				// 判断上次的文件的后缀名是否和 要求的文件后缀名一致
				if (!Arrays.<String> asList(extMap.get(dirName).split(","))
						.contains(fileExt)) {
					return getError("上传文件扩展名是不允许的扩展名。\n只允许"
							+ extMap.get(dirName) + "格式。");
				}

				SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
				String newFileName = df.format(new Date()) + "_"
						+ new Random().nextInt(1000) + "." + fileExt;
				try {
					File uploadedFile = new File(savePath, newFileName);
					item.write(uploadedFile);
				} catch (Exception e) {
					return getError("上传文件失败。");
				}

				JSONObject obj = new JSONObject();
				obj.put("error", 0);
				obj.put("url", saveUrl + newFileName);
				return obj.toString();
			}
		}
		return getError("文件为空。");
	}

	private String getError(String message) {
		JSONObject obj = new JSONObject();
		obj.put("error", 1);
		obj.put("message", message);
		return obj.toString();
	}
	
	private static JSONObject getJsonError(String message) {
		JSONObject obj = new JSONObject();
		obj.put("error_code", 1);
		obj.put("message", message);
		obj.put("success", false);
		return obj;
	}
	
	@SuppressWarnings({ "rawtypes" })
	public static JSONObject uploadFile(HttpServletRequest request) {

		// 文件保存目录路径
		String savePath = request.getSession().getServletContext().getRealPath("/") + "/upload/";
		// 文件保存目录URL
		String saveUrl = "upload/";

		// 定义允许上传的文件扩展名
		HashMap<String, String> extMap = new HashMap<String, String>();
		extMap.put("image", "gif,jpg,jpeg,png,bmp");
		extMap.put("flash", "swf,flv");
		extMap.put("media", "swf,flv,mp3,wav,wma,wmv,mid,avi,mpg,asf,rm,rmvb");
		extMap.put("file", "doc,docx,xls,xlsx,ppt,htm,html,txt,zip,rar,gz,bz2,csv");
		extMap.put("csv", "csv");

		// 最大文件大小
		long maxSize = 1000000;

		if (!ServletFileUpload.isMultipartContent(request)) {
			return getJsonError("请选择文件。");
		}
		// 检查目录
		File uploadDir = new File(savePath);
		if (!uploadDir.isDirectory()) {
			return getJsonError(savePath + "上传目录不存在。");
		}
		// 检查目录写权限
		if (!uploadDir.canWrite()) {
			return getJsonError("上传目录没有写权限。");
		}

		String dirName = request.getParameter("dir");
		if (dirName == null) {
			dirName = "image";
		}
		if (!extMap.containsKey(dirName)) {
			return getJsonError("目录名不正确。");
		}
		// 创建文件夹
		savePath += dirName + "/";
		saveUrl += dirName + "/";
		File saveDirFile = new File(savePath);
		if (!saveDirFile.exists()) {
			saveDirFile.mkdirs();
		}
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
		String ymd = sdf.format(new Date());
		savePath += ymd + "/";
		saveUrl += ymd + "/";
		File dirFile = new File(savePath);
		if (!dirFile.exists()) {
			dirFile.mkdirs();
		}
		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);

		upload.setHeaderEncoding("UTF-8");
		
		List items = null;
		try {
			items = upload.parseRequest(request);
		} catch (FileUploadException e1) {
			e1.printStackTrace();
		}
		Iterator itr = items.iterator();
		while (itr.hasNext()) {
			FileItem item = (FileItem) itr.next();
			String fileName = item.getName();
			
			if (!item.isFormField()) {
				// 检查文件大小
				if (item.getSize() > maxSize) {
					return getJsonError("上传文件大小超过限制。");
				}
				// 检查扩展名
				String fileExt = fileName.substring(
						fileName.lastIndexOf(".") + 1).toLowerCase();
				// 判断上次的文件的后缀名是否和 要求的文件后缀名一致
				if (!Arrays.<String> asList(extMap.get(dirName).split(","))
						.contains(fileExt)) {
					return getJsonError("上传文件扩展名是不允许的扩展名。\n只允许"
							+ extMap.get(dirName) + "格式。");
				}

				SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
				String newFileName = df.format(new Date()) + "_"
						+ new Random().nextInt(1000) + "." + fileExt;
				try {
					File uploadedFile = new File(savePath, newFileName);
					item.write(uploadedFile);
				} catch (Exception e) {
					return getJsonError("上传文件失败。");
				}

				JSONObject obj = new JSONObject();
				Map<String,String> resultMap = new HashMap<>();
				resultMap.put("imgeurl", saveUrl + newFileName);
				obj.put("error_code", 0);
				obj.put("result", resultMap);
				obj.put("success", true);
				obj.put("message", "");
				return obj;
			}
		}
		return getJsonError("文件为空。");
	}
	
}
package com.lxhrainy.myjz.admin.fileupload.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.core.utils.UploadFileUtil;
import com.lxhrainy.myjz.common.constant.Global;

@RequestMapping("/admin/common/fileupload")
@Controller
public class FileUploadController extends BaseController{

	/**
	 * 文件上传
	 * @return
	 */
	@RequestMapping("/upload")
	@ResponseBody
	public JSONObject upload(HttpServletRequest request) {
		JSONObject result = UploadFileUtil.uploadFile(request);
		//url前面加上完整前缀
		String url = result.get("url").toString();
		String reqUrl = request.getRequestURL().toString();
		String webRootUrl = reqUrl.substring(0,reqUrl.indexOf(Global.PROJECT_NAME))+Global.PROJECT_NAME+"/";
		url = webRootUrl + url;
		result.put("url",url);
		return result;
	}
	
}

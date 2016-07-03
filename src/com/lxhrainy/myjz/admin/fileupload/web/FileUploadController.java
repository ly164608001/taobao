package com.lxhrainy.myjz.admin.fileupload.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.core.utils.UploadFileUtil;

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
		return result;
	}
}

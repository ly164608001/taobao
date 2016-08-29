package com.lxhrainy.myjz.admin.buyer.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.user.model.UserAuthInfo;
import com.lxhrainy.myjz.admin.user.oe.UserAuthInfoVO;
import com.lxhrainy.myjz.admin.user.service.IUserAuthInfoService;


/**
 * 认证Controller
 * @author xueyunteng
 * @version 2016-08-29
 */
@Controller
@RequestMapping("/admin/buyer/auth")
public class AuthController extends BaseController {

	@Autowired
	private IUserAuthInfoService authService;
	
	/***
	 * 详情
	 * @param
	 */
	@RequestMapping("/authDetail")
	public ModelAndView detail(Integer id) {
		if(id!=null){
			mv.addObject("model", authService.getById(id));
		}
		
		mv.setViewName("admin/buyer/auth/authDetail");
		return mv;
	}
	
	/***
	 * 列表
	 * @param
	 */
	@RequestMapping("/authList")
	public ModelAndView list() {
		mv.setViewName("admin/buyer/auth/authList");
		return mv;
	}
	
	@RequestMapping("/datalist")
	@ResponseBody
	public JSONObject listdata(UserAuthInfoVO vo) {
		JSONObject rj = new JSONObject();
		List<UserAuthInfo> list = authService.getListByPage(vo);
		rj.put("total", vo.getTotalCount());
		rj.put("rows",list);
		rj.put("vo",vo);
		return rj;
	}

}
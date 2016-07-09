package com.lxhrainy.myjz.admin.buyer.web;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.buyer.model.AccountInfo;
import com.lxhrainy.myjz.admin.buyer.oe.AccountVO;
import com.lxhrainy.myjz.admin.buyer.service.IAccountService;
import com.lxhrainy.myjz.common.constant.Global;


/**
 * 买家小号Controller
 * @author xueyunteng
 * @version 2016-07-06
 */
@Controller
@RequestMapping("/admin/buyer/account")
public class AccountController extends BaseController {

	@Autowired
	private IAccountService accountService;
	
	/***
	 * 详情
	 * @param
	 */
	@RequestMapping("/accountDetail")
	public ModelAndView detail(Integer id) {
		if(id!=null){
			mv.addObject("model", accountService.getById(id));
		}
		
		mv.setViewName("admin/buyer/account/accountDetail");
		return mv;
	}
	
	/***
	 * 列表
	 * @param
	 */
	@RequestMapping("/accountList")
	public ModelAndView list() {
		mv.setViewName("admin/buyer/account/accountList");
		mv.addObject(Global.SESSION_USERNAME, this.getCurrentUser());
		return mv;
	}
	
	@RequestMapping("/datalist")
	@ResponseBody
	public JSONObject listdata(AccountVO vo) {
		JSONObject rj = new JSONObject();
		List<AccountInfo> list = accountService.getListByPage(vo);
		rj.put("total", vo.getTotalCount());
		rj.put("rows",list);
		rj.put("vo",vo);
		return rj;
	}

	/***
	 * 新增
	 * @param
	 */
	@RequestMapping("/accountAdd")
	public ModelAndView add(Integer pid) {
		mv.setViewName("admin/buyer/account/accountAdd");
		return mv;
	}
	
	/***
	 * 新增保存
	 * @param
	 */
	@RequestMapping("/addsave")
	@ResponseBody
	public JSONObject addsave(AccountInfo model) {
		JSONObject rj = new JSONObject();
		if(model == null){
			rj.put("success", false);
			rj.put("msg", "保存失败");
		}else{
			accountService.save(model);
			rj.put("success", true);
			rj.put("msg", "保存成功");
		}
		return rj;
	}
	
	/***
	 * 修改
	 * @param
	 */
	@RequestMapping("/accountUpdate")
	public ModelAndView update(Integer id) {
		if(id != null){
			AccountInfo model = accountService.getById(id);
			mv.addObject("model", model);
		}
		
		mv.setViewName("admin/buyer/account/accountUpdate");
		return mv;
	}
	
	/***
	 * 保存
	 * @param
	 */
	@RequestMapping("/updatesave")
	@ResponseBody
	public JSONObject updatesave(AccountInfo model) {
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		rj.put("msg", "更新失败");
		
		String name = null;
		
		if(model != null && model.getId() != null ){
			if(!StringUtils.isEmpty(name) ){
				AccountInfo oldInfo = accountService.getById(model.getId());
				accountService.update(oldInfo);
				rj.put("success", true);
				rj.put("msg", "更新成功");
			}
		}
		return rj;
	}
	
	/***
	 * 删除
	 * @param ID
	 */
	@RequestMapping("/accountDelete")
	@ResponseBody
	public JSONObject delete(Integer id) {
		JSONObject rj = new JSONObject();
		accountService.deleteById(id);
		rj.put("success", true);
		rj.put("msg", "删除成功");
		return rj;
	}
	
	/***
	 * 启用
	 * @param ID
	 */
	@RequestMapping("/able")
	@ResponseBody
	public JSONObject able(Integer id) {
		JSONObject rj = new JSONObject();
		accountService.able(id);
		rj.put("success", true);
		return rj;
	}
	
	/***
	 * 禁用
	 * @param ID
	 */
	@RequestMapping("/unable")
	@ResponseBody
	public JSONObject unable(Integer id) {
		JSONObject rj = new JSONObject();
		accountService.unable(id);
		rj.put("success", true);
		return rj;
	}

}
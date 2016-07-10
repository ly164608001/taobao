package com.lxhrainy.myjz.front.web.buyer.account;

import java.util.List;

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

/**
 * 买家小号控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/buyer/account")
@Controller
public class BuyerAccountController extends BaseController {
	
	@Autowired
	private IAccountService accountService;
	
	/**
	 * 列表
	 * @return
	 */
	@RequestMapping("/accountList")
	public ModelAndView list(AccountVO vo){
		
		if(vo == null || vo.getModel() == null){
			vo = new AccountVO();
			AccountInfo model = new AccountInfo();
			model.setCreateuser(this.getCurrentUser());
			vo.setModel(model);
		}
		
		List<AccountInfo> list = accountService.getListByPage(vo);
		
		mv.addObject("vo", vo);
		mv.addObject("list", list);
		mv.setViewName("front/buyer/account/accountList");
		return mv;
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
	
	/***
	 * 更新顺序
	 * @param ID
	 */
	@RequestMapping("/updatesort")
	@ResponseBody
	public JSONObject updateSort(Integer id,Integer sort) {
		JSONObject rj = new JSONObject();
		if(id != null && sort != null){
			accountService.updateSort(id,sort);
			rj.put("success", true);
		}else{
			rj.put("success", false);
			rj.put("msg", "参数不全");
		}
		
		return rj;
	}
	
	
}
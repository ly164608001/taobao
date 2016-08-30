package com.lxhrainy.myjz.admin.buyer.web;

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
	 * 审核通过
	 * @param ID
	 */
	@RequestMapping("/pass")
	@ResponseBody
	public JSONObject pass(Integer id) {
		return audit(id,Global.AUDIT_PASS);
	}
	
	/***
	 * 审核驳回
	 * @param ID
	 */
	@RequestMapping("/reject")
	@ResponseBody
	public JSONObject reject(Integer id) {
		return audit(id,Global.AUDIT_REJECT);
	}

	private JSONObject audit(Integer id,int auditStatus){
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		
		if(id == null){
			rj.put("msg", "请选择要操作的申请记录");
			return rj;
		}
		
		int result = accountService.audit(id,auditStatus);
		switch (result) {
		case -1:
			rj.put("msg", "申请记录不存在");
			return rj;
		case -2:
			rj.put("msg", "非待审状态,不可进行审核操作");
			return rj;
		default:
			break;
		}
		
		rj.put("success", true);
		return rj;
	}
	
}
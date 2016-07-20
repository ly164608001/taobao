package com.lxhrainy.myjz.front.web.buyer.account;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.buyer.model.AccountBasicInfo;
import com.lxhrainy.myjz.admin.buyer.model.AccountInfo;
import com.lxhrainy.myjz.admin.buyer.oe.AccountVO;
import com.lxhrainy.myjz.admin.buyer.service.IAccountBasicInfoService;
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
	@Autowired
	private IAccountBasicInfoService basicInfoService;
	
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
	
	
	/**
	 * 基础信息
	 * @return
	 */
	@RequestMapping("/basicinfo")
	public ModelAndView basicinfo(Integer accountid){
		if(accountid != null){
			AccountBasicInfo model = basicInfoService.getByAccountid(accountid);
			mv.addObject("model", model);
		}
		
		mv.setViewName("front/buyer/account/basicinfo");
		return mv;
	}
	
	
}
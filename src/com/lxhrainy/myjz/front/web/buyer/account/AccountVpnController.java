package com.lxhrainy.myjz.front.web.buyer.account;


import java.util.Date;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.buyer.model.AccountVpnInfo;
import com.lxhrainy.myjz.admin.buyer.service.IAccountVpnInfoService;
import com.lxhrainy.myjz.admin.user.service.IUserMoneyService;

/**
 * 买家小号vpn控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/buyer/account")
@Controller
public class AccountVpnController extends BaseController {
	
	@Autowired
	private IAccountVpnInfoService vpnService;
	@Autowired
	private IUserMoneyService moneyService;
	
	@RequestMapping("/vpn")
	public ModelAndView vpn(Integer accountid){
		if(accountid != null){
			AccountVpnInfo model = vpnService.getByAccountid(accountid);
			mv.addObject("model", model);
		}
		
		mv.setViewName("front/buyer/account/vpn");
		return mv;
	}
	
	/**
	 * 新增保存
	 * @return
	 */
	@RequestMapping("/vpnSave")
	@ResponseBody
	public JSONObject addressSave(AccountVpnInfo model,String platPaypassword){
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		
		if(StringUtils.isEmpty(platPaypassword) || model == null || model.getArea() == null  ){
			rj.put("msg", "信息填写不完整");
			return rj;
		}
		
		//验证交易密码
		int userid = this.getCurrentUser().getId();
		boolean isValidPsw = moneyService.validatePaypassword(userid, platPaypassword);
		if(!isValidPsw){
			rj.put("msg", "交易密码不正确");
			return rj;
		}
		
		//更新
		Integer id = model.getId();
		if(id != null){
			AccountVpnInfo oldModel = vpnService.getById(model.getId());
			model.setUpdatetime(new Date());
			model.setCreatetime(oldModel.getCreatetime());
			vpnService.update(model);
		}
		
		rj.put("success", true);
		return rj;
	}
}
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
import com.lxhrainy.myjz.admin.buyer.model.AccountReceiptAddress;
import com.lxhrainy.myjz.admin.buyer.service.IAccountReceiptAddressService;
import com.lxhrainy.myjz.admin.buyer.service.IAccountService;
import com.lxhrainy.myjz.admin.user.service.IUserMoneyService;

/**
 * 买家小号收获地址控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/buyer/account")
@Controller
public class AccountAddressController extends BaseController {
	
	@Autowired
	private IAccountService accountService;
	@Autowired
	private IAccountReceiptAddressService addressService;
	@Autowired
	private IUserMoneyService moneyService;
	
	/**
	 * 收获地址
	 * @return
	 */
	@RequestMapping("/address")
	public ModelAndView address(Integer accountid){
		if(accountid != null){
			AccountReceiptAddress model = addressService.getByAccountid(accountid);
			mv.addObject("model", model);
		}
		
		mv.setViewName("front/buyer/account/address");
		return mv;
	}
	
	/**
	 * 收获地址新增保存
	 * @return
	 */
	@RequestMapping("/addressSave")
	@ResponseBody
	public JSONObject addressSave(AccountReceiptAddress model,String paypassword){
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		
		if(StringUtils.isEmpty(paypassword) || model == null || model.getArea() == null
				|| StringUtils.isEmpty(model.getReceiptname()) || StringUtils.isEmpty(model.getReceiptphone()) ){
			rj.put("msg", "信息填写不完整");
			return rj;
		}
		
		//验证交易密码
		int userid = this.getCurrentUser().getId();
		boolean isValidPsw = moneyService.validatePaypassword(userid, paypassword);
		if(!isValidPsw){
			rj.put("msg", "交易密码不正确");
			return rj;
		}
		
		//更新或新增
		Integer id = model.getId();
		if(id != null){
			AccountReceiptAddress oldModel = addressService.getById(model.getId());
			oldModel.setUpdatetime(new Date());
			oldModel.setAddress(model.getAddress());
			oldModel.setArea(model.getArea());
			oldModel.setCreatetime(model.getCreatetime());
			oldModel.setReceiptname(model.getReceiptname());
			oldModel.setReceiptphone(model.getReceiptphone());
			addressService.update(oldModel);
		}else{
			model.setCreatetime(new Date());
			addressService.save(model);
		}
		
		rj.put("success", true);
		return rj;
	}
	
}
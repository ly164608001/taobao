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
import com.lxhrainy.myjz.admin.buyer.model.AccountInfo;
import com.lxhrainy.myjz.admin.buyer.service.IAccountService;
import com.lxhrainy.myjz.common.constant.Global;

/**
 * 买家小号绑定控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/buyer/account")
@Controller
public class BuyerAccountAddController extends BaseController {
	
	@Autowired
	private IAccountService accountService;
	
	/**
	 * 新增
	 * @return
	 */
	@RequestMapping("/accountAdd")
	public ModelAndView accountAdd(String accountno){
		mv.addObject("accountno", accountno);
		mv.setViewName("front/buyer/account/accountAdd");
		return mv;
	}
	
	/**
	 * 新增保存
	 * @return
	 */
	@RequestMapping("/addsave")
	@ResponseBody
	public JSONObject addsave(AccountInfo model){
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		
		if(model == null || StringUtils.isEmpty(model.getAccountno()) || model.getIdentification() == null
				|| StringUtils.isEmpty(model.getCredit()) || StringUtils.isEmpty(model.getLevelpic()) ){
			rj.put("msg", "信息填写不完整");
			return rj;
		}
		
		model.setAuditstatus(Global.AUDIT_INIT);
		model.setCreatetime(new Date());
		model.setSort(0);
		model.setStatus(Global.NO);
		model.setCreateuser(getCurrentUser());
		accountService.save(model);
		rj.put("success", true);
		
		return rj;
	}
	
}
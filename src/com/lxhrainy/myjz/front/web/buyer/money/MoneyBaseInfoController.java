package com.lxhrainy.myjz.front.web.buyer.money;

import java.util.Date;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.core.sys.service.IUserInfoService;
import com.lxhrainy.myjz.admin.user.model.UserDetailInfo;
import com.lxhrainy.myjz.admin.user.service.IUserDetailInfoService;

/**
 * 账户-基本资料控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/buyer/money")
@Controller
public class MoneyBaseInfoController extends BaseController {
	
	@Autowired
	private IUserInfoService userService;
	@Autowired
	private IUserDetailInfoService detailService;
	
	@RequestMapping("/baseinfo")
	public ModelAndView detail(){
		int userid = this.getCurrentUser().getId();
		mv.addObject("model", userService.getPersonInfo(userid));
		mv.setViewName("front/buyer/money/moneyBaseinfo");
		return mv;
	}
	
	
	/**
	 * 更新个人资料
	 * @return
	 */
	@RequestMapping("/updateInfo")
	@ResponseBody
	public JSONObject updatePassword(UserDetailInfo detail){
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		
		//信息验证
		if(detail == null){
			rj.put("msg", "信息填写不完整");
			return rj;
		}
		String qq = detail.getQq();
		Date birthday = detail.getBirthday();
		if(StringUtils.isEmpty(qq) || birthday == null){
			rj.put("msg", "信息填写不完整");
			return rj;
		}
		
		//更新信息
		UserDetailInfo deitaiInfo = detailService.getByUserid(this.getCurrentUser().getId());
		deitaiInfo.setSex(detail.getSex());
		deitaiInfo.setQq(qq);
		deitaiInfo.setBirthday(birthday);
		detailService.update(deitaiInfo);
		rj.put("success", true);
		return rj;
	}
	
	

}
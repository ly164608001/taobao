package com.lxhrainy.myjz.front.web.buyer.certification;

import java.util.Date;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.user.model.UserAuthInfo;
import com.lxhrainy.myjz.admin.user.service.IUserAuthInfoService;
import com.lxhrainy.myjz.common.constant.Global;

/**
 * 实名认证控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/buyer/certification")
@Controller
public class certificationController extends BaseController {
	
	@Autowired
	private IUserAuthInfoService authService;
	
	/**
	 * 实名认证页面
	 * @return
	 */
	@RequestMapping("/prepare")
	public ModelAndView prepare(){
		mv.addObject("loginUser", this.getCurrentUser());
		mv.setViewName("front/buyer/certification/certification");
		return mv;
	}
	
	/**
	 * 实名认证
	 * @return
	 */
	@RequestMapping("/certification")
	@ResponseBody
	public JSONObject certification(UserAuthInfo auth){
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		
		if(auth == null || StringUtils.isEmpty(auth.getRealname()) || auth.getType() == null ){
			rj.put("msg", "信息填写不完整");
			return rj;
		}
		
		Integer type = auth.getType();
		//验证身份证
		if(type.intValue() == Global.AUTH_IDCARD &&
				(StringUtils.isEmpty(auth.getCardphoto()) || StringUtils.isEmpty(auth.getHandcardphoto()) || StringUtils.isEmpty(auth.getLifephoto())) ){
			rj.put("msg", "身份认证必须上传身份正面照和手持身份证及生活照");
			return rj;
			
		}
		//验证学生证
		else if(type.intValue() == Global.AUTH_STU &&
				(StringUtils.isEmpty(auth.getStucardphoto()) || StringUtils.isEmpty(auth.getHandstucardphoto()) )){
			rj.put("msg", "学生认证必须上传学生证正面照和手持学生证");
			return rj;
		}
		
		//提交认证申请
		auth.setDeleted(Global.NO);
		auth.setUser(getCurrentUser());
		auth.setCertificationstatus(Global.AUDIT_INIT);
		auth.setCertificationtime(new Date());
		
		int result = authService.applyCertification(auth);
		if(result == -1){
			rj.put("msg", "已提交过认证信息，请勿重复认证");
		}else if(result == 1){
			rj.put("success", true);
			rj.put("msg", "认证申请已提交");
		}
		
		return rj;
	}
	
	
}
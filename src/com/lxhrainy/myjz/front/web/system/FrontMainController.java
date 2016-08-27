package com.lxhrainy.myjz.front.web.system;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.core.model.ClientManager;
import com.lxhrainy.core.sys.model.UserInfo;
import com.lxhrainy.core.sys.service.ISysMenuService;
import com.lxhrainy.core.sys.service.IUserInfoService;
import com.lxhrainy.core.utils.ContextHolderUtils;
import com.lxhrainy.myjz.common.constant.Global;

@Controller
@RequestMapping("/")
public class FrontMainController extends BaseController {

	@Autowired
	IUserInfoService userInfoService;
	@Autowired
	ISysMenuService sysMenuservice;
	
	@RequestMapping("/front/index")
	public ModelAndView index()
	{
		mv.addObject("frontUser", getCurrentUser());
		mv.setViewName("front/index");
		return mv;
	}
	
	@RequestMapping("/front/main")
	public ModelAndView main()
	{
		HttpSession session = ContextHolderUtils.getSession();
		if(getCurrentUser()==null){
			return new ModelAndView(new RedirectView("login.htm"));
		}
		UserInfo currentUser = ClientManager.getInstance().getClient(session.getId()).getUser();
		if(currentUser.getType().intValue() == Global.USER_BUYER){
			//刷手首页
			mv = new ModelAndView("front/buyer/main");
		}else if(currentUser.getType().intValue() == Global.USER_SELLER){
			//商家首页
			mv = new ModelAndView("front/seller/main");
		}
		mv.addObject("frontUser", currentUser);
		return mv;
	}
	
	@RequestMapping("/front/logout.htm")
	public ModelAndView logout()
	{
		HttpSession session = ContextHolderUtils.getSession();
		ClientManager.getInstance().removeClinet(session.getId());
		session.invalidate();
		return new ModelAndView(new RedirectView("login.htm"));
	}
	
}
package com.lxhrainy.myjz.front.web.system;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.core.model.ClientManager;
import com.lxhrainy.core.sys.model.SysMenu;
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
		UserInfo currentUser = ClientManager.getInstance().getClient(session.getId()).getUser();
		if(currentUser.getType().intValue() == Global.USER_MEMBER){
			//个人中心
			mv = new ModelAndView("front/member/main");
		}else if(currentUser.getType().intValue() == Global.USER_AGENT){
			//中介代理
			mv = new ModelAndView("front/agency/main");
		}else if(currentUser.getType().intValue() == Global.USER_ESTATE){
			//房地产商
			mv = new ModelAndView("front/estate/main");
		}
		//TODO:获取用户权限列表
		List<SysMenu> menuList = null ;//sysMenuservice.getTreeByUserId(currentUser.getId(), Global.FRONT);
		mv.addObject("frontUser", currentUser);
		mv.addObject("menuList", menuList);
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
package com.lxhrainy.core.sys.web;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.core.model.Client;
import com.lxhrainy.core.model.ClientManager;
import com.lxhrainy.core.sys.model.SysMenu;
import com.lxhrainy.core.sys.model.UserInfo;
import com.lxhrainy.core.sys.service.ISysMenuService;
import com.lxhrainy.core.sys.service.IUserInfoService;
import com.lxhrainy.core.utils.ContextHolderUtils;
import com.lxhrainy.core.utils.IpUtil;
import com.lxhrainy.core.utils.ResourceUtil;
import com.lxhrainy.myjz.common.constant.Global;

@RequestMapping("/admin")
@Controller
public class AdminController extends BaseController {

	@Autowired
	ISysMenuService sysMenuService;
	@Autowired
	IUserInfoService userInfoService;
	
	
	@RequestMapping("/index.htm")
	public ModelAndView index()
	{
		HttpSession session = ContextHolderUtils.getSession();
		UserInfo currentUser = ClientManager.getInstance().getClient(session.getId()).getUser();
		List<SysMenu> menuList = sysMenuService.getTreeByUserId(currentUser.getId(), Global.ADMIN);
		ModelAndView mv = new ModelAndView("core/main");
		mv.addObject("model", currentUser);
		mv.addObject("menuList", menuList);
		return mv;
	}
	
	@RequestMapping("/login.htm")
	public ModelAndView login()
	{
		ModelAndView mv = new ModelAndView("core/login");
		return mv;
	}
	
	@RequestMapping("/tologin")
	@ResponseBody
	public JSONObject tologin(HttpServletRequest request, String username,String password)
	{
		JSONObject rj = new JSONObject();
		UserInfo user = userInfoService.checkUserLogin(username, password, Global.ADMIN);
		if(user != null){
			saveLoginSuccessInfo(request, user);
			rj.put("success", true);
			rj.put("msg", "");
		}else{
			rj.put("success", false);
			rj.put("msg", "用户名或密码错误");
		}
		return rj;
	}
	
	/**
	 * @Title: saveLoginSuccessInfo 
	 * @Description: 保存用户登录信息
	 * @param @param req
	 * @param @param user    设定文件 
	 * @return void    返回类型 
	 * @throws
	 */
    private void saveLoginSuccessInfo(HttpServletRequest req, UserInfo user) {

        HttpSession session = ContextHolderUtils.getSession();
        session.setAttribute(ResourceUtil.LOCAL_CLINET_USER, user);
        //当前session为空 或者 当前session的用户信息与刚输入的用户信息一致时，则更新Client信息
        Client clientOld = ClientManager.getInstance().getClient(session.getId());
		if(clientOld == null || clientOld.getUser() ==null ||user.getUsername().equals(clientOld.getUser().getUsername())){
			Client client = new Client();
	        client.setIp(IpUtil.getIpAddr(req));
	        client.setLogindatetime(new Date());
	        client.setUser(user);
	        ClientManager.getInstance().addClinet(session.getId(), client);
		} else {
			//如果不一致，则注销session并通过session=req.getSession(true)初始化session
			ClientManager.getInstance().removeClinet(session.getId());
			session.invalidate();
			session=req.getSession(true);//session初始化
			session.setAttribute(ResourceUtil.LOCAL_CLINET_USER, user);
			tologin(req, user.getUsername(), user.getPassword());
		}
        // TODO 添加登陆日志
    }
	
	@RequestMapping("/loginout.htm")
	public ModelAndView loginout(HttpServletResponse response)
	{
		//AdminCookieUtil.remove(response);
		HttpSession session = ContextHolderUtils.getSession();
		
		/*if(ClientManager.getInstance().getClient(session.getId())!=null){
			AdminUser user =  ClientManager.getInstance().getClient(session.getId()).getUser();
		}else{
			AdminUser u = (AdminUser) session.getAttribute(ResourceUtil.LOCAL_CLINET_USER);
			Client client = new Client();
	        client.setIp("");
	        client.setLogindatetime(new Date());
	        client.setUser(u);
	        ClientManager.getInstance().addClinet(session.getId(), client);
		}*/
		ClientManager.getInstance().removeClinet(session.getId());
		session.invalidate();
		return new ModelAndView(new RedirectView("login.htm"));
	}
	/*
	 * 跳转到修改密码界面
	 */
	@RequestMapping("/modifypassword.htm")
	public ModelAndView modifyPassword(){
	
		return mv;
	}
	/*
	 * 对密码的验证与新密码的保存
	 * -1 新密码不能为空
	 * -2 旧密码不正确
	 */
	@RequestMapping("modifypasswordsave.json")
	@ResponseBody
	public JSONObject modifyPasswordSave(String oldpassword,String password){
		
		JSONObject rj = new JSONObject();
		
		HttpSession session = ContextHolderUtils.getSession();
		UserInfo currentUser = ClientManager.getInstance().getClient(session.getId()).getUser();
		
		int result = userInfoService.modifyPassword(currentUser.getId(), oldpassword, password);
		if(result==-1){
			rj.put("success", false);
			rj.put("msg", "密码修改失败");
		}else{
			rj.put("success", true);
			rj.put("msg", "密码修改成功");
		}
		return rj;
	}
	
}
package com.lxhrainy.myjz.front.web.system;

import java.util.ArrayList;
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
import com.google.code.kaptcha.Constants;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.core.model.Client;
import com.lxhrainy.core.model.ClientManager;
import com.lxhrainy.core.sys.model.UserInfo;
import com.lxhrainy.core.sys.service.IUserInfoService;
import com.lxhrainy.core.utils.CacheUtils;
import com.lxhrainy.core.utils.ContextHolderUtils;
import com.lxhrainy.core.utils.DateUtil;
import com.lxhrainy.core.utils.IpUtil;
import com.lxhrainy.core.utils.ResourceUtil;
import com.lxhrainy.core.utils.StringUtil;
import com.lxhrainy.core.utils.StringUtils;
import com.lxhrainy.myjz.common.constant.Global;

@RequestMapping("/front")
@Controller
public class LoginController extends BaseController {

	@Autowired
	IUserInfoService userInfoService;
	
	@RequestMapping("/login")
	public ModelAndView login()
	{
		ModelAndView mv = new ModelAndView("front/login");
		return mv;
	}
	
	@RequestMapping("/tologin")
	@ResponseBody
	public JSONObject tologin(HttpServletRequest request, String username,String password)
	{
		JSONObject rj = new JSONObject();
		
		UserInfo user = userInfoService.checkUserLogin(username, password, Global.FRONT);
		
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
	
	@RequestMapping("/loginout")
	public ModelAndView loginout(HttpServletResponse response)
	{
		HttpSession session = ContextHolderUtils.getSession();
		
		ClientManager.getInstance().removeClinet(session.getId());
		session.invalidate();
		return new ModelAndView(new RedirectView("login.htm"));
	}
	
	
	@RequestMapping("/register")
	public ModelAndView register(){
		ModelAndView mv = new ModelAndView("front/register");
		return mv;
	}

	@RequestMapping("/getCaptcha")
	@ResponseBody
	public JSONObject getCaptcha(String phone, Integer key){
		JSONObject rj = new JSONObject();
		if(getCurrentUser() != null){
			key = getCurrentUser().getId();
		}
		String captcha = StringUtil.getRandomString(6);
		CacheUtils.put(phone, captcha + "-" + DateUtil.getMillis());
		List<String> items = new ArrayList<String>();
		items.add(captcha);
		//发送短息
		//boolean flag = interactionNoterecordService.sendSms(phone, "resetPwd", items, key);
		boolean flag = true;
		if (flag) {
			rj.put("success", true);
			rj.put("msg", "");
		}else{
			rj.put("success", false);
			rj.put("msg", "验证码发送失败，请稍后再试!");
		}
		return rj;
	}
	
	@RequestMapping("/doRegister")
	@ResponseBody
	public JSONObject doRegister(UserInfo user, String repassword){
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		if(user == null || StringUtils.isEmpty(repassword) || StringUtils.isEmpty(user.getPassword())
			|| StringUtils.isEmpty(user.getUsername()) || StringUtils.isEmpty(user.getPhone())){
			rj.put("msg", "信息请填写完整");
			return rj;
		}
		if(!repassword.equals(user.getPassword())){
			rj.put("msg", "两次密码不一致");
			return rj;
		}
		
		user.setDeleted(Global.NO);
		user.setRegistertime(new Date());
		user.setStatus(Global.ENABLE);
		user.setChannel(Global.FRONT);
		int result = userInfoService.registerMember(user);
		if(result == -2){
			rj.put("success", false);
			rj.put("msg", "用户名已存在");
		}else if(result == -1){
			rj.put("success", false);
			rj.put("msg", "服务器繁忙，请稍后再试");
		}else{
			rj.put("success", true);
			rj.put("msg", "");
		}
		return rj;
	}
	
	
	@RequestMapping("/forgetPwd")
	public ModelAndView forgetPwd(){
		ModelAndView mv = new ModelAndView("front/forgetPwd");
		return mv;
	}
	
	@RequestMapping("/toValidateInfo")
	public ModelAndView validateInfo(HttpServletRequest request,String username, String validateCode){
		boolean flag = true;
		flag = validateCode(validateCode);
		if(flag){
			UserInfo userinfo = userInfoService.getByUsername(username);
			if(userinfo != null){
				userinfo.setPhone(StringUtils.formatPhoneNum(userinfo.getPhone(), 3, 7));
				mv.addObject("user", userinfo);
				mv.setViewName("front/validateInfo");
				mv.addObject("errorMsg", "");
			}else{
				mv.addObject("errorMsg", "用户名不存在");
				mv.setViewName("front/forgetPwd");
			}
		}else{
			mv.addObject("errorMsg", "验证码错误");
			mv.setViewName("front/forgetPwd");
		}
		return mv;
	}
	
	@RequestMapping("/toResetPwd")
	public ModelAndView resetPwd(UserInfo user, String captcha){
		String result = "";
		result = validateCaptcha(user.getPhone(), captcha);
		if(StringUtil.isEmpty(result)){
			if(user != null && user.getId() != null){
				mv.addObject("user", user);
				mv.setViewName("front/resetPwd");
				mv.addObject("errorMsg", "");
			}else{
				mv.addObject("errorMsg", "用户名不存在");
				mv.setViewName("front/validateInfo");
			}
		}else{
			mv.addObject("errorMsg", result);
			mv.setViewName("front/validateInfo");
		}
		return mv;
	}
	
	@RequestMapping("/resetResult")
	public ModelAndView resetResult(UserInfo user){
		if(user != null && user.getId() != null && user.getUsername() != null && user.getPassword() != null){
			//重置密码
			int result = userInfoService.resetPwdFormUser(user);
			if(result == -1){
				mv.addObject("errorMsg", "系统错误，请稍后再试");
				mv.setViewName("front/forgetPwd");
			}else{
				mv.addObject("user", user);
				mv.addObject("errorMsg", "");
				mv.setViewName("front/resetResult");
			}
		}else{
			mv.addObject("errorMsg", "信息错误，请重新操作");
			mv.setViewName("front/resetPwd");
		}
		return mv;
	}
	
	
	
	
	/**
	 * @Title: validateCode 
	 * @Description: 验证验证码是否正确
	 * @param @param code
	 * @param @return    设定文件 
	 * @return boolean    返回类型 
	 * @throws
	 */
	private boolean validateCode(String code){
		String kaptcha =  (String) this.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);
		if(kaptcha == null || !kaptcha.equals(code)){
			return false;
		}
		this.getSession().removeAttribute(Constants.KAPTCHA_SESSION_KEY);
		return true;
	}
	
	/**
	 * @Title: validateCaptcha 
	 * @Description: 验证验证码是否正确
	 * @param @param code
	 * @param @return    设定文件 
	 * @return boolean    返回类型 
	 * @throws
	 */
	private String validateCaptcha(String phone, String captcha){
		String result = "";
		String kaptcha =  (String) CacheUtils.get(phone);
		if(StringUtil.isEmpty(kaptcha)){
			result = "请获取验证码";
		}else{
			String[] captchaArray =  kaptcha.split("-");
			if (captchaArray.length == 2 ) {
				long a = (new Date().getTime() - Long.parseLong(captchaArray[1])) / 1000;
				if (!captchaArray[0].equals(captcha)) {
					result = "验证码错误";
				} else if ( a > 180) {
					result = "验证码超时，请重新获取";
				}else{
					CacheUtils.remove(phone);
				}
			}else{
				result = "系统错误，请稍后重试";
			}
		}
		return result;
	}
	
}
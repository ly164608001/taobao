package com.lxhrainy.myjz.front.interceptors;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.servlet.view.RedirectView;

import com.lxhrainy.core.model.Client;
import com.lxhrainy.core.model.ClientManager;
import com.lxhrainy.core.sys.model.SysMenu;
import com.lxhrainy.core.sys.model.UserInfo;
import com.lxhrainy.core.sys.service.ISysMenuService;
import com.lxhrainy.core.utils.ContextHolderUtils;
import com.lxhrainy.core.utils.ResourceUtil;
import com.lxhrainy.core.utils.oConvertUtils;
import com.lxhrainy.myjz.common.constant.Global;

public class FrontUserAuthInterceptor extends HandlerInterceptorAdapter {

	/*private static final Logger logger = Logger
			.getLogger(UserAuthInterceptor.class);*/
	private List<String> excludeUrls;
	private static List<SysMenu> functionList;
	
	@Autowired
	ISysMenuService sysMenuService;
	
	
	public List<String> getExcludeUrls() {
		return excludeUrls;
	}

	public void setExcludeUrls(List<String> excludeUrls) {
		this.excludeUrls = excludeUrls;
	}

	/**
	 * 在controller后拦截
	 */
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object object, Exception exception)
			throws Exception {
	}

	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object object,
			ModelAndView modelAndView) throws Exception {

	}

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		
		String requestPath = ResourceUtil.getRequestPath(request);// 用户访问的资源地址
		HttpSession session = ContextHolderUtils.getSession();
		
		Client client = ClientManager.getInstance().getClient(session.getId());
		if(client == null){ 
			client = ClientManager.getInstance().getClient(
					request.getParameter("sessionId"));
		}
		
		return true;
		/*if (excludeUrls.contains(requestPath)) {
			//如果该请求不在拦截范围内，直接返回true
			return true;
		} else {
			if (client != null && client.getUser()!=null ) {
				if(!hasMenuAuth(request)){
					String basePath = request.getContextPath();
					response.sendRedirect(basePath + "/" + "front/login.htm");
					//request.getRequestDispatcher("webpage/common/noAuth.jsp").forward(request, response);
					return false;
				} 
				return true;
			}else{
				forward(request, response);
				return false;
			}
		}*/
	}
	
	/**
	 * 判断用户是否有菜单访问权限
	 * @param request
	 * @return
	 */
	private boolean hasMenuAuth(HttpServletRequest request){
		String requestPath = ResourceUtil.getRequestPath(request);// 用户访问的资源地址
		// 是否是功能表中管理的url
		boolean bMgrUrl = false;
		if (functionList == null || functionList.size() == 0) {
			functionList = sysMenuService.getAllList(null);
		}
		for (SysMenu function : functionList) {
			if (function.getHref() != null && function.getHref().startsWith(requestPath)) {
				bMgrUrl = true;
				break;
			}
		}
		if (!bMgrUrl) {
			return true;
		}
		 
		String funcid=oConvertUtils.getString(request.getParameter("clickFunctionId"));
		if(!bMgrUrl && (requestPath.indexOf("front/login.htm")!=-1||funcid.length()==0)){
			return true;
		} 
		UserInfo currLoginUser = ClientManager.getInstance().getClient(ContextHolderUtils.getSession().getId()).getUser();
        Integer userid = currLoginUser.getId();
        
        //获取用户的菜单列表
        List<SysMenu> menuList = sysMenuService.findByUserIdWithType(userid, Global.FRONT);
        
        boolean flag = false;
        if(menuList != null && menuList.size() > 0){
        	for(SysMenu menu : menuList){
        		if(menu.getHref().contains(requestPath)){
        			flag = true;
        			break;
        		}
        	}
        }
        return flag;
	}
	
	/**
	 * 转发
	 * 
	 * @param user
	 * @param req
	 * @return
	 */
	@RequestMapping(params = "forword")
	public ModelAndView forword(HttpServletRequest request) {
		return new ModelAndView(new RedirectView("front/login.htm"));
	}

	private void forward(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request.getRequestDispatcher("webpage/login/timeout.jsp").forward(request, response);
		String basePath = request.getContextPath();
		response.sendRedirect(basePath + "/" + "front/login.htm");
	}
}
package com.lxhrainy.myjz.front.web.helpcenter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;

/**
 * 帮助中心控制层
 * @author xueuyunteng
 *
 */
@RequestMapping("/front/helpcenter")
@Controller
public class HelpcenterController extends BaseController {
	
	/**
	 * 帮助中心
	 * @return
	 */
	@RequestMapping("/main")
	public ModelAndView main(){
		mv.setViewName("front/helpcenter/main");
		return mv;
	}

}
package com.lxhrainy.myjz.front.web.seller.praise;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;

/**
 * 好评内容控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/seller/praise")
@Controller
public class SellerPraiseController extends BaseController {
	
	/**
	 * 列表
	 * @return
	 */
	@RequestMapping("/praiseList")
	public ModelAndView taskList(){
		mv.setViewName("front/seller/praise/praiseList");
		return mv;
	}
	
}
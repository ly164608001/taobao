package com.lxhrainy.myjz.front.web.seller.praise;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.seller.service.IPraiseService;

@RequestMapping("/front/seller/praise")
@Controller
public class SellerPraiseImportController extends BaseController {

	@Autowired
	IPraiseService praiseService;
	
	/***
	 * 导入
	 * @param
	 */
	@RequestMapping("/praiseImport")
	public ModelAndView praiseImport() {
		mv.setViewName("front/seller/praise/praiseImport");
		return mv;
	}

}

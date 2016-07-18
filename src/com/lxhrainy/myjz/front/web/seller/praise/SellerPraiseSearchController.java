package com.lxhrainy.myjz.front.web.seller.praise;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.seller.model.Praise;
import com.lxhrainy.myjz.admin.seller.oe.PraiseVO;
import com.lxhrainy.myjz.admin.seller.service.IPraiseService;

@RequestMapping("/front/seller/praise")
@Controller
public class SellerPraiseSearchController extends BaseController {

	@Autowired
	IPraiseService praiseService;
	
	/***
	 * 详情
	 * @param
	 */
	@RequestMapping("/praiseDetail")
	public ModelAndView detail(Integer id) {
		if(id!=null){
			mv.addObject("model", praiseService.getById(id));
		}
		
		mv.setViewName("front/seller/praise/praiseDetail");
		return mv;
	}
	
	/***
	 * 列表
	 * @param
	 */
	@RequestMapping("/praiseList")
	public ModelAndView list(PraiseVO vo) {
		List<Praise> list = praiseService.getListByPage(vo);
		
		mv.addObject("list",list);
		mv.addObject("vo",vo);
		mv.setViewName("front/seller/praise/praiseList");
		return mv;
	}
	
}

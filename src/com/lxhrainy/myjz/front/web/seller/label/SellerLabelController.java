package com.lxhrainy.myjz.front.web.seller.label;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.seller.oe.LabelVO;

/**
 * 标签控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/seller/label")
@Controller
public class SellerLabelController extends BaseController {
	
	/**
	 * 列表
	 * @return
	 */
	@RequestMapping("/labelList")
	public ModelAndView addressLabelList(LabelVO vo){
		mv.addObject("vo", vo);
		mv.setViewName("front/seller/label/labelList");
		return mv;
	}
	
	/**
	 * 添加
	 * @return
	 */
	@RequestMapping("/labelAdd")
	public ModelAndView labelAdd(Integer type){
		mv.addObject("type", type);
		mv.setViewName("front/seller/label/labelAdd");
		return mv;
	}
	
}
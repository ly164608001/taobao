package com.lxhrainy.myjz.front.web.buyer.task;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;

/**
 * 淘宝任务申诉控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/buyer/taskappeal")
@Controller
public class TaskTaobaoAppealController extends BaseController {
	
	/**
	 * 任务申诉列表
	 * @return
	 */
	@RequestMapping("/taobaoAppealList")
	public ModelAndView list(){
		mv.setViewName("front/buyer/task/appeal/taobaoAppealList");
		return mv;
	}
	
}
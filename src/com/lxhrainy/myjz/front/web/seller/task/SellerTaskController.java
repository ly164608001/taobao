package com.lxhrainy.myjz.front.web.seller.task;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;

/**
 * 淘宝任务控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/seller/task")
@Controller
public class SellerTaskController extends BaseController {
	
	/**
	 * 任务列表
	 * @return
	 */
	@RequestMapping("/taskList")
	public ModelAndView taskList(){
		mv.setViewName("front/seller/task/taskList");
		return mv;
	}
	
}
package com.lxhrainy.myjz.front.web.buyer.task;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;

/**
 * 淘宝任务控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/buyer/task")
@Controller
public class TaskTaobaoController extends BaseController {
	
	/**
	 * 淘宝精刷任务管理列表
	 * @return
	 */
	@RequestMapping("/taskTaobaoList")
	public ModelAndView taskTaobaoList(){
		mv.setViewName("front/buyer/task/taskTaobaoList");
		return mv;
	}
	
	/**
	 * 淘宝普通任务管理列表
	 * @return
	 */
	@RequestMapping("/taskTaobaoNormalList")
	public ModelAndView taskTaobaoNormalList(){
		mv.setViewName("front/buyer/task/taskTaobaoNormalList");
		return mv;
	}
	
	/**
	 * 任务大厅
	 * @return
	 */
	@RequestMapping("/taskHall")
	public ModelAndView hall(){
		mv.setViewName("front/buyer/task/taskHall");
		return mv;
	}

}
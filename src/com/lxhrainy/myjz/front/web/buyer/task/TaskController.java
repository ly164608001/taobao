package com.lxhrainy.myjz.front.web.buyer.task;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;


@RequestMapping("/front/buyer/task")
@Controller
public class TaskController extends BaseController {
	
	/**
	 * 任务管理列表
	 * @return
	 */
	@RequestMapping("/taskList")
	public ModelAndView list(){
		mv.setViewName("front/buyer/task/taskList");
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
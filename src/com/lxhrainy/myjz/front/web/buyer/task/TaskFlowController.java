package com.lxhrainy.myjz.front.web.buyer.task;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;

/**
 * 流量任务控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/buyer/task")
@Controller
public class TaskFlowController extends BaseController {
	
	/**
	 * 任务列表
	 * @return
	 */
	@RequestMapping("/taskFlowList")
	public ModelAndView flowList(){
		mv.setViewName("front/buyer/task/taskFlowList");
		return mv;
	}
	
}
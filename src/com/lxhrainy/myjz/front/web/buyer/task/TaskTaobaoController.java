package com.lxhrainy.myjz.front.web.buyer.task;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.order.model.OrderInfo;
import com.lxhrainy.myjz.admin.order.oe.OrderInfoVO;
import com.lxhrainy.myjz.admin.order.service.IOrderInfoService;

/**
 * 淘宝任务控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/buyer/task")
@Controller
public class TaskTaobaoController extends BaseController {
	
	@Autowired
	private IOrderInfoService orderService;
	
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
	 * 任务大厅
	 * @return
	 */
	@RequestMapping("/taskHall")
	public ModelAndView hall(OrderInfoVO vo){
		List<OrderInfo> list = orderService.getListByPage(vo);
		
		mv.addObject("vo", vo);
		mv.addObject("list", list);
		mv.setViewName("front/buyer/task/taskHall");
		return mv;
	}

}
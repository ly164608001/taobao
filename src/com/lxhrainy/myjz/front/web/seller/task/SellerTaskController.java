package com.lxhrainy.myjz.front.web.seller.task;

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
@RequestMapping("/front/seller/task")
@Controller
public class SellerTaskController extends BaseController {
	
	@Autowired
	private IOrderInfoService orderService;
	
	/**
	 * 任务列表
	 * @return
	 */
	@RequestMapping("/taskList")
	public ModelAndView taskList(OrderInfoVO vo){
		List<OrderInfo> list = orderService.getListByPage(vo);
		
		mv.addObject("vo", vo);
		mv.addObject("list", list);
		mv.setViewName("front/seller/task/taskList");
		return mv;
	}
	
}
package com.lxhrainy.myjz.front.web.seller.task;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.task.model.TaskPublish;
import com.lxhrainy.myjz.admin.task.service.ITaskPropertiesService;

/**
 * 淘宝发布任务控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/seller/task")
@Controller
public class SellerTaskPublishController extends BaseController {
	
	@Autowired
	private ITaskPropertiesService propertiesService;
	
	/**
	 * 任务列表
	 * @return
	 */
	@RequestMapping("/publishPrepare")
	public ModelAndView publishPrepare(){
		List<TaskPublish> list = propertiesService.getTaskPublishList();
		
		mv.addObject("list", list);
		mv.setViewName("front/seller/task/publishPrepare");
		return mv;
	}
	
}
package com.lxhrainy.myjz.front.web.buyer.money;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.trace.model.TraceRecord;
import com.lxhrainy.myjz.admin.trace.oe.TraceRecordVO;
import com.lxhrainy.myjz.admin.trace.service.ITraceRecordService;

/**
 * 账户明细控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/buyer/money")
@Controller
public class MoneyDetailController extends BaseController {
	
	@Autowired
	private ITraceRecordService recordService;
	
	/**
	 * 账户明细
	 * @return
	 */
	@RequestMapping("/moneyDetail")
	public ModelAndView detail(TraceRecordVO vo){
		List<TraceRecord> list = recordService.getListByPage(vo);
		
		mv.addObject("list", list);
		mv.addObject("vo", vo);
		mv.setViewName("front/buyer/money/moneyDetail");
		return mv;
	}
	

}
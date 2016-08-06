package com.lxhrainy.myjz.front.web.buyer.money;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.trace.model.TraceRecord;
import com.lxhrainy.myjz.admin.trace.model.TraceWithdrawls;
import com.lxhrainy.myjz.admin.trace.oe.TraceRecordVO;
import com.lxhrainy.myjz.admin.trace.oe.TraceWithdrawlsVO;
import com.lxhrainy.myjz.admin.trace.service.ITraceRecordService;
import com.lxhrainy.myjz.admin.trace.service.ITraceWithdrawlsService;

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
	@Autowired
	private ITraceWithdrawlsService withdrawlsService;
	
	/**
	 * 账户明细
	 * @return
	 */
	@RequestMapping("/moneyDetail")
	public ModelAndView detail(TraceRecordVO vo){
		TraceRecord model = vo.getModel();
		if(model == null){
			model = new TraceRecord();
			model.setUser(getCurrentUser());
			vo.setModel(model);
		}
		List<TraceRecord> list = recordService.getListByPage(vo);
		
		mv.addObject("list", list);
		mv.addObject("vo", vo);
		mv.setViewName("front/buyer/money/moneyDetail");
		return mv;
	}
	
	
	/**
	 * 提现记录
	 * @return
	 */
	@RequestMapping("/withdrawlsRecord")
	public ModelAndView withdrawlsRecord(TraceWithdrawlsVO vo){
		TraceWithdrawls model = vo.getModel();
		if(model == null){
			model = new TraceWithdrawls();
			model.setUser(getCurrentUser());
			vo.setModel(model);
		}
		List<TraceWithdrawls> list = withdrawlsService.getListByPage(vo);
		
		mv.addObject("list", list);
		mv.addObject("vo", vo);
		mv.setViewName("front/buyer/money/withdrawlsRecord");
		return mv;
	}
	

}
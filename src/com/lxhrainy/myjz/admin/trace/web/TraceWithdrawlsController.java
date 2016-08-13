package com.lxhrainy.myjz.admin.trace.web;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.trace.model.TraceWithdrawls;
import com.lxhrainy.myjz.admin.trace.oe.TraceWithdrawlsVO;
import com.lxhrainy.myjz.admin.trace.service.ITraceWithdrawlsService;

@RequestMapping("/admin/trace/withdrawls")
@Controller
public class TraceWithdrawlsController extends BaseController {

	@Autowired
	ITraceWithdrawlsService withdrawlsService;	
	
	/***
	 * 详情
	 * @param
	 */
	@RequestMapping("/withdrawlsDetail")
	public ModelAndView detail(Integer id) {
		if(id!=null){
			mv.addObject("model", withdrawlsService.getById(id));
		}
		
		mv.setViewName("admin/trace/withdrawls/withdrawlsDetail");
		return mv;
	}
	
	/***
	 * 列表
	 * @param
	 */
	@RequestMapping("/withdrawlsList")
	public ModelAndView list() {
		mv.setViewName("admin/trace/withdrawls/withdrawlsList");
		return mv;
	}
	
	@RequestMapping("/datalist")
	@ResponseBody
	public JSONObject listdata(TraceWithdrawlsVO vo) {
		JSONObject rj = new JSONObject();
		List<TraceWithdrawls> list = withdrawlsService.getListByPage(vo);
		rj.put("total", vo.getTotalCount());
		rj.put("rows",list);
		rj.put("vo",vo);
		return rj;
	}
	
	/***
	 * 审核通过提现
	 * @param
	 */
	@RequestMapping("/passWithdrawls")
	@ResponseBody
	public JSONObject passWithdrawls(Integer id) {
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		
		if(id == null){
			rj.put("msg", "请选择要标记为已处理的提现申请记录");
			return rj;
		}
		
		TraceWithdrawls model = new TraceWithdrawls();
		model.setId(id);
		model.setFinishtime(new Date());
		int result = withdrawlsService.passWithdrawls(model);
		
		if(result == -1){
			rj.put("msg", "无该提现申请记录或该记录不为待处理状态");
			return rj;
		}
	
		rj.put("success", true);
		rj.put("msg", "已标记为已处理");
		return rj;
	}
	

}

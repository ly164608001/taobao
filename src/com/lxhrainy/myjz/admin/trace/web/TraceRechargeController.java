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
import com.lxhrainy.myjz.admin.task.service.ITaskPropertiesService;
import com.lxhrainy.myjz.admin.task.service.ITaskPropertiesValueService;
import com.lxhrainy.myjz.admin.trace.model.TraceRecharge;
import com.lxhrainy.myjz.admin.trace.oe.TraceRechargeVO;
import com.lxhrainy.myjz.admin.trace.service.ITraceRechargeService;
import com.lxhrainy.myjz.common.constant.Global;

@RequestMapping("/admin/trace/recharge")
@Controller
public class TraceRechargeController extends BaseController {

	@Autowired
	ITaskPropertiesValueService propertiesValueService;	
	@Autowired
	ITaskPropertiesService propertiesService;
	@Autowired
	ITraceRechargeService rechargeService;	
	
	/***
	 * 详情
	 * @param
	 */
	@RequestMapping("/rechargeDetail")
	public ModelAndView detail(Integer id) {
		if(id!=null){
			mv.addObject("model", propertiesValueService.getById(id));
		}
		
		mv.setViewName("admin/trace/recharge/rechargeDetail");
		return mv;
	}
	
	/***
	 * 列表
	 * @param
	 */
	@RequestMapping("/rechargeList")
	public ModelAndView list() {
		mv.setViewName("admin/trace/recharge/rechargeList");
		return mv;
	}
	
	@RequestMapping("/datalist")
	@ResponseBody
	public JSONObject listdata(TraceRechargeVO vo) {
		JSONObject rj = new JSONObject();
		List<TraceRecharge> list = rechargeService.getListByPage(vo);
		rj.put("total", vo.getTotalCount());
		rj.put("rows",list);
		rj.put("vo",vo);
		return rj;
	}
	
	/***
	 * 审核通过充值
	 * @param
	 */
	@RequestMapping("/passRecharge")
	@ResponseBody
	public JSONObject passRecharge(Integer id) {
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		
		if(id == null){
			rj.put("msg", "请选择要标记为已处理的充值申请记录");
			return rj;
		}
		
		TraceRecharge model = new TraceRecharge();
		model.setId(id);
		model.setHandletime(new Date());
		model.setHandleuser(getCurrentUser());
		model.setStatus(Global.AUDIT_PASS);
		int result = rechargeService.passRecharge(model);
		
		if(result == -1){
			rj.put("msg", "无该充值申请记录或该记录不为待处理状态");
			return rj;
		}
	
		rj.put("success", true);
		rj.put("msg", "已标记为已处理");
		return rj;
	}
	

}

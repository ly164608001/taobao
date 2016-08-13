package com.lxhrainy.myjz.admin.trace.web;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
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
import com.lxhrainy.myjz.common.constant.Global;

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
	public JSONObject passWithdrawls(TraceWithdrawls withdrawls) {
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		
		if(withdrawls == null || withdrawls.getId() == null || StringUtils.isEmpty(withdrawls.getWithdrawalno())){
			rj.put("msg", "未有选择记录或交易号未填写");
			return rj;
		}
		
		withdrawls.setFinishtime(new Date());
		withdrawls.setStatus(Global.AUDIT_PASS);
		int result = withdrawlsService.passWithdrawls(withdrawls);
		
		if(result == -1){
			rj.put("msg", "无该提现申请记录或该记录不为待处理状态");
			return rj;
		}
	
		rj.put("success", true);
		rj.put("msg", "已标记为已处理");
		return rj;
	}
	

}

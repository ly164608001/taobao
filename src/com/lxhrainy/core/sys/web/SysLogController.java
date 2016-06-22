package com.lxhrainy.core.sys.web;

import java.util.List;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.core.sys.model.SysLog;
import com.lxhrainy.core.sys.oe.SysLogVO;
import com.lxhrainy.core.sys.service.ISysLogService;

/**
 * 日志Controller
 * @author lxhrainy
 * @date 2016-04-15
 * @version 1.0
 */
@Controller
@RequestMapping("/admin/sys/syslog")
public class SysLogController extends BaseController {

	@Autowired
	private ISysLogService sysLogService;
	
	@RequestMapping("/list.htm")
	public ModelAndView list() {
		mv = new ModelAndView("admin/sys/syslog/list");
		return mv;
	}
	
	@RequestMapping("/datalist")
	@ResponseBody
	public JSONObject listdata(SysLogVO vo)
	{
		JSONObject rj = new JSONObject();
		List<SysLog> list = sysLogService.getListByPage(vo);
		rj.put("total", vo.getTotalCount());
		rj.put("rows",list);
		return rj;
	}

	/***
	 * 新增
	 * @param
	 */
	@RequestMapping("/add")
	public ModelAndView add()
	{
		mv.setViewName("admin/sys/syslog/add");
		return mv;
	}
	
	/***
	 * 查看
	 * @param
	 */
	@RequestMapping("/view")
	public ModelAndView view(Integer id)
	{
		if(id != null){
			SysLog model = sysLogService.getById(id);
			mv.addObject("model", model);
		}
		mv.setViewName("admin/sys/syslog/view");
		return mv;
	}
	
	/***
	 * 保存
	 * @param
	 */
	@RequestMapping("/addsave")
	@ResponseBody
	public JSONObject addsave(SysLog model)
	{
		JSONObject rj = new JSONObject();
		int result = sysLogService.save(model);	
		if(result != -1){
			//成功
			rj.put("success", true);
			rj.put("msg", "新增成功");
		}else{
			rj.put("success", false);
			rj.put("msg", "新增失败");
		}
		return rj;
	}
	
	/***
	 * 修改
	 * @param
	 */
	@RequestMapping("/update")
	public ModelAndView update(Integer id)
	{
		if(id != null){
			mv.addObject("model", sysLogService.getById(id));
		}
		mv.setViewName("admin/sys/syslog/update");
		return mv;
	}
	
	/***
	 * 保存
	 * @param
	 */
	@RequestMapping("/updatesave")
	@ResponseBody
	public JSONObject updatesave(SysLog model)
	{
		JSONObject rj = new JSONObject();
		int result = sysLogService.update(model);	
		if(result != -1){
			//成功
			rj.put("success", true);
			rj.put("msg", "更新成功");
		}else{
			rj.put("success", false);
			rj.put("msg", "更新失败");
		}
		return rj;
	}
	
	/***
	 * 删除
	 * @param ID
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public JSONObject delete(Integer id)
	{
		JSONObject rj = new JSONObject();
		sysLogService.deleteById(id);
		rj.put("success", true);
		rj.put("msg", "");
		return rj;
	}

}

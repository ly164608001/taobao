package com.lxhrainy.core.sys.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.core.sys.model.SysArea;
import com.lxhrainy.core.sys.oe.SysAreaVO;
import com.lxhrainy.core.sys.service.ISysAreaService;

/**
 * 角色Controller
 * @author lxhrainy
 * @date 2016-04-15
 * @version 1.0
 */
@Controller
@RequestMapping("/admin/sys/area")
public class SysAreaController extends BaseController {

	@Autowired
	private ISysAreaService sysAreaService;
	
	
	@RequestMapping("/list.htm")
	public ModelAndView list() {
		mv = new ModelAndView("core/sys/area/list");
		return mv;
	}
	
	@RequestMapping("/datalist")
	@ResponseBody
	public JSONObject listdata(SysAreaVO vo)
	{
		JSONObject rj = new JSONObject();
		List<SysArea> list = sysAreaService.getListByPage(vo);
		rj.put("total", vo.getTotalCount());
		rj.put("rows",list);
		return rj;
	}

	/***
	 * 新增
	 * @param
	 */
	@RequestMapping("/add")
	public ModelAndView add(SysArea Area)
	{
		if(Area == null){
			Area = new SysArea();
		}else if(Area.getId() != null){
			Area = sysAreaService.getById(Area.getId());
		}
		mv.addObject("model", Area);
		mv.setViewName("core/sys/area/add");
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
			SysArea model = sysAreaService.getById(id);
			mv.addObject("model", model);
		}
		mv.setViewName("core/sys/area/view");
		return mv;
	}
	
	/***
	 * 保存
	 * @param
	 */
	@RequestMapping("/addsave")
	@ResponseBody
	public JSONObject addsave(SysArea model)
	{
		JSONObject rj = new JSONObject();
		int result = sysAreaService.save(model);	
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
			mv.addObject("model", sysAreaService.getById(id));
		}
		mv.setViewName("core/sys/area/update");
		return mv;
	}
	
	
	/***
	 * 保存
	 * @param
	 */
	@RequestMapping("/updatesave")
	@ResponseBody
	public JSONObject updatesave(SysArea model)
	{
		JSONObject rj = new JSONObject();
		int result = sysAreaService.update(model);	
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
		sysAreaService.deleteById(id);
		rj.put("success", true);
		rj.put("msg", "");
		return rj;
	}
	
}

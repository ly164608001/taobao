package com.lxhrainy.core.sys.web;

import java.util.List;

import com.alibaba.fastjson.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.core.sys.model.SysDict;
import com.lxhrainy.core.sys.oe.SysDictVO;
import com.lxhrainy.core.sys.service.ISysDictService;

/**
 * 字典Controller
 * @author lxhrainy
 * @date 2016-04-15
 * @version 1.0
 */
@Controller
@RequestMapping("/admin/sys/dict")
public class SysDictController extends BaseController {

	@Autowired
	private ISysDictService sysDictService;
	
	@RequestMapping("/list.htm")
	public ModelAndView list() {
		mv = new ModelAndView("core/sys/dict/list");
		return mv;
	}
	
	@RequestMapping("/datalist")
	@ResponseBody
	public JSONObject listdata(SysDictVO vo)
	{
		JSONObject rj = new JSONObject();
		List<SysDict> list = sysDictService.getListByPage(vo);
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
		mv.setViewName("core/sys/dict/add");
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
			SysDict model = sysDictService.getById(id);
			mv.addObject("model", model);
		}
		mv.setViewName("core/sys/dict/view");
		return mv;
	}
	
	/***
	 * 保存
	 * @param
	 */
	@RequestMapping("/addsave")
	@ResponseBody
	public JSONObject addsave(SysDict model)
	{
		JSONObject rj = new JSONObject();
		int result = sysDictService.save(model);	
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
			mv.addObject("model", sysDictService.getById(id));
		}
		mv.setViewName("core/sys/dict/update");
		return mv;
	}
	
	/***
	 * 保存
	 * @param
	 */
	@RequestMapping("/updatesave")
	@ResponseBody
	public JSONObject updatesave(SysDict model)
	{
		JSONObject rj = new JSONObject();
		int result = sysDictService.update(model);	
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
		sysDictService.deleteById(id);
		rj.put("success", true);
		rj.put("msg", "");
		return rj;
	}
	
}

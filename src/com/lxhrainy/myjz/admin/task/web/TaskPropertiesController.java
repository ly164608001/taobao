package com.lxhrainy.myjz.admin.task.web;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.task.model.TaskProperties;
import com.lxhrainy.myjz.admin.task.oe.TaskPropertiesVO;
import com.lxhrainy.myjz.admin.task.service.ITaskPropertiesService;
import com.lxhrainy.myjz.common.constant.Global;

@RequestMapping("/admin/task/properties")
@Controller
public class TaskPropertiesController extends BaseController {

	@Autowired
	ITaskPropertiesService propertiesService;	
	
	/***
	 * 列表
	 * @param
	 */
	@RequestMapping("/propertiesList")
	public ModelAndView list() {
		mv.setViewName("admin/task/properties/propertiesList");
		return mv;
	}
	
	@RequestMapping("/datalist")
	@ResponseBody
	public JSONObject listdata(TaskPropertiesVO vo) {
		JSONObject rj = new JSONObject();
		List<TaskProperties> list = propertiesService.getListByPage(vo);
		rj.put("total", vo.getTotalCount());
		rj.put("rows",list);
		rj.put("vo",vo);
		return rj;
	}
	
	/***
	 * 详情
	 * @param
	 */
	@RequestMapping("/propertiesDetail")
	public ModelAndView detail(Integer id) {
		if(id!=null){
			mv.addObject("model", propertiesService.getById(id));
		}
		
		mv.setViewName("admin/task/properties/propertiesDetail");
		return mv;
	}
	

	/***
	 * 新增
	 * @param
	 */
	@RequestMapping("/propertiesAdd")
	public ModelAndView add(Integer pid) {
		mv.setViewName("admin/task/properties/propertiesAdd");
		return mv;
	}
	
	/***
	 * 新增保存
	 * @param
	 */
	@RequestMapping("/addsave")
	@ResponseBody
	public JSONObject addsave(TaskProperties model) {
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		
		if(model == null || StringUtils.isEmpty(model.getName()) || StringUtils.isEmpty(model.getNeedtype())
				|| StringUtils.isEmpty(model.getNeedtype()) || model.getType() == null
				|| model.getPrice() == null){
			rj.put("msg", "信息填写不完整");
			return rj;
		}
		
		boolean isExist = propertiesService.isExistName(model.getName());
		if(isExist){
			rj.put("msg", "该属性已存在");
			return rj;
		}
		
		model.setStatus(Global.NO);
		propertiesService.save(model);
		rj.put("success", true);
		rj.put("msg", "保存成功");
		return rj;
	}
	
	/***
	 * 修改
	 * @param
	 */
	@RequestMapping("/propertiesUpdate")
	public ModelAndView update(Integer id) {
		if(id != null){
			mv.addObject("model", propertiesService.getById(id));
		}
		
		mv.setViewName("admin/task/properties/propertiesUpdate");
		return mv;
	}
	
	/***
	 * 保存
	 * @param
	 */
	@RequestMapping("/updatesave")
	@ResponseBody
	public JSONObject updatesave(TaskProperties model) {
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		if(model == null){
			rj.put("msg", "信息填写不完整");
			return rj;
		}
		
		String name = model.getName();
		String elemtype = model.getElementtype();
		String elemname = model.getElementname();
		
		if( StringUtils.isEmpty(name) || StringUtils.isEmpty(elemtype)
				|| StringUtils.isEmpty(elemname) ){
			rj.put("msg", "信息填写不完整");
			return rj;
		}
		
		boolean isExist = propertiesService.isExistName(model.getId(),model.getName());
		if(isExist){
			rj.put("msg", "该属性已存在");
			return rj;
		}
		
		
		propertiesService.update(model);
		rj.put("success", true);
		rj.put("msg", "更新成功");
		
		return rj;
	}
	
	/***
	 * 删除
	 * @param ID
	 */
	@RequestMapping("/propertiesDelete")
	@ResponseBody
	public JSONObject delete(Integer id) {
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		
		if(id == null){
			rj.put("msg", "请选择要删除的属性");
			return rj;
		}
		
		int result = propertiesService.delById(id);
		if(result == -1){
			rj.put("msg", "该属性已删除或已被使用,不可删除");
			return rj;
		}
		
		rj.put("success", true);
		rj.put("msg", "删除成功");
		return rj;
	}
}

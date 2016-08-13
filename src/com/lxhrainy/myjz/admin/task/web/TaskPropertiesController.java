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
		
		if(model == null){
			rj.put("success", false);
			rj.put("msg", "保存失败");
		}else{
			if(StringUtils.isEmpty(model.getName()) || StringUtils.isEmpty(model.getNeedtype())
					|| StringUtils.isEmpty(model.getNeedtype()) ){
				rj.put("success", false);
				rj.put("msg", "保存失败");
			}else{
				model.setStatus(Global.YES);
				propertiesService.save(model);
				rj.put("success", true);
				rj.put("msg", "保存成功");
			}
			
		}
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
		String name = null;
		String elemtype = null;
		String elemname = null;
		
		if(model == null ){
			rj.put("success", false);
			rj.put("msg", "更新失败");
		}
		else{
			name = model.getName();
			elemtype = model.getElementtype();
			elemname = model.getElementname();
			if(StringUtils.isEmpty(name) || StringUtils.isEmpty(elemtype)
					|| StringUtils.isEmpty(elemname) ){
				rj.put("success", false);
				rj.put("msg", "保存失败");
			}else{
				TaskProperties oldInfo = propertiesService.getById(model.getId());
				oldInfo.setName(name);
				propertiesService.update(oldInfo);
				rj.put("success", true);
				rj.put("msg", "更新成功");
			}
			
		}
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
		propertiesService.deleteById(id);
		rj.put("success", true);
		rj.put("msg", "删除成功");
		return rj;
	}
	
	/***
	 * 激活
	 * @param ID
	 */
	@RequestMapping("/activate")
	@ResponseBody
	public JSONObject activate(Integer id) {
		JSONObject rj = new JSONObject();
		if(id == null){
			rj.put("success", false);
			rj.put("msg", "激活失败");
		}else{
			//propertiesService.activate(id);
			rj.put("success", true);
		}
		
		return rj;
	}

}

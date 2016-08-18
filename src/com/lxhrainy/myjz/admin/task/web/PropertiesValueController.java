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
import com.lxhrainy.myjz.admin.task.model.TaskPropertiesValue;
import com.lxhrainy.myjz.admin.task.oe.PropertiesValueVO;
import com.lxhrainy.myjz.admin.task.service.ITaskPropertiesService;
import com.lxhrainy.myjz.admin.task.service.ITaskPropertiesValueService;
import com.lxhrainy.myjz.common.constant.Global;

@RequestMapping("/admin/task/propertiesvalue")
@Controller
public class PropertiesValueController extends BaseController {

	@Autowired
	ITaskPropertiesValueService propertiesValueService;	
	@Autowired
	ITaskPropertiesService propertiesService;
	
	/***
	 * 详情
	 * @param
	 */
	@RequestMapping("/propertiesValueDetail")
	public ModelAndView detail(Integer id) {
		if(id!=null){
			mv.addObject("model", propertiesValueService.getById(id));
		}
		
		mv.setViewName("admin/task/propertiesvalue/propertiesValueDetail");
		return mv;
	}
	
	/***
	 * 列表
	 * @param
	 */
	@RequestMapping("/propertiesValueList")
	public ModelAndView list() {
		mv.setViewName("admin/task/propertiesvalue/propertiesValueList");
		return mv;
	}
	
	@RequestMapping("/datalist")
	@ResponseBody
	public JSONObject listdata(PropertiesValueVO vo) {
		JSONObject rj = new JSONObject();
		List<TaskPropertiesValue> list = propertiesValueService.getListByPage(vo);
		rj.put("total", vo.getTotalCount());
		rj.put("rows",list);
		rj.put("vo",vo);
		return rj;
	}

	/***
	 * 新增
	 * @param
	 */
	@RequestMapping("/propertiesValueAdd")
	public ModelAndView add() {
		List<TaskProperties> propertiesList = propertiesService.getAllList(null);
		
		mv.addObject("propertiesList", propertiesList);
		mv.setViewName("admin/task/propertiesvalue/propertiesValueAdd");
		return mv;
	}
	
	/***
	 * 新增保存
	 * @param
	 */
	@RequestMapping("/addsave")
	@ResponseBody
	public JSONObject addsave(TaskPropertiesValue model) {
		JSONObject rj = new JSONObject();
		
		if(model == null){
			rj.put("success", false);
			rj.put("msg", "保存失败");
		}else{
			if(StringUtils.isEmpty(model.getKeyvalue()) || StringUtils.isEmpty(model.getLabel())
					|| model.getProperties() == null ){
				rj.put("success", false);
				rj.put("msg", "保存失败");
			}else{
				if(model.getIsdefault() == null){
					model.setIsdefault(Global.NO);
				}
				propertiesValueService.save(model);
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
	@RequestMapping("/propertiesValueUpdate")
	public ModelAndView update(Integer id) {
		if(id != null){
			List<TaskProperties> propertiesList = propertiesService.getAllList(null);
			mv.addObject("propertiesList", propertiesList);
			mv.addObject("model", propertiesValueService.getById(id));
		}
		
		mv.setViewName("admin/task/propertiesvalue/propertiesValueUpdate");
		return mv;
	}
	
	/***
	 * 保存
	 * @param
	 */
	@RequestMapping("/updatesave")
	@ResponseBody
	public JSONObject updatesave(TaskPropertiesValue model) {
		JSONObject rj = new JSONObject();
		String keyvalue = null;
		String label = null;
		TaskProperties properties = null;
		
		if(model == null ){
			rj.put("success", false);
			rj.put("msg", "更新失败");
		}
		else{
			keyvalue = model.getKeyvalue();
			label = model.getLabel();
			properties = model.getProperties();
			
			if(StringUtils.isEmpty(keyvalue) || StringUtils.isEmpty(label) 
					|| properties == null || properties.getId() == null){
				rj.put("success", false);
				rj.put("msg", "保存失败");
			}else{
				TaskPropertiesValue oldInfo = propertiesValueService.getById(model.getId());
				oldInfo.setKeyvalue(keyvalue);
				oldInfo.setLabel(label);
				oldInfo.setProperties(properties);
				oldInfo.setMemo(model.getMemo());
				propertiesValueService.update(oldInfo);
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
	@RequestMapping("/propertiesValueDelete")
	@ResponseBody
	public JSONObject delete(Integer id) {
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		
		if(id == null){
			rj.put("msg", "请选择要删除的属性值");
			return rj;
		}
		
		int result = propertiesValueService.delById(id);
		if(result == -1){
			rj.put("msg", "该属性值已删除或已被使用,不可删除");
			return rj;
		}
		
		rj.put("success", true);
		rj.put("msg", "删除成功");
		return rj;
	}
	
	/***
	 * 根据属性获取值列表
	 * @param ID
	 */
	@RequestMapping("/getListByProperties")
	@ResponseBody
	public JSONObject getListByProperties(Integer propertiesid) {
		JSONObject rj = new JSONObject();
		rj.put("success", true);
		if(propertiesid != null){
			rj.put("list", propertiesValueService.getListByProperties(propertiesid));
		}
		
		return rj;
	}
	
}

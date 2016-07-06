package com.lxhrainy.myjz.admin.buyer.web;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.buyer.model.LevelInfo;
import com.lxhrainy.myjz.admin.buyer.oe.LevelVO;
import com.lxhrainy.myjz.admin.buyer.service.ILevelService;
import com.lxhrainy.myjz.common.constant.Global;


/**
 * 淘宝等级Controller
 * @author xueyunteng
 * @version 2016-07-06
 */
@Controller
@RequestMapping("/admin/buyer/level")
public class LevelController extends BaseController {

	@Autowired
	private ILevelService levelService;
	
	/***
	 * 详情
	 * @param
	 */
	@RequestMapping("/levelDetail")
	public ModelAndView detail(Integer id) {
		if(id!=null){
			mv.addObject("model", levelService.getById(id));
		}
		
		mv.setViewName("admin/buyer/level/levelDetail");
		return mv;
	}
	
	/***
	 * 列表
	 * @param
	 */
	@RequestMapping("/levelList")
	public ModelAndView list() {
		mv.setViewName("admin/buyer/level/levelList");
		return mv;
	}
	
	@RequestMapping("/datalist")
	@ResponseBody
	public JSONObject listdata(LevelVO vo) {
		JSONObject rj = new JSONObject();
		List<LevelInfo> list = levelService.getListByPage(vo);
		rj.put("total", vo.getTotalCount());
		rj.put("rows",list);
		rj.put("vo",vo);
		return rj;
	}

	/***
	 * 新增
	 * @param
	 */
	@RequestMapping("/levelAdd")
	public ModelAndView add(Integer pid) {
		mv.setViewName("admin/buyer/level/levelAdd");
		return mv;
	}
	
	/***
	 * 新增保存
	 * @param
	 */
	@RequestMapping("/addsave")
	@ResponseBody
	public JSONObject addsave(LevelInfo model) {
		JSONObject rj = new JSONObject();
		if(model == null || model.getIconnum() == null || model.getMaxcredit() == null
				|| model.getMincredit() == null || model.getType() == null 
				|| StringUtils.isEmpty(model.getName())){
			rj.put("success", false);
			rj.put("msg", "保存失败");
		}else{
			model.setDeleted(Global.NO);
			levelService.save(model);
			rj.put("success", true);
			rj.put("msg", "保存成功");
		}
		return rj;
	}
	
	/***
	 * 修改
	 * @param
	 */
	@RequestMapping("/levelUpdate")
	public ModelAndView update(Integer id) {
		if(id != null){
			LevelInfo model = levelService.getById(id);
			mv.addObject("model", model);
		}
		
		mv.setViewName("admin/buyer/level/levelUpdate");
		return mv;
	}
	
	/***
	 * 保存
	 * @param
	 */
	@RequestMapping("/updatesave")
	@ResponseBody
	public JSONObject updatesave(LevelInfo model) {
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		rj.put("msg", "更新失败");
		
		String name = null;
		Integer type = null;
		Integer max = null;
		Integer min = null;
		Integer iconnum = null;
		
		if(model != null && model.getId() != null ){
			name = model.getName();
			type = model.getType();
			max = model.getMaxcredit();
			min = model.getMincredit();
			iconnum = model.getIconnum();
			if(!StringUtils.isEmpty(name) && type != null && max!=null
					&& min != null && iconnum!=null){
				LevelInfo oldInfo = levelService.getById(model.getId());
				oldInfo.setName(name);
				oldInfo.setType(type);
				oldInfo.setMaxcredit(max);
				oldInfo.setMincredit(min);
				oldInfo.setIconnum(iconnum);
				levelService.update(oldInfo);
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
	@RequestMapping("/levelDelete")
	@ResponseBody
	public JSONObject delete(Integer id) {
		JSONObject rj = new JSONObject();
		levelService.deleteById(id);
		rj.put("success", true);
		rj.put("msg", "删除成功");
		return rj;
	}

}
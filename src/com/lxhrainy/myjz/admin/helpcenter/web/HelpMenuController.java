package com.lxhrainy.myjz.admin.helpcenter.web;


import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.core.oe.TreeNode;
import com.lxhrainy.myjz.admin.helpcenter.model.HelpMenu;
import com.lxhrainy.myjz.admin.helpcenter.oe.HelpMenuVO;
import com.lxhrainy.myjz.admin.helpcenter.service.IHelpMenuService;
import com.lxhrainy.myjz.common.constant.Global;

@RequestMapping("/admin/helpcenter/menu")
@Controller
public class HelpMenuController extends BaseController {

	@Autowired
	IHelpMenuService helpMenuService;	
	
	@RequestMapping("/menuManageFrame")
	public ModelAndView manageFrame(){
		mv = new ModelAndView("admin/helpcenter/menu/menuManageFrame");
		return mv;
	}
	
	@RequestMapping("/menutree")
	public ModelAndView menutree() {
		mv = new ModelAndView("admin/helpcenter/menu/menutree");
		return mv;
	}
	
	@RequestMapping("/datamenutree")
	@ResponseBody
	public JSONObject datemenutree() {
		JSONObject rj = new JSONObject();
		List<TreeNode> menuTree = helpMenuService.findTreeNodes();
		rj.put("success", true);
		rj.put("menuJson", JSON.toJSONString(menuTree));
		return rj;
	}
	
	/***
	 * 列表
	 * @param
	 */
	@RequestMapping("/menuList")
	public ModelAndView list(HelpMenuVO vo) {
		mv.setViewName("admin/helpcenter/menu/menuList");
		mv.addObject("vo", vo);
		return mv;
	}
	
	@RequestMapping("/datalist")
	@ResponseBody
	public JSONObject listdata(HelpMenuVO vo) {
		JSONObject rj = new JSONObject();
		List<HelpMenu> list = helpMenuService.getListByPage(vo);
		rj.put("total", vo.getTotalCount());
		rj.put("rows",list);
		rj.put("vo",vo);
		return rj;
	}

	/***
	 * 详情
	 * @param
	 */
	@RequestMapping("/menuDetail")
	public ModelAndView detail(Integer id) {
		if(id!=null){
			mv.addObject("model", helpMenuService.getById(id));
		}
		
		mv.setViewName("admin/helpcenter/menu/menuDetail");
		return mv;
	}
	
	/***
	 * 新增
	 * @param
	 */
	@RequestMapping("/menuAdd")
	public ModelAndView add(Integer pid) {
		HelpMenu parent = null;
		if(pid == null){
			pid = Global.ROOT_HELPMENU_ID;
			parent = new HelpMenu();
			parent.setId(pid);
		}else{
			parent = helpMenuService.getById(pid);
		}
		
		mv.addObject("parent", parent);
		mv.setViewName("admin/helpcenter/menu/menuAdd");
		return mv;
	}
	
	/***
	 * 新增保存
	 * @param
	 */
	@RequestMapping("/addsave")
	@ResponseBody
	public JSONObject addsave(HelpMenu model) {
		JSONObject rj = new JSONObject();
		if(model == null || StringUtils.isEmpty(model.getName())
				|| model.getType() == null){
			rj.put("success", false);
			rj.put("msg", "保存失败");
		}else{
			model.setDeleted(Global.NO);
			helpMenuService.save(model);
			rj.put("success", true);
			rj.put("msg", "保存成功");
		}
		return rj;
	}
	
	/***
	 * 修改
	 * @param
	 */
	@RequestMapping("/menuUpdate")
	public ModelAndView update(Integer id) {
		if(id != null){
			mv.addObject("model", helpMenuService.getById(id));
		}
		
		mv.setViewName("admin/helpcenter/menu/menuUpdate");
		return mv;
	}
	
	/***
	 * 保存
	 * @param
	 */
	@RequestMapping("/updatesave")
	@ResponseBody
	public JSONObject updatesave(HelpMenu model) {
		JSONObject rj = new JSONObject();
		if(model != null && model.getId() > 0){
			HelpMenu oldInfo = helpMenuService.getById(model.getId());
			oldInfo.setName(model.getName());
			oldInfo.setUrl(model.getUrl());
			oldInfo.setSort(model.getSort());
			helpMenuService.update(oldInfo);
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
	@RequestMapping("/menuDelete")
	@ResponseBody
	public JSONObject delete(Integer id) {
		JSONObject rj = new JSONObject();
		helpMenuService.deleteById(id);
		rj.put("success", true);
		rj.put("msg", "删除成功");
		return rj;
	}

	@RequestMapping("/getlistbypid")
	@ResponseBody
	public JSONObject getListByPid(Integer pid) {
		JSONObject rj = new JSONObject();
		List<HelpMenu> list = new ArrayList<HelpMenu>();
		if(pid != null){
			list = helpMenuService.getListByPid(pid);
		}
		
		rj.put("list", list);
		return rj;
	}
	
}

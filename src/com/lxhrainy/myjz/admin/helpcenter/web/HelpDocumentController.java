package com.lxhrainy.myjz.admin.helpcenter.web;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.helpcenter.model.HelpDocument;
import com.lxhrainy.myjz.admin.helpcenter.model.HelpMenu;
import com.lxhrainy.myjz.admin.helpcenter.oe.HelpDocumentVO;
import com.lxhrainy.myjz.admin.helpcenter.service.IHelpDocumentService;
import com.lxhrainy.myjz.admin.helpcenter.service.IHelpMenuService;
import com.lxhrainy.myjz.common.constant.Global;


/**
 * 帮助文档Controller
 * @author xueyunteng
 * @version 2016-06-28
 */
@Controller
@RequestMapping("/admin/helpcenter/document")
public class HelpDocumentController extends BaseController {

	@Autowired
	private IHelpDocumentService helpDocumentService;
	@Autowired
	private IHelpMenuService menuService;
	
	/***
	 * 详情
	 * @param
	 */
	@RequestMapping("/documentDetail")
	public ModelAndView detail(Integer id) {
		if(id!=null){
			mv.addObject("model", helpDocumentService.getById(id));
		}
		
		mv.setViewName("admin/helpcenter/document/documentDetail");
		return mv;
	}
	
	/***
	 * 列表
	 * @param
	 */
	@RequestMapping("/documentList")
	public ModelAndView list() {
		List<HelpMenu> list = menuService.getListByPid(Global.ROOT_HELPMENU_ID);
		
		mv.addObject("list", list);
		mv.setViewName("admin/helpcenter/document/documentList");
		return mv;
	}
	
	@RequestMapping("/datalist")
	@ResponseBody
	public JSONObject listdata(HelpDocumentVO vo) {
		JSONObject rj = new JSONObject();
		List<HelpDocument> list = helpDocumentService.getListByPage(vo);
		rj.put("total", vo.getTotalCount());
		rj.put("rows",list);
		rj.put("vo",vo);
		return rj;
	}

	/***
	 * 新增
	 * @param
	 */
	@RequestMapping("/documentAdd")
	public ModelAndView add(Integer pid) {
		mv.setViewName("admin/helpcenter/document/documentAdd");
		return mv;
	}
	
	/***
	 * 新增保存
	 * @param
	 */
	@RequestMapping("/addsave")
	@ResponseBody
	public JSONObject addsave(HelpDocument model) {
		JSONObject rj = new JSONObject();
		if(model == null || StringUtils.isEmpty(model.getTitle())  
				|| StringUtils.isEmpty(model.getContent()) || model.getMenu() == null
				|| model.getMenu().getId() == null){
			rj.put("success", false);
			rj.put("msg", "保存失败");
		}else{
			model.setDeleted(Global.NO);
			helpDocumentService.save(model);
			rj.put("success", true);
			rj.put("msg", "保存成功");
		}
		return rj;
	}
	
	/***
	 * 修改
	 * @param
	 */
	@RequestMapping("/documentUpdate")
	public ModelAndView update(Integer id) {
		if(id != null){
			HelpDocument model = helpDocumentService.getById(id);
			mv.addObject("model", model);
			if(model != null && model.getMenu() != null){
				mv.addObject("menuname", menuService.getFullnameById(model.getMenu().getId()));
			}
		}
		
		mv.setViewName("admin/helpcenter/document/documentUpdate");
		return mv;
	}
	
	/***
	 * 保存
	 * @param
	 */
	@RequestMapping("/updatesave")
	@ResponseBody
	public JSONObject updatesave(HelpDocument model) {
		JSONObject rj = new JSONObject();
		if(model == null || model.getId() == null || StringUtils.isEmpty(model.getTitle())  
				|| StringUtils.isEmpty(model.getContent()) || model.getMenu() == null
				|| model.getMenu().getId() == null){
			rj.put("success", false);
			rj.put("msg", "更新失败");
		}else{
			HelpDocument oldInfo = helpDocumentService.getById(model.getId());
			oldInfo.setContent(model.getContent());
			oldInfo.setMenu(model.getMenu());
			oldInfo.setSort(model.getSort());
			oldInfo.setTitle(model.getTitle());
			helpDocumentService.update(oldInfo);
			rj.put("success", true);
			rj.put("msg", "更新成功");
		}
		return rj;
	}
	
	/***
	 * 删除
	 * @param ID
	 */
	@RequestMapping("/documentDelete")
	@ResponseBody
	public JSONObject delete(Integer id) {
		JSONObject rj = new JSONObject();
		helpDocumentService.deleteById(id);
		rj.put("success", true);
		rj.put("msg", "删除成功");
		return rj;
	}

}
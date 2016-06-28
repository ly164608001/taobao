package com.lxhrainy.myjz.admin.helpcenter.web;

import java.util.List;

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
	@RequestMapping("/view")
	public ModelAndView detail(Integer id) {
		if(id!=null){
			mv.addObject("model", helpDocumentService.getById(id));
		}
		
		mv.setViewName("admin/helpcenter/document/view");
		return mv;
	}
	
	/***
	 * 列表
	 * @param
	 */
	@RequestMapping("/list")
	public ModelAndView list() {
		List<HelpMenu> list = menuService.getListByPid(Global.ROOT_HELPMENU_ID);
		
		mv.addObject("list", list);
		mv.setViewName("admin/helpcenter/document/list");
		return mv;
	}
	
	@RequestMapping("/datalist")
	@ResponseBody
	public JSONObject listdata(Integer rows, Integer page, HelpDocumentVO vo) {
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
	@RequestMapping("/add")
	public ModelAndView add(Integer pid) {
		
		mv.setViewName("admin/helpcenter/document/add");
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
		if(model == null ){
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
	@RequestMapping("/update")
	public ModelAndView update(Integer id) {
		if(id != null){
			mv.addObject("model", helpDocumentService.getById(id));
		}
		
		mv.setViewName("admin/helpcenter/document/update");
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
		if(model != null && model.getId() > 0){
			HelpDocument oldInfo = helpDocumentService.getById(model.getId());
			helpDocumentService.update(oldInfo);
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
	public JSONObject delete(Integer id) {
		JSONObject rj = new JSONObject();
		helpDocumentService.deleteById(id);
		rj.put("success", true);
		rj.put("msg", "删除成功");
		return rj;
	}

}
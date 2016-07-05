package com.lxhrainy.myjz.admin.seller.web;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.seller.model.Label;
import com.lxhrainy.myjz.admin.seller.model.Praise;
import com.lxhrainy.myjz.admin.seller.oe.PraiseVO;
import com.lxhrainy.myjz.admin.seller.service.ILabelService;
import com.lxhrainy.myjz.admin.seller.service.IPraiseService;
import com.lxhrainy.myjz.common.constant.Global;

@RequestMapping("/admin/seller/praise")
@Controller
public class PraiseController extends BaseController {

	@Autowired
	IPraiseService praiseService;
	@Autowired
	ILabelService labelService;
	
	/***
	 * 详情
	 * @param
	 */
	@RequestMapping("/praiseDetail")
	public ModelAndView detail(Integer id) {
		if(id!=null){
			mv.addObject("model", praiseService.getById(id));
		}
		
		mv.setViewName("admin/seller/praise/praiseDetail");
		return mv;
	}
	
	/***
	 * 列表
	 * @param
	 */
	@RequestMapping("/praiseList")
	public ModelAndView list() {
		mv.setViewName("admin/seller/praise/praiseList");
		return mv;
	}
	
	@RequestMapping("/datalist")
	@ResponseBody
	public JSONObject listdata(PraiseVO vo) {
		JSONObject rj = new JSONObject();
		List<Praise> list = praiseService.getListByPage(vo);
		rj.put("total", vo.getTotalCount());
		rj.put("rows",list);
		rj.put("vo",vo);
		return rj;
	}

	/***
	 * 新增
	 * @param
	 */
	@RequestMapping("/praiseAdd")
	public ModelAndView add(Integer pid) {
		List<Label> labelList = labelService.getPraiseListByUser(this.getCurrentUser().getId());
		mv.addObject("labelList", labelList);
		mv.setViewName("admin/seller/praise/praiseAdd");
		return mv;
	}
	
	/***
	 * 新增保存
	 * @param
	 */
	@RequestMapping("/addsave")
	@ResponseBody
	public JSONObject addsave(Praise model) {
		JSONObject rj = new JSONObject();
		if(model == null || model.getLabel() == null || StringUtils.isEmpty(model.getContent())){
			rj.put("success", false);
			rj.put("msg", "保存失败");
		}else{
			model.setStatus(Global.NO);
			model.setCreatetime(new Date());
			model.setUser(this.getCurrentUser());
			praiseService.save(model);
			rj.put("success", true);
			rj.put("msg", "保存成功");
		}
		return rj;
	}
	
	/***
	 * 修改
	 * @param
	 */
	@RequestMapping("/praiseUpdate")
	public ModelAndView update(Integer id) {
		if(id != null){
			List<Label> labelList = labelService.getPraiseListByUser(this.getCurrentUser().getId());
			mv.addObject("labelList", labelList);
			mv.addObject("model", praiseService.getById(id));
		}
		
		mv.setViewName("admin/seller/praise/praiseUpdate");
		return mv;
	}
	
	/***
	 * 保存
	 * @param
	 */
	@RequestMapping("/updatesave")
	@ResponseBody
	public JSONObject updatesave(Praise model) {
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		rj.put("msg", "更新失败");
		
		String content = null;
		Label label = null;
		
		if(model != null ){
			label = model.getLabel();
			content = model.getContent();
			if(!StringUtils.isEmpty(content) && label != null){
				
				Praise oldInfo = praiseService.getById(model.getId());
				oldInfo.setContent(content);
				oldInfo.setLabel(label);
				oldInfo.setUpdatetime(new Date());
				praiseService.update(oldInfo);
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
	@RequestMapping("/praiseDelete")
	@ResponseBody
	public JSONObject delete(Integer id) {
		JSONObject rj = new JSONObject();
		praiseService.deleteById(id);
		rj.put("success", true);
		rj.put("msg", "删除成功");
		return rj;
	}

}

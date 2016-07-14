package com.lxhrainy.myjz.front.web.seller.label;

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
import com.lxhrainy.myjz.admin.seller.oe.LabelVO;
import com.lxhrainy.myjz.admin.seller.service.ILabelService;

/**
 * 标签控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/seller/label")
@Controller
public class SellerLabelController extends BaseController {
	
	@Autowired
	ILabelService labelService;
	
	/**
	 * 列表
	 * @return
	 */
	@RequestMapping("/labelList")
	public ModelAndView labelList(LabelVO vo){
		Label model = vo.getModel();
		if(model == null){
			model = new Label();
		}
		model.setUser(this.getCurrentUser());
		vo.setModel(model);
		List<Label> list = labelService.getListByPage(vo);
		
		mv.addObject("list", list);
		mv.addObject("vo", vo);
		mv.setViewName("front/seller/label/labelList");
		return mv;
	}
	
	/**
	 * 添加
	 * @return
	 */
	@RequestMapping("/labelAdd")
	public ModelAndView labelAdd(Integer type){
		mv.addObject("type", type);
		mv.setViewName("front/seller/label/labelAdd");
		return mv;
	}
	
	/**
	 * 添加保存
	 * @return
	 */
	@RequestMapping("/addsave")
	@ResponseBody
	public JSONObject addsave(Label model){
		JSONObject rj = new JSONObject();
		if(model == null || StringUtils.isEmpty(model.getName())
				|| model.getSort() == null || model.getType() == null){
			rj.put("success", false);
			rj.put("msg", "保存失败");
		}else{
			model.setCreatetime(new Date());
			model.setUser(this.getCurrentUser());
			labelService.save(model);
			rj.put("success", true);
			rj.put("msg", "保存成功");
		}
		return rj;
	}
	
	/***
	 * 修改
	 * @param
	 */
	@RequestMapping("/labelUpdate")
	public ModelAndView labelUpdate(Integer id) {
		if(id != null){
			mv.addObject("model", labelService.getById(id));
		}
		
		mv.setViewName("front/seller/label/labelUpdate");
		return mv;
	}
	
	
	/***
	 * 更新保存
	 * @param
	 */
	@RequestMapping("/updatesave")
	@ResponseBody
	public JSONObject updatesave(Label model) {
		JSONObject rj = new JSONObject();
		if(model == null || StringUtils.isEmpty(model.getName())
				|| model.getSort() == null || model.getType() == null){
			rj.put("success", false);
			rj.put("msg", "更新失败");
		}
		else{
			Label oldInfo = labelService.getById(model.getId());
			oldInfo.setName(model.getName());
			oldInfo.setSort(model.getSort());
			labelService.update(oldInfo);
			rj.put("success", true);
			rj.put("msg", "更新成功");
		}
		return rj;
	}
	
	/***
	 * 删除
	 * @param ID
	 */
	@RequestMapping("/labelDelete")
	@ResponseBody
	public JSONObject delete(Integer id) {
		JSONObject rj = new JSONObject();
		labelService.deleteById(id);
		rj.put("success", true);
		rj.put("msg", "删除成功");
		return rj;
	}
}
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
import com.lxhrainy.myjz.admin.seller.oe.LabelVO;
import com.lxhrainy.myjz.admin.seller.service.ILabelService;

@RequestMapping("/admin/seller/label")
@Controller
public class LabelController extends BaseController {

	@Autowired
	ILabelService labelService;	
	
	/***
	 * 详情
	 * @param
	 */
	@RequestMapping("/view")
	public ModelAndView detail(Integer id) {
		if(id!=null){
			mv.addObject("model", labelService.getById(id));
		}
		
		mv.setViewName("admin/seller/label/view");
		return mv;
	}
	
	/***
	 * 列表
	 * @param
	 */
	@RequestMapping("/list")
	public ModelAndView list() {
		mv.setViewName("admin/seller/label/list");
		return mv;
	}
	
	@RequestMapping("/datalist")
	@ResponseBody
	public JSONObject listdata(Integer rows, Integer page, LabelVO vo) {
		JSONObject rj = new JSONObject();
		List<Label> list = labelService.getListByPage(vo);
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
		mv.setViewName("admin/seller/label/add");
		return mv;
	}
	
	/***
	 * 新增保存
	 * @param
	 */
	@RequestMapping("/addsave")
	@ResponseBody
	public JSONObject addsave(Label model) {
		JSONObject rj = new JSONObject();
		if(model == null || StringUtils.isEmpty(model.getName())
				|| model.getSort() == null){
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
	@RequestMapping("/update")
	public ModelAndView update(Integer id) {
		if(id != null){
			mv.addObject("model", labelService.getById(id));
		}
		
		mv.setViewName("admin/seller/label/update");
		return mv;
	}
	
	/***
	 * 保存
	 * @param
	 */
	@RequestMapping("/updatesave")
	@ResponseBody
	public JSONObject updatesave(Label model) {
		JSONObject rj = new JSONObject();
		if(model == null || StringUtils.isEmpty(model.getName())
				|| model.getSort() == null){
			rj.put("success", false);
			rj.put("msg", "更新失败");
		}
		else{
			Label oldInfo = labelService.getById(model.getId());
			oldInfo.setName(model.getName());
			oldInfo.setSort(model.getSort());
			oldInfo.setType(model.getType());
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
	@RequestMapping("/delete")
	@ResponseBody
	public JSONObject delete(Integer id) {
		JSONObject rj = new JSONObject();
		labelService.deleteById(id);
		rj.put("success", true);
		rj.put("msg", "删除成功");
		return rj;
	}

}

package com.lxhrainy.myjz.admin.goods.web;


import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.goods.model.GoodsType;
import com.lxhrainy.myjz.admin.goods.oe.GoodsTypeVO;
import com.lxhrainy.myjz.admin.goods.service.IGoodsTypeService;
import com.lxhrainy.myjz.common.constant.Global;

@RequestMapping("/admin/goods/type")
@Controller
public class GoodsTypeController extends BaseController {

	@Autowired
	IGoodsTypeService goodsTypeService;	
	
	/***
	 * 详情
	 * @param
	 */
	@RequestMapping("/typeDetail")
	public ModelAndView detail(Integer id) {
		if(id!=null){
			mv.addObject("model", goodsTypeService.getById(id));
		}
		
		mv.setViewName("admin/goods/type/typeDetail");
		return mv;
	}
	
	/***
	 * 列表
	 * @param
	 */
	@RequestMapping("/typeList")
	public ModelAndView list() {
		mv.setViewName("admin/goods/type/typeList");
		return mv;
	}
	
	@RequestMapping("/datalist")
	@ResponseBody
	public JSONObject listdata(Integer rows, Integer page, GoodsTypeVO vo) {
		JSONObject rj = new JSONObject();
		List<GoodsType> list = goodsTypeService.getListByPage(vo);
		rj.put("total", vo.getTotalCount());
		rj.put("rows",list);
		rj.put("vo",vo);
		return rj;
	}

	/***
	 * 新增
	 * @param
	 */
	@RequestMapping("/typeAdd")
	public ModelAndView add(Integer pid) {
		GoodsType parent = null;
		if(pid == null){
			pid = Global.ROOT_HELPMENU_ID;
			parent = new GoodsType();
			parent.setId(pid);
		}else{
			parent = goodsTypeService.getById(pid);
		}
		
		mv.addObject("parent", parent);
		mv.setViewName("admin/goods/type/typeAdd");
		return mv;
	}
	
	/***
	 * 新增保存
	 * @param
	 */
	@RequestMapping("/addsave")
	@ResponseBody
	public JSONObject addsave(GoodsType model) {
		JSONObject rj = new JSONObject();
		if(model == null || StringUtils.isEmpty(model.getTypename())
				|| model.getStatus() == null || model.getSort() == null){
			rj.put("success", false);
			rj.put("msg", "保存失败");
		}else{
			model.setDeleted(Global.NO);
			goodsTypeService.save(model);
			rj.put("success", true);
			rj.put("msg", "保存成功");
		}
		return rj;
	}
	
	/***
	 * 修改
	 * @param
	 */
	@RequestMapping("/typeUpdate")
	public ModelAndView update(Integer id) {
		if(id != null){
			mv.addObject("model", goodsTypeService.getById(id));
		}
		
		mv.setViewName("admin/goods/type/typeUpdate");
		return mv;
	}
	
	/***
	 * 保存
	 * @param
	 */
	@RequestMapping("/updatesave")
	@ResponseBody
	public JSONObject updatesave(GoodsType model) {
		JSONObject rj = new JSONObject();
		if(model != null && model.getId() > 0){
			GoodsType oldInfo = goodsTypeService.getById(model.getId());
			oldInfo.setTypename(model.getTypename());
			oldInfo.setStatus(model.getStatus());
			oldInfo.setSort(model.getSort());
			goodsTypeService.update(oldInfo);
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
	@RequestMapping("/typeDelete")
	@ResponseBody
	public JSONObject delete(Integer id) {
		JSONObject rj = new JSONObject();
		goodsTypeService.deleteById(id);
		rj.put("success", true);
		rj.put("msg", "删除成功");
		return rj;
	}

}

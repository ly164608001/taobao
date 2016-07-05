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
import com.lxhrainy.myjz.admin.seller.model.Shop;
import com.lxhrainy.myjz.admin.seller.oe.ShopVO;
import com.lxhrainy.myjz.admin.seller.service.IShopService;
import com.lxhrainy.myjz.common.constant.Global;

@RequestMapping("/admin/seller/shop")
@Controller
public class ShopController extends BaseController {

	@Autowired
	IShopService shopService;	
	
	/***
	 * 详情
	 * @param
	 */
	@RequestMapping("/shopDetail")
	public ModelAndView detail(Integer id) {
		if(id!=null){
			mv.addObject("model", shopService.getById(id));
		}
		
		mv.setViewName("admin/seller/shop/shopDetail");
		return mv;
	}
	
	/***
	 * 列表
	 * @param
	 */
	@RequestMapping("/shopList")
	public ModelAndView list() {
		mv.setViewName("admin/seller/shop/shopList");
		return mv;
	}
	
	@RequestMapping("/datalist")
	@ResponseBody
	public JSONObject listdata(Integer rows, Integer page, ShopVO vo) {
		JSONObject rj = new JSONObject();
		List<Shop> list = shopService.getListByPage(vo);
		rj.put("total", vo.getTotalCount());
		rj.put("rows",list);
		rj.put("vo",vo);
		return rj;
	}

	/***
	 * 新增
	 * @param
	 */
	@RequestMapping("/shopAdd")
	public ModelAndView add(Integer pid) {
		mv.setViewName("admin/seller/shop/shopAdd");
		return mv;
	}
	
	/***
	 * 新增保存
	 * @param
	 */
	@RequestMapping("/addsave")
	@ResponseBody
	public JSONObject addsave(Shop model) {
		JSONObject rj = new JSONObject();
		
		if(model == null){
			rj.put("success", false);
			rj.put("msg", "保存失败");
		}else{
			if(StringUtils.isEmpty(model.getName()) || StringUtils.isEmpty(model.getIndexurl())
					|| StringUtils.isEmpty(model.getManager()) ){
				rj.put("success", false);
				rj.put("msg", "保存失败");
			}else{
				model.setAlltasknum(0);
				model.setCreatetime(new Date());
				model.setUser(this.getCurrentUser());
				model.setStatus(Global.NO);
				shopService.save(model);
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
	@RequestMapping("/shopUpdate")
	public ModelAndView update(Integer id) {
		if(id != null){
			mv.addObject("model", shopService.getById(id));
		}
		
		mv.setViewName("admin/seller/shop/shopUpdate");
		return mv;
	}
	
	/***
	 * 保存
	 * @param
	 */
	@RequestMapping("/updatesave")
	@ResponseBody
	public JSONObject updatesave(Shop model) {
		JSONObject rj = new JSONObject();
		String name = null;
		String manager = null;
		String indexurl = null;
		
		if(model == null ){
			rj.put("success", false);
			rj.put("msg", "更新失败");
		}
		else{
			name = model.getName();
			manager = model.getManager();
			indexurl = model.getIndexurl();
			if(StringUtils.isEmpty(name) || StringUtils.isEmpty(manager)
					|| StringUtils.isEmpty(indexurl) ){
				rj.put("success", false);
				rj.put("msg", "保存失败");
			}else{
				Shop oldInfo = shopService.getById(model.getId());
				oldInfo.setName(name);
				oldInfo.setIndexurl(indexurl);
				oldInfo.setManager(manager);
				shopService.update(oldInfo);
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
	@RequestMapping("/shopDelete")
	@ResponseBody
	public JSONObject delete(Integer id) {
		JSONObject rj = new JSONObject();
		shopService.deleteById(id);
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
			shopService.activate(id);
			rj.put("success", true);
		}
		
		return rj;
	}

}

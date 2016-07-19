package com.lxhrainy.myjz.front.web.seller.shop;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.seller.model.Shop;
import com.lxhrainy.myjz.admin.seller.service.IShopService;

@RequestMapping("/front/seller/shop")
@Controller
public class ShopUpdateController extends BaseController {

	@Autowired
	IShopService shopService;
	
	/***
	 * 修改
	 * @param
	 */
	@RequestMapping("/shopUpdate")
	public ModelAndView update(Integer id) {
		if(id != null){
			mv.addObject("model", shopService.getById(id));
		}
		
		mv.setViewName("front/seller/shop/shopUpdate");
		return mv;
	}
	
	/***
	 * 更新保存
	 * @param
	 */
	@RequestMapping("/updatesave")
	@ResponseBody
	public JSONObject updatesave(Shop model) {
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		rj.put("msg", "更新失败");
		
		if(model != null ){
			String name = model.getName();
			if(!StringUtils.isEmpty(name) ){
				Shop oldInfo = shopService.getById(model.getId());
				oldInfo.setName(name);
				shopService.update(oldInfo);
				rj.put("success", true);
				rj.put("msg", "更新成功");
			}
			
		}
		
		return rj;
	}
	
	/***
	 * 激活
	 * @param
	 */
	@RequestMapping("/activate")
	@ResponseBody
	public JSONObject activate(Integer id){
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		
		if(id == null){
			rj.put("msg", "激活失败,参数不全");
			return rj;
		}
		
		int result = shopService.activate(id);
		switch (result) {
			case 1:
				rj.put("success", true);
				break;
			case -1:
				rj.put("msg", "激活失败,无此店铺信息");
				break;
			case -2:
				rj.put("msg", "激活失败,店铺状态非未激活状态");
				break;
			default:
				break;
		}
		
		return rj;
	}
	
	
	@RequestMapping("/cancelActivate")
	@ResponseBody
	public JSONObject cancelActivate(Integer id){
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		
		if(id == null){
			rj.put("msg", "取消激活失败,参数不全");
			return rj;
		}
		
		int result = shopService.cancelActivate(id);
		switch (result) {
			case 1:
				rj.put("success", true);
				break;
			case -1:
				rj.put("msg", "取消激活失败,无此店铺信息");
				break;
			case -2:
				rj.put("msg", "取消激活失败,店铺状态非激活状态");
				break;
			default:
				break;
		}
		
		return rj;
	}
}

package com.lxhrainy.myjz.front.web.seller.shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.seller.service.IShopService;

@RequestMapping("/front/seller/shop")
@Controller
public class ShopDeleteController extends BaseController {

	@Autowired
	IShopService shopService;
	
	/***
	 * 删除
	 * @param ID
	 */
	@RequestMapping("/deleteById")
	@ResponseBody
	public JSONObject deleteById(Integer id) {
		JSONObject rj = new JSONObject();
		shopService.deleteById(id);
		rj.put("success", true);
		rj.put("msg", "删除成功");
		return rj;
	}
	
}

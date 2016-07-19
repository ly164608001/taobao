package com.lxhrainy.myjz.front.web.seller.shop;

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
import com.lxhrainy.myjz.admin.goods.model.GoodsType;
import com.lxhrainy.myjz.admin.goods.service.IGoodsTypeService;
import com.lxhrainy.myjz.admin.seller.model.Shop;
import com.lxhrainy.myjz.admin.seller.service.IShopService;
import com.lxhrainy.myjz.common.constant.Global;

@RequestMapping("/front/seller/shop")
@Controller
public class ShopAddController extends BaseController {

	@Autowired
	IShopService shopService;
	@Autowired
	IGoodsTypeService goodsTypeService;
	
	/***
	 * 新增
	 * @param
	 */
	@RequestMapping("/shopAdd")
	public ModelAndView add() {
		List<GoodsType> goodsTypeList = goodsTypeService.getAllList(null);
		mv.addObject("goodsTypeList", goodsTypeList);
		mv.setViewName("front/seller/shop/shopAdd");
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
		if(model == null || StringUtils.isEmpty(model.getName()) || StringUtils.isEmpty(model.getIndexurl())
				|| StringUtils.isEmpty(model.getManager()) ){
			rj.put("success", false);
			rj.put("msg", "保存失败");
		}else{
			model.setAlltasknum(0);
			model.setStatus(Global.NO);
			model.setCreatetime(new Date());
			model.setUser(this.getCurrentUser());
			shopService.save(model);
			rj.put("success", true);
			rj.put("msg", "保存成功");
		}
		return rj;
	}
	
}

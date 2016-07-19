package com.lxhrainy.myjz.front.web.seller.shop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.seller.model.Shop;
import com.lxhrainy.myjz.admin.seller.oe.ShopVO;
import com.lxhrainy.myjz.admin.seller.service.IShopService;

@RequestMapping("/front/seller/shop")
@Controller
public class ShopSearchController extends BaseController {

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
		
		mv.setViewName("front/seller/shop/shopDetail");
		return mv;
	}
	
	/***
	 * 列表
	 * @param
	 */
	@RequestMapping("/shopList")
	public ModelAndView list(ShopVO vo) {
		Shop model = new Shop();
		model.setUser(getCurrentUser());
		vo.setModel(model);
		List<Shop> list = shopService.getListByPage(vo);
		
		mv.addObject("list",list);
		mv.addObject("vo",vo);
		mv.setViewName("front/seller/shop/shopList");
		return mv;
	}
	
}

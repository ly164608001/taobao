package com.lxhrainy.myjz.front.web.seller.address;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;

/**
 * 收获地址控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/seller/address")
@Controller
public class SellerAddressController extends BaseController {
	
	/**
	 * 列表
	 * @return
	 */
	@RequestMapping("/addressList")
	public ModelAndView taskList(){
		mv.setViewName("front/seller/address/addressList");
		return mv;
	}
	
}
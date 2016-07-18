package com.lxhrainy.myjz.front.web.seller.address;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.seller.service.IReceiptAddressService;

@RequestMapping("/front/seller/address")
@Controller
public class SellerAddressImportController extends BaseController {

	@Autowired
	IReceiptAddressService addressService;
	
	/***
	 * 导入
	 * @param
	 */
	@RequestMapping("/addressImport")
	public ModelAndView addressImport() {
		mv.setViewName("front/seller/address/addressImport");
		return mv;
	}

}

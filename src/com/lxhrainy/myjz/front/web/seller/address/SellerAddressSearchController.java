package com.lxhrainy.myjz.front.web.seller.address;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.seller.model.ReceiptAddress;
import com.lxhrainy.myjz.admin.seller.oe.ReceiptAddressVO;
import com.lxhrainy.myjz.admin.seller.service.ILabelService;
import com.lxhrainy.myjz.admin.seller.service.IReceiptAddressService;

@RequestMapping("/front/seller/address")
@Controller
public class SellerAddressSearchController extends BaseController {

	@Autowired
	IReceiptAddressService addressService;
	@Autowired
	ILabelService labelService;
	
	/***
	 * 详情
	 * @param
	 */
	@RequestMapping("/addressDetail")
	public ModelAndView detail(Integer id) {
		if(id!=null){
			mv.addObject("model", addressService.getById(id));
		}
		
		mv.setViewName("front/seller/address/addressDetail");
		return mv;
	}
	
	/***
	 * 列表
	 * @param
	 */
	@RequestMapping("/addressList")
	public ModelAndView list(ReceiptAddressVO vo) {
		List<ReceiptAddress> list = addressService.getListByPage(vo);
		
		mv.addObject("list",list);
		mv.addObject("vo",vo);
		mv.setViewName("front/seller/address/addressList");
		return mv;
	}
	
}

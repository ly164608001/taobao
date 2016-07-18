package com.lxhrainy.myjz.front.web.seller.address;

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
import com.lxhrainy.myjz.admin.seller.model.ReceiptAddress;
import com.lxhrainy.myjz.admin.seller.service.ILabelService;
import com.lxhrainy.myjz.admin.seller.service.IReceiptAddressService;

@RequestMapping("/front/seller/address")
@Controller
public class SellerAddressUpdateController extends BaseController {

	@Autowired
	IReceiptAddressService addressService;
	@Autowired
	ILabelService labelService;
	
	/***
	 * 修改
	 * @param
	 */
	@RequestMapping("/addressUpdate")
	public ModelAndView update(Integer id) {
		if(id != null){
			List<Label> labelList = labelService.getAddressListByUser(this.getCurrentUser().getId());
			mv.addObject("labelList", labelList);
			mv.addObject("model", addressService.getById(id));
		}
		
		mv.setViewName("front/seller/address/addressUpdate");
		return mv;
	}
	
	/***
	 * 更新保存
	 * @param
	 */
	@RequestMapping("/updatesave")
	@ResponseBody
	public JSONObject updatesave(ReceiptAddress model) {
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		rj.put("msg", "更新失败");
		
		String name = null;
		String phone = null;
		String address = null;
		Label label = null;
		
		if(model != null ){
			name = model.getName();
			phone = model.getPhone();
			address = model.getAddress();
			label = model.getLabel();
			if(!StringUtils.isEmpty(name) && !StringUtils.isEmpty(address)
					&& !StringUtils.isEmpty(phone) && label != null){
				
				ReceiptAddress oldInfo = addressService.getById(model.getId());
				oldInfo.setName(name);
				oldInfo.setPhone(phone);
				oldInfo.setCode(model.getCode());
				oldInfo.setAddress(address);
				oldInfo.setUpdatetime(new Date());
				oldInfo.setLabel(label);
				addressService.update(oldInfo);
				rj.put("success", true);
				rj.put("msg", "更新成功");
			}
			
		}
		
		return rj;
	}
	
}

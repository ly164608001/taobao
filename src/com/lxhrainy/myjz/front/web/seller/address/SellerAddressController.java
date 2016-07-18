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
import com.lxhrainy.myjz.admin.seller.oe.ReceiptAddressVO;
import com.lxhrainy.myjz.admin.seller.service.ILabelService;
import com.lxhrainy.myjz.admin.seller.service.IReceiptAddressService;
import com.lxhrainy.myjz.common.constant.Global;

@RequestMapping("/front/seller/address")
@Controller
public class SellerAddressController extends BaseController {

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
	
	/***
	 * 新增
	 * @param
	 */
	@RequestMapping("/addressAdd")
	public ModelAndView add(Integer pid) {
		List<Label> labelList = labelService.getAddressListByUser(this.getCurrentUser().getId());
		mv.addObject("labelList", labelList);
		mv.setViewName("front/seller/address/addressAdd");
		return mv;
	}
	
	/***
	 * 新增保存
	 * @param
	 */
	@RequestMapping("/addsave")
	@ResponseBody
	public JSONObject addsave(ReceiptAddress model) {
		JSONObject rj = new JSONObject();
		if(model == null || StringUtils.isEmpty(model.getName()) || StringUtils.isEmpty(model.getAddress())
				|| StringUtils.isEmpty(model.getPhone()) || model.getLabel() == null){
			rj.put("success", false);
			rj.put("msg", "保存失败");
		}else{
			model.setStatus(Global.NO);
			model.setCreatetime(new Date());
			model.setUser(this.getCurrentUser());
			addressService.save(model);
			rj.put("success", true);
			rj.put("msg", "保存成功");
		}
		return rj;
	}
	
	/***
	 * 删除
	 * @param ID
	 */
	@RequestMapping("/deleteById")
	@ResponseBody
	public JSONObject deleteById(Integer id) {
		JSONObject rj = new JSONObject();
		addressService.deleteById(id);
		rj.put("success", true);
		rj.put("msg", "删除成功");
		return rj;
	}
	
	@RequestMapping("/deleteByStatus")
	@ResponseBody
	public JSONObject delete(Integer status) {
		JSONObject rj = new JSONObject();
		rj.put("success", true);
		rj.put("msg", "删除成功");
		
		if(status != null){
			addressService.deleteByStatus(status);
		}else{
			rj.put("success", false);
			rj.put("msg", "无状态值");
		}
		
		return rj;
	}

}

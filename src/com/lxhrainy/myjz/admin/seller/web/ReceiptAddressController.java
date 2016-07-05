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
import com.lxhrainy.myjz.admin.seller.model.Label;
import com.lxhrainy.myjz.admin.seller.model.ReceiptAddress;
import com.lxhrainy.myjz.admin.seller.oe.ReceiptAddressVO;
import com.lxhrainy.myjz.admin.seller.service.ILabelService;
import com.lxhrainy.myjz.admin.seller.service.IReceiptAddressService;

@RequestMapping("/admin/seller/receiptaddress")
@Controller
public class ReceiptAddressController extends BaseController {

	@Autowired
	IReceiptAddressService addressService;
	@Autowired
	ILabelService labelService;
	
	/***
	 * 详情
	 * @param
	 */
	@RequestMapping("/receiptaddressDetail")
	public ModelAndView detail(Integer id) {
		if(id!=null){
			mv.addObject("model", addressService.getById(id));
		}
		
		mv.setViewName("admin/seller/receiptaddress/receiptaddressDetail");
		return mv;
	}
	
	/***
	 * 列表
	 * @param
	 */
	@RequestMapping("/receiptaddressList")
	public ModelAndView list() {
		mv.setViewName("admin/seller/receiptaddress/receiptaddressList");
		return mv;
	}
	
	@RequestMapping("/datalist")
	@ResponseBody
	public JSONObject listdata(ReceiptAddressVO vo) {
		JSONObject rj = new JSONObject();
		List<ReceiptAddress> list = addressService.getListByPage(vo);
		rj.put("total", vo.getTotalCount());
		rj.put("rows",list);
		rj.put("vo",vo);
		return rj;
	}

	/***
	 * 新增
	 * @param
	 */
	@RequestMapping("/receiptaddressAdd")
	public ModelAndView add(Integer pid) {
		List<Label> labelList = labelService.getAddressListByUser(this.getCurrentUser().getId());
		mv.addObject("labelList", labelList);
		mv.setViewName("admin/seller/receiptaddress/receiptaddressAdd");
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
			model.setCreatetime(new Date());
			model.setUser(this.getCurrentUser());
			addressService.save(model);
			rj.put("success", true);
			rj.put("msg", "保存成功");
		}
		return rj;
	}
	
	/***
	 * 修改
	 * @param
	 */
	@RequestMapping("/receiptaddressUpdate")
	public ModelAndView update(Integer id) {
		if(id != null){
			List<Label> labelList = labelService.getAddressListByUser(this.getCurrentUser().getId());
			mv.addObject("labelList", labelList);
			mv.addObject("model", addressService.getById(id));
		}
		
		mv.setViewName("admin/seller/receiptaddress/receiptaddressUpdate");
		return mv;
	}
	
	/***
	 * 保存
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
				addressService.update(oldInfo);
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
	@RequestMapping("/receiptaddressDelete")
	@ResponseBody
	public JSONObject delete(Integer id) {
		JSONObject rj = new JSONObject();
		addressService.deleteById(id);
		rj.put("success", true);
		rj.put("msg", "删除成功");
		return rj;
	}

}

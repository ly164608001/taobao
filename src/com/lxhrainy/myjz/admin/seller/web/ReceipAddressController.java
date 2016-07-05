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
import com.lxhrainy.myjz.admin.seller.model.ReceiptAddress;
import com.lxhrainy.myjz.admin.seller.oe.ReceiptAddressVO;
import com.lxhrainy.myjz.admin.seller.service.IReceiptAddressService;

@RequestMapping("/admin/seller/receipaddress")
@Controller
public class ReceipAddressController extends BaseController {

	@Autowired
	IReceiptAddressService addressService;	
	
	/***
	 * 详情
	 * @param
	 */
	@RequestMapping("/receipaddressDetail")
	public ModelAndView detail(Integer id) {
		if(id!=null){
			mv.addObject("model", addressService.getById(id));
		}
		
		mv.setViewName("admin/seller/receipaddress/receipaddressDetail");
		return mv;
	}
	
	/***
	 * 列表
	 * @param
	 */
	@RequestMapping("/receipaddressList")
	public ModelAndView list() {
		mv.setViewName("admin/seller/receipaddress/receipaddressList");
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
	@RequestMapping("/receipaddressAdd")
	public ModelAndView add(Integer pid) {
		mv.setViewName("admin/seller/receipaddress/receipaddressAdd");
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
		if(model == null || StringUtils.isEmpty(model.getName())
				){
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
	@RequestMapping("/receipaddressUpdate")
	public ModelAndView update(Integer id) {
		if(id != null){
			mv.addObject("model", addressService.getById(id));
		}
		
		mv.setViewName("admin/seller/receipaddress/receipaddressUpdate");
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
		if(model == null || StringUtils.isEmpty(model.getName())
				){
			rj.put("success", false);
			rj.put("msg", "更新失败");
		}
		else{
			ReceiptAddress oldInfo = addressService.getById(model.getId());
			oldInfo.setName(model.getName());
			addressService.update(oldInfo);
			rj.put("success", true);
			rj.put("msg", "更新成功");
		}
		return rj;
	}
	
	/***
	 * 删除
	 * @param ID
	 */
	@RequestMapping("/receipaddressDelete")
	@ResponseBody
	public JSONObject delete(Integer id) {
		JSONObject rj = new JSONObject();
		addressService.deleteById(id);
		rj.put("success", true);
		rj.put("msg", "删除成功");
		return rj;
	}

}

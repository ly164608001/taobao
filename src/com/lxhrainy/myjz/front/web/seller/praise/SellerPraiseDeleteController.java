package com.lxhrainy.myjz.front.web.seller.praise;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.seller.service.IPraiseService;

@RequestMapping("/front/seller/praise")
@Controller
public class SellerPraiseDeleteController extends BaseController {

	@Autowired
	IPraiseService praiseService;
	
	/***
	 * 删除
	 * @param ID
	 */
	@RequestMapping("/deleteById")
	@ResponseBody
	public JSONObject deleteById(Integer id) {
		JSONObject rj = new JSONObject();
		praiseService.deleteById(id);
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
			praiseService.deleteByStatus(status);
		}else{
			rj.put("success", false);
			rj.put("msg", "无状态值");
		}
		
		return rj;
	}

}

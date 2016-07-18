package com.lxhrainy.myjz.front.web.seller.praise;

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
import com.lxhrainy.myjz.admin.seller.model.Praise;
import com.lxhrainy.myjz.admin.seller.service.ILabelService;
import com.lxhrainy.myjz.admin.seller.service.IPraiseService;
import com.lxhrainy.myjz.common.constant.Global;

@RequestMapping("/front/seller/praise")
@Controller
public class SellerPraiseAddController extends BaseController {

	@Autowired
	IPraiseService praiseService;
	@Autowired
	ILabelService labelService;
	
	/***
	 * 新增
	 * @param
	 */
	@RequestMapping("/praiseAdd")
	public ModelAndView add(Integer pid) {
		List<Label> labelList = labelService.getAddressListByUser(this.getCurrentUser().getId());
		mv.addObject("labelList", labelList);
		mv.setViewName("front/seller/praise/praiseAdd");
		return mv;
	}
	
	/***
	 * 新增保存
	 * @param
	 */
	@RequestMapping("/addsave")
	@ResponseBody
	public JSONObject addsave(Praise model) {
		JSONObject rj = new JSONObject();
		if(model == null || StringUtils.isEmpty(model.getContent()) || model.getLabel() == null){
			rj.put("success", false);
			rj.put("msg", "保存失败");
		}else{
			model.setStatus(Global.NO);
			model.setCreatetime(new Date());
			model.setUser(this.getCurrentUser());
			praiseService.save(model);
			rj.put("success", true);
			rj.put("msg", "保存成功");
		}
		return rj;
	}
	
}

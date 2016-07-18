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

@RequestMapping("/front/seller/praise")
@Controller
public class SellerPraiseUpdateController extends BaseController {

	@Autowired
	IPraiseService praiseService;
	@Autowired
	ILabelService labelService;
	
	/***
	 * 修改
	 * @param
	 */
	@RequestMapping("/praiseUpdate")
	public ModelAndView update(Integer id) {
		if(id != null){
			List<Label> labelList = labelService.getAddressListByUser(this.getCurrentUser().getId());
			mv.addObject("labelList", labelList);
			mv.addObject("model", praiseService.getById(id));
		}
		
		mv.setViewName("front/seller/praise/praiseUpdate");
		return mv;
	}
	
	/***
	 * 更新保存
	 * @param
	 */
	@RequestMapping("/updatesave")
	@ResponseBody
	public JSONObject updatesave(Praise model) {
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		rj.put("msg", "更新失败");
		
		String content = null;
		String phone = null;
		String praise = null;
		Label label = null;
		
		if(model != null ){
			content = model.getContent();
			label = model.getLabel();
			if(!StringUtils.isEmpty(content) && !StringUtils.isEmpty(praise)
					&& !StringUtils.isEmpty(phone) && label != null){
				
				Praise oldInfo = praiseService.getById(model.getId());
				oldInfo.setContent(content);
				oldInfo.setUpdatetime(new Date());
				oldInfo.setLabel(label);
				praiseService.update(oldInfo);
				rj.put("success", true);
				rj.put("msg", "更新成功");
			}
			
		}
		
		return rj;
	}
	
}

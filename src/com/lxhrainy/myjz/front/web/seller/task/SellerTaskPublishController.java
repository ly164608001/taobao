package com.lxhrainy.myjz.front.web.seller.task;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.myjz.admin.order.model.OrderInfo;
import com.lxhrainy.myjz.admin.order.model.OrderOtherProperties;
import com.lxhrainy.myjz.admin.order.service.IOrderInfoService;
import com.lxhrainy.myjz.admin.seller.model.Shop;
import com.lxhrainy.myjz.admin.seller.service.IShopService;
import com.lxhrainy.myjz.admin.task.model.TaskProperties;
import com.lxhrainy.myjz.admin.task.model.TaskPropertiesValue;
import com.lxhrainy.myjz.admin.task.model.TaskPublish;
import com.lxhrainy.myjz.admin.task.service.ITaskPropertiesService;
import com.lxhrainy.myjz.admin.task.service.ITaskPropertiesValueService;
import com.lxhrainy.myjz.common.constant.Global;

/**
 * 淘宝发布任务控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/seller/task")
@Controller
public class SellerTaskPublishController extends BaseController {
	
	@Autowired
	private IOrderInfoService orderService;
	@Autowired
	private ITaskPropertiesService propertiesService;
	@Autowired
	private ITaskPropertiesValueService valueService;
	@Autowired
	private IShopService shopService;
	
	/**
	 * 任务列表
	 * @return
	 */
	@RequestMapping("/publishPrepare")
	public ModelAndView publishPrepare(){
		List<TaskPublish> list = propertiesService.getTaskPublishList();
		List<TaskPublish> showList = new ArrayList<TaskPublish>();
		//将每个显示模块的任务发布对象保存到mv
		for (TaskPublish taskPublish : list) {
			int type = taskPublish.getType();
			mv.addObject("taskPublish"+type, taskPublish);
		}
		//顺序保存发布任务实体
		for (int i = 1; i <= list.size(); i++) {
			showList.add((TaskPublish)mv.getModelMap().get("taskPublish"+i));
		}
		//获取店铺列表
		List<Shop> shopList = shopService.getListByUser(getCurrentUser().getId());
		
		mv.addObject("shopList", shopList);
		mv.addObject("list", showList);
		mv.setViewName("front/seller/task/publishPrepare");
		return mv;
	}
	

	/**
	 * 发布任务
	 * @return
	 */
	@RequestMapping("/publish")
	@ResponseBody
	public JSONObject publish(String formData,OrderInfo order){
		JSONObject rj = new JSONObject();
		rj.put("success", false);
		JSONArray formDataArr = JSONArray.parseArray(formData);
		if(order == null || StringUtils.isEmpty(formData) || formDataArr== null || formDataArr.size() == 0){
			rj.put("msg", "信息填写不完整，不可发布任务");
			return rj;
		}
		
		List<OrderOtherProperties> proList = new ArrayList<OrderOtherProperties>();
		int totalPrice = 0;
		for (Object formDataObj : formDataArr) {
			JSONObject jsonObj = JSONObject.parseObject(formDataObj.toString());
			int proid = jsonObj.getIntValue("propertiesid");
			Integer valueid = jsonObj.getIntValue("valueid");
			String valuestr = jsonObj.getString("valuestr");
			TaskProperties properties = propertiesService.getById(proid);
			TaskPropertiesValue proValue = valueService.getById(valueid);
			
			//拼凑orderOtherProperties
			OrderOtherProperties otherPro = new OrderOtherProperties();
			if(valueid != null && valueid.intValue() != -1){
				otherPro.setPropertiesval(proValue);
				proList.add(otherPro);
			}else if(StringUtils.isNoneEmpty(valuestr)){
				otherPro.setPropertiesvalue(valuestr);
				proList.add(otherPro);
			}
			
			//订单基本属性拼凑
			Date curDate = new Date();
			order.setCreateuser(getCurrentUser());
			order.setCreatetime(curDate);
			if(Global.NO == order.getIstime().intValue()){
				order.setPublictime(curDate);
				order.setStatus(Global.ORDER_STATUS_PUBLISH);
			}else if(Global.YES == order.getIstime().intValue()){
				order.setStatus(Global.ORDER_STATUS_INIT);
			}
			
			//计算总需蚂蚁币(所属蚂蚁币放于value字段上 )
			if(proValue != null && proValue.getLabel().equals("是")){
				totalPrice += properties.getPrice();
			}
			
		}
			
		int result = orderService.createTask(order, proList, totalPrice);
		if(result == 1){
			rj.put("success", true);
			rj.put("msg", "任务已发布");
		}else{
			rj.put("msg", "余额不足，发布任务失败");
		}
		
		return rj;
	}
	
}
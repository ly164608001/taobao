package com.lxhrainy.myjz.front.web.buyer.account;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.core.sys.model.SysArea;
import com.lxhrainy.core.sys.service.ISysAreaService;
import com.lxhrainy.myjz.admin.buyer.service.IAccountService;

/**
 * 买家小号收获地址控制层
 * @author xueyunteng
 *
 */
@RequestMapping("/front/buyer/account")
@Controller
public class AccountAddressController extends BaseController {
	
	@Autowired
	private IAccountService accountService;
	@Autowired
	ISysAreaService sysAreaService;
	
	/**
	 * 收获地址
	 * @return
	 */
	@RequestMapping("/address")
	public ModelAndView address(){
		mv.setViewName("front/buyer/account/address");
		return mv;
	}
	
	/**
	 * 收获地址新增保存
	 * @return
	 */
	@RequestMapping("/addressSave")
	public JSONObject addressSave(){
		JSONObject rj = new JSONObject();
		return rj;
	}
	
	/**
	 * 获取区域直接下级菜单列表
	 * @param pid
	 * @return
	 */
	@RequestMapping("/getAreasByPid")
	@ResponseBody
	public JSONObject getChilds(Integer pid) {
		JSONObject rj = new JSONObject();
		List<SysArea> list = new ArrayList<SysArea>();
		if(pid == null){
			pid = 100000; //中国id
		}
		list = sysAreaService.getListByPid(pid);
		
		rj.put("list", list);
		return rj;
	}
	
}
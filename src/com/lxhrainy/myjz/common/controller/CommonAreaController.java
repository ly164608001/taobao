package com.lxhrainy.myjz.common.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.core.sys.model.SysArea;
import com.lxhrainy.core.sys.service.ISysAreaService;

/**
 * 区域通用控制层
 * @author xueyunteng
 */
@RequestMapping("/common/area")
@Controller
public class CommonAreaController extends BaseController {
	
	@Autowired
	ISysAreaService sysAreaService;
	
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
	
	/**
	 * 获取同级区域列表和父id
	 * @param id
	 * @return
	 */
	@RequestMapping("/getSiblingsById")
	@ResponseBody
	public JSONObject getsiling(Integer id) {
		JSONObject rj = new JSONObject();
		String pidStr = "";
		
		//获取同级列表
		List<SysArea> list = new ArrayList<SysArea>();
		
		if(id != null){
			SysArea model = sysAreaService.getById(id);
			if(model != null && model.getParent()!=null && model.getParent().getId() != null){
				int pid =  model.getParent().getId();
				list = sysAreaService.getListByPid(pid);
				pidStr = "" + pid;
			}
			
		}
		
		rj.put("pid", pidStr);
		rj.put("list", list);
		return rj;
	}
	
}
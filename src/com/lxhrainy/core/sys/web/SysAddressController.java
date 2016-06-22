package com.lxhrainy.core.sys.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.core.sys.model.SysAddress;
import com.lxhrainy.core.sys.oe.SysAddressVO;
import com.lxhrainy.core.sys.service.ISysAddressService;
import com.lxhrainy.core.utils.StringUtils;

/**
 * 区域Controller
 * @author lxhrainy
 * @date 2016-04-15
 * @version 1.0
 */
@Controller
@RequestMapping("/admin/sys/sysaddress")
public class SysAddressController extends BaseController {

	@Autowired
	private ISysAddressService sysAddressService;
	
	@RequestMapping("/list.htm")
	public ModelAndView list() {
		mv = new ModelAndView("admin/sys/sysaddress/list");
		return mv;
	}
	
	@RequestMapping("/datalist")
	@ResponseBody
	public JSONObject listdata(SysAddressVO vo)
	{
		JSONObject rj = new JSONObject();
		List<SysAddress> list = sysAddressService.getListByPage(vo);
		rj.put("total", vo.getTotalCount());
		rj.put("rows",list);
		return rj;
	}

	/***
	 * 新增
	 * @param
	 */
	@RequestMapping("/add")
	public ModelAndView add()
	{
		mv.setViewName("admin/sys/sysaddress/add");
		return mv;
	}
	
	/***
	 * 查看
	 * @param
	 */
	@RequestMapping("/view")
	public ModelAndView view(Integer id)
	{
		if(id != null){
			SysAddress model = sysAddressService.getById(id);
			mv.addObject("model", model);
		}
		mv.setViewName("admin/sys/sysaddress/view");
		return mv;
	}
	
	/***
	 * 保存
	 * @param
	 */
	@RequestMapping("/addsave")
	@ResponseBody
	public JSONObject addsave(SysAddress model)
	{
		JSONObject rj = new JSONObject();
		int result = sysAddressService.save(model);	
		if(result != -1){
			//成功
			rj.put("success", true);
			rj.put("msg", "新增成功");
		}else{
			rj.put("success", false);
			rj.put("msg", "新增失败");
		}
		return rj;
	}
	
	/***
	 * 修改
	 * @param
	 */
	@RequestMapping("/update")
	public ModelAndView update(Integer id)
	{
		if(id != null){
			mv.addObject("model", sysAddressService.getById(id));
		}
		mv.setViewName("admin/sys/sysaddress/update");
		return mv;
	}
	
	/***
	 * 保存
	 * @param
	 */
	@RequestMapping("/updatesave")
	@ResponseBody
	public JSONObject updatesave(SysAddress model)
	{
		JSONObject rj = new JSONObject();
		int result = sysAddressService.update(model);	
		if(result != -1){
			//成功
			rj.put("success", true);
			rj.put("msg", "更新成功");
		}else{
			rj.put("success", false);
			rj.put("msg", "更新失败");
		}
		return rj;
	}
	
	/***
	 * 删除
	 * @param ID
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public JSONObject delete(Integer id)
	{
		JSONObject rj = new JSONObject();
		sysAddressService.deleteById(id);
		rj.put("success", true);
		rj.put("msg", "");
		return rj;
	}


	@ResponseBody
	@RequestMapping("/treeData")
	public List<Map<String, Object>> treeData(@RequestParam(required=false) String extId, SysAddressVO vo, HttpServletResponse response) {
		List<Map<String, Object>> mapList = Lists.newArrayList();
		List<SysAddress> list = sysAddressService.getAllList(vo);
		for (int i=0; i<list.size(); i++){
			SysAddress e = list.get(i);
			if (StringUtils.isBlank(extId) || (extId!=null && !extId.equals(e.getId()))){
				Map<String, Object> map = Maps.newHashMap();
				map.put("id", e.getId());
				map.put("pId", e.getParent().getId());
				map.put("name", e.getName());
				mapList.add(map);
			}
		}
		return mapList;
	}
}

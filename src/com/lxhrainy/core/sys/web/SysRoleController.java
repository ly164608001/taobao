package com.lxhrainy.core.sys.web;

import java.util.Date;
import java.util.List;

import net.sf.json.JSONArray;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.core.sys.model.SysRole;
import com.lxhrainy.core.sys.oe.SysRoleVO;
import com.lxhrainy.core.sys.service.ISysRoleService;
import com.lxhrainy.myjz.common.constant.Global;

/**
 * 角色Controller
 * @author lxhrainy
 * @date 2016-04-15
 * @version 1.0
 */
@Controller
@RequestMapping("/admin/sys/role")
public class SysRoleController extends BaseController {

	@Autowired
	private ISysRoleService sysRoleService;
	
	
	@RequestMapping("/roleList")
	public ModelAndView list() {
		mv = new ModelAndView("core/sys/role/roleList");
		return mv;
	}
	
	@RequestMapping("/datalist")
	@ResponseBody
	public JSONObject listdata(SysRoleVO vo)
	{
		JSONObject rj = new JSONObject();
		List<SysRole> list = sysRoleService.getListByPage(vo);
		rj.put("total", vo.getTotalCount());
		rj.put("rows",list);
		return rj;
	}

	/***
	 * 新增
	 * @param
	 */
	@RequestMapping("/roleAdd")
	public ModelAndView add(SysRole role)
	{
		if(role == null){
			role = new SysRole();
		}else if(role.getId() != null){
			role = sysRoleService.getById(role.getId());
		}
		mv.addObject("model", role);
		mv.setViewName("core/sys/role/roleAdd");
		return mv;
	}
	
	/***
	 * 查看
	 * @param
	 */
	@RequestMapping("/roleDetail")
	public ModelAndView view(Integer id)
	{
		if(id != null){
			SysRole model = sysRoleService.getById(id);
			mv.addObject("model", model);
		}
		mv.setViewName("core/sys/role/roleDetail");
		return mv;
	}
	
	/***
	 * 保存
	 * @param
	 */
	@RequestMapping("/addsave")
	@ResponseBody
	public JSONObject addsave(SysRole model)
	{
		JSONObject rj = new JSONObject();
		if(model.getId() == null){
			model.setCreateuser(getCurrentUser());
			model.setCreatetime(new Date());
		}
		model.setUseable(Global.ENABLE);
		model.setUpdateuser(getCurrentUser());
		model.setUpdatetime(new Date());
		int result = sysRoleService.save(model);	
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
	@RequestMapping("/roleUpdate")
	public ModelAndView update(Integer id)
	{
		if(id != null){
			mv.addObject("model", sysRoleService.getById(id));
		}
		mv.setViewName("core/sys/role/roleUpdate");
		return mv;
	}
	
	
	/***
	 * 保存
	 * @param
	 */
	@RequestMapping("/updatesave")
	@ResponseBody
	public JSONObject updatesave(SysRole model)
	{
		JSONObject rj = new JSONObject();
		model.setUpdateuser(getCurrentUser());
		model.setUpdatetime(new Date());
		int result = sysRoleService.update(model);	
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
	@RequestMapping("/roleDelete")
	@ResponseBody
	public JSONObject delete(Integer id)
	{
		JSONObject rj = new JSONObject();
		sysRoleService.deleteById(id);
		rj.put("success", true);
		rj.put("msg", "");
		return rj;
	}
	
	/***
	 * 用户分配角色页面
	 * @param
	 */
	@RequestMapping("/roletree")
	public ModelAndView roletree(Integer userid) {
		mv.setViewName("core/sys/role/roletree");
		mv.addObject("userid", userid);
		return mv;
	}
	
	@RequestMapping("/userroletree")
	@ResponseBody
	public JSONArray userroletree(Integer userid) {
		return JSONArray.fromObject(sysRoleService.getSelectTree(userid));
	}
	
	@RequestMapping("/userrolesave")
	@ResponseBody
	public JSONObject userrolesave(Integer userid,String rolesid) {
		JSONObject jo = new JSONObject();
		if(userid == null || StringUtils.isEmpty(rolesid)){
			jo.put("success", false);
			jo.put("msg", "用户或权限信息不全");
			return jo;
		}
		
		sysRoleService.userRoleSave(userid,rolesid);
		jo.put("success", true);
		return jo;
	}
	
}

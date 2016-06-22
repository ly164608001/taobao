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
import com.lxhrainy.core.sys.oe.SysAddressVO;
import com.lxhrainy.core.sys.service.ISysRoleService;

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
	
	
	@RequestMapping("/list.htm")
	public ModelAndView list() {
		mv = new ModelAndView("core/sys/role/list");
		return mv;
	}
	
	@RequestMapping("/datalist")
	@ResponseBody
	public JSONObject listdata(SysAddressVO vo)
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
	@RequestMapping("/add")
	public ModelAndView add(SysRole role)
	{
		if(role == null){
			role = new SysRole();
		}else if(role.getId() != null){
			role = sysRoleService.getById(role.getId());
		}
		mv.addObject("model", role);
		mv.setViewName("core/sys/role/add");
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
			SysRole model = sysRoleService.getById(id);
			mv.addObject("model", model);
		}
		mv.setViewName("core/sys/role/view");
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
			//model.setCreateuser(getCurrentUser());
			model.setCreatetime(new Date());
		}
		//model.setUpdateuser(getCurrentUser());
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
	@RequestMapping("/update")
	public ModelAndView update(Integer id)
	{
		if(id != null){
			mv.addObject("model", sysRoleService.getById(id));
		}
		mv.setViewName("core/sys/role/update");
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
	@RequestMapping("/delete")
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
	
	
	/**
	 * 角色分配页面
	 * @param role
	 * @param model
	 * @return
	 */
	/*@RequestMapping("/assign")
	public String assign(SysRole role, Model model) {
		List<User> userList = systemService.findUser(new User(new Role(role.getId())));
		model.addAttribute("userList", userList);
		return "modules/sys/roleAssign";
	}*/
	
	/**
	 * 角色分配 -- 打开角色分配对话框
	 * @param role
	 * @param model
	 * @return
	 */
	/*@RequestMapping("/usertorole")
	public String selectUserToRole(Role role, Model model) {
		List<User> userList = systemService.findUser(new User(new Role(role.getId())));
		model.addAttribute("role", role);
		model.addAttribute("userList", userList);
		model.addAttribute("selectIds", Collections3.extractToString(userList, "name", ","));
		model.addAttribute("officeList", officeService.findAll());
		return "modules/sys/selectUserToRole";
	}*/
	
	/**
	 * 角色分配 -- 从角色中移除用户
	 * @param userId
	 * @param roleId
	 * @param redirectAttributes
	 * @return
	 */
	/*@RequestMapping("/outrole")
	public String outrole(String userId, String roleId, RedirectAttributes redirectAttributes) {
		if(Global.isDemoMode()){
			addMessage(redirectAttributes, "演示模式，不允许操作！");
			return "redirect:" + adminPath + "/sys/role/assign?id="+roleId;
		}
		Role role = systemService.getRole(roleId);
		User user = systemService.getUser(userId);
		if (UserUtils.getUser().getId().equals(userId)) {
			addMessage(redirectAttributes, "无法从角色【" + role.getName() + "】中移除用户【" + user.getName() + "】自己！");
		}else {
			if (user.getRoleList().size() <= 1){
				addMessage(redirectAttributes, "用户【" + user.getName() + "】从角色【" + role.getName() + "】中移除失败！这已经是该用户的唯一角色，不能移除。");
			}else{
				Boolean flag = systemService.outUserInRole(role, user);
				if (!flag) {
					addMessage(redirectAttributes, "用户【" + user.getName() + "】从角色【" + role.getName() + "】中移除失败！");
				}else {
					addMessage(redirectAttributes, "用户【" + user.getName() + "】从角色【" + role.getName() + "】中移除成功！");
				}
			}		
		}
		return "redirect:" + adminPath + "/sys/role/assign?id="+role.getId();
	}*/
	
	/**
	 * 角色分配
	 * @param role
	 * @param idsArr
	 * @param redirectAttributes
	 * @return
	 */
	/*@RequestMapping("/assignrole")
	public String assignRole(Role role, String[] idsArr, RedirectAttributes redirectAttributes) {
		if(Global.isDemoMode()){
			addMessage(redirectAttributes, "演示模式，不允许操作！");
			return "redirect:" + adminPath + "/sys/role/assign?id="+role.getId();
		}
		StringBuilder msg = new StringBuilder();
		int newNum = 0;
		for (int i = 0; i < idsArr.length; i++) {
			User user = systemService.assignUserToRole(role, systemService.getUser(idsArr[i]));
			if (null != user) {
				msg.append("<br/>新增用户【" + user.getName() + "】到角色【" + role.getName() + "】！");
				newNum++;
			}
		}
		addMessage(redirectAttributes, "已成功分配 "+newNum+" 个用户"+msg);
		return "redirect:" + adminPath + "/sys/role/assign?id="+role.getId();
	}*/

	/**
	 * 验证角色名是否有效
	 * @param oldName
	 * @param name
	 * @return
	 */
	/*@ResponseBody
	@RequestMapping("/checkName")
	public String checkName(String oldName, String name) {
		if (name!=null && name.equals(oldName)) {
			return "true";
		} else if (name!=null && roleService.getRoleByName(name) == null) {
			return "true";
		}
		return "false";
	}*/

	/**
	 * 验证角色英文名是否有效
	 * @param oldName
	 * @param name
	 * @return
	 */
	/*@ResponseBody
	@RequestMapping("/checkEnname")
	public String checkEnname(String oldEnname, String enname) {
		if (enname!=null && enname.equals(oldEnname)) {
			return "true";
		} else if (enname!=null && systemService.getRoleByEnname(enname) == null) {
			return "true";
		}
		return "false";
	}
*/
}

package com.lxhrainy.core.sys.web;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.google.common.collect.Lists;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.core.oe.TreeNode;
import com.lxhrainy.core.sys.model.SysMenu;
import com.lxhrainy.core.sys.oe.SysMenuVO;
import com.lxhrainy.core.sys.service.ISysMenuService;
import com.lxhrainy.myjz.common.constant.Global;

/**
 * 菜单Controller
 * @author lxhrainy
 * @date 2016-04-15
 * @version 1.0
 */
@Controller
@RequestMapping("/admin/sys/menu")
public class SysMenuController extends BaseController {

	@Autowired
	private ISysMenuService sysMenuService;
	
	@RequestMapping("/menuManageFrame")
	public ModelAndView manageFrame(){
		mv = new ModelAndView("core/sys/menu/menuManageFrame");
		return mv;
	}
	
	@RequestMapping("/menutree")
	public ModelAndView menutree() {
		mv = new ModelAndView("core/sys/menu/menutree");
		return mv;
	}
	
	@RequestMapping("/datamenutree")
	@ResponseBody
	public JSONObject datemenutree() {
		JSONObject rj = new JSONObject();
		List<TreeNode> menuTree = sysMenuService.findTreeNodes();
		rj.put("success", true);
		rj.put("menuJson", JSON.toJSONString(menuTree));
		return rj;
	}
	
	@RequestMapping("/menuList")
	public ModelAndView list(SysMenuVO vo) {
		mv = new ModelAndView("core/sys/menu/menuList");
		mv.addObject("vo", vo);
		return mv;
	}
	
	@RequestMapping("/datalist")
	@ResponseBody
	public JSONObject listdata(SysMenuVO vo)
	{
		JSONObject rj = new JSONObject();
		List<SysMenu> list = sysMenuService.getListByPage(vo);
		rj.put("total", vo.getTotalCount());
		rj.put("rows",list);
		return rj;
	}

	/***
	 * 新增
	 * @param
	 */
	@RequestMapping("/menuAdd")
	public ModelAndView add(SysMenu menu)
	{
		if(menu == null ){
			menu = new SysMenu();
		}else if(menu.getId() != null){
			menu = sysMenuService.getById(menu.getId());
		}
		if (menu.getParent()==null || menu.getParent().getId()==null){
			menu.setParent(new SysMenu(Global.ROOT_MENU_ID, Global.ROOT_MENU_NAME));
		}
		menu.setParent(sysMenuService.getById(menu.getParent().getId()));
		// 获取排序号，最末节点排序号+1
		if (menu.getId() == null){
			List<SysMenu> list = Lists.newArrayList();
			List<SysMenu> sourcelist = sysMenuService.getAllList(null);
			SysMenu.sortList(list, sourcelist, menu.getParentId(), false);
			if (list.size() > 0){
				menu.setSort(list.get(list.size()-1).getSort() + 1);
			}else{
				menu.setSort(1);
			}
		}
		mv.addObject("model", menu);
		mv.setViewName("core/sys/menu/menuAdd");
		return mv;
	}
	
	/***
	 * 查看
	 * @param
	 */
	@RequestMapping("/menuDetail")
	public ModelAndView view(Integer id)
	{
		if(id != null){
			SysMenu model = sysMenuService.getById(id);
			mv.addObject("model", model);
		}
		mv.setViewName("core/sys/menu/view");
		return mv;
	}
	
	/***
	 * 保存
	 * @param
	 */
	@RequestMapping("/addsave")
	@ResponseBody
	public JSONObject addsave(SysMenu model)
	{
		JSONObject rj = new JSONObject();
		if(model.getId() == null){
			model.setCreateuser(getCurrentUser());
			model.setCreatetime(new Date());
		}
		model.setUpdateuser(getCurrentUser());
		model.setUpdatetime(new Date());
		int result = sysMenuService.save(model);	
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
	@RequestMapping("/menuUpdate")
	public ModelAndView update(Integer id)
	{
		if(id != null){
			mv.addObject("model", sysMenuService.getById(id));
		}
		mv.setViewName("core/sys/menu/menuUpdate");
		return mv;
	}
	
	/***
	 * 保存
	 * @param
	 */
	@RequestMapping("/updatesave")
	@ResponseBody
	public JSONObject updatesave(SysMenu model)
	{
		JSONObject rj = new JSONObject();
		model.setUpdatetime(new Date());
		model.setUpdateuser(getCurrentUser());
		int result = sysMenuService.update(model);	
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
	@RequestMapping("/menuDelete")
	@ResponseBody
	public JSONObject delete(Integer id)
	{
		JSONObject rj = new JSONObject();
		sysMenuService.deleteById(id);
		rj.put("success", true);
		rj.put("msg", "");
		return rj;
	}

	@RequestMapping("/rolemenutree")
	public ModelAndView rolemenutree(Integer roleid) {
		mv = new ModelAndView("core/sys/menu/rolemenutree");
		mv.addObject("radom", Math.random());
		mv.addObject("roleid", roleid);
		return mv;
	}
	
	@RequestMapping("/datarolemenutree")
	@ResponseBody
	public JSONObject datarolemenutree(Integer roleid)
	{
		JSONObject rj = new JSONObject();
		List<TreeNode> result = new ArrayList<TreeNode>();
		if(roleid != null){
			result = sysMenuService.getMenuTreeByRoleId(roleid);
		}
		rj.put("success", true);
		rj.put("menuJson", JSON.toJSONString(result));
		return rj;
	}
	
	/**
	 * 保存权限
	 * @param type		类型
	 * @param id		用户ID或角色ID
	 * @param menuids	权限ID列表
	 * @return
	 */
	@RequestMapping("/rolemenusave")
	@ResponseBody
	public JSONObject rolemenusave(Integer roleid,String menuids)
	{
		JSONObject rj = new JSONObject();
		sysMenuService.saveRoleMenu(roleid,menuids);
		rj.put("success", true);
		rj.put("msg", "");
		return rj;
	}

}

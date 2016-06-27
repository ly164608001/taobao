package com.lxhrainy.core.sys.web;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.alibaba.fastjson.JSONObject;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.lxhrainy.core.common.controller.BaseController;
import com.lxhrainy.core.oe.TreeNode;
import com.lxhrainy.core.sys.model.SysMenu;
import com.lxhrainy.core.sys.oe.SysMenuVO;
import com.lxhrainy.core.sys.service.ISysMenuService;
import com.lxhrainy.core.utils.StringUtils;
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
	
	@RequestMapping("/list")
	public ModelAndView list() {
		mv = new ModelAndView("core/sys/menu/list");
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
	@RequestMapping("/add")
	public ModelAndView add(SysMenu menu)
	{
		if(menu == null ){
			menu = new SysMenu();
		}else if(menu.getId() != null){
			menu = sysMenuService.getById(menu.getId());
		}
		if (menu.getParent()==null || menu.getParent().getId()==null){
			menu.setParent(new SysMenu(Global.ROOT_MENU_ID));
		}
		menu.setParent(sysMenuService.getById(menu.getParent().getId()));
		// 获取排序号，最末节点排序号+30
		if (menu.getId() == null){
			List<SysMenu> list = Lists.newArrayList();
			List<SysMenu> sourcelist = sysMenuService.getAllList(null);
			SysMenu.sortList(list, sourcelist, menu.getParentId(), false);
			if (list.size() > 0){
				menu.setSort(list.get(list.size()-1).getSort() + 30);
			}
		}
		mv.addObject("model", menu);
		mv.setViewName("core/sys/menu/add");
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
	@RequestMapping("/update")
	public ModelAndView update(Integer id)
	{
		if(id != null){
			mv.addObject("model", sysMenuService.getById(id));
		}
		mv.setViewName("core/sys/menu/update");
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
	@RequestMapping("/delete")
	@ResponseBody
	public JSONObject delete(Integer id)
	{
		JSONObject rj = new JSONObject();
		sysMenuService.deleteById(id);
		rj.put("success", true);
		rj.put("msg", "");
		return rj;
	}

	@RequestMapping("/menutree")
	public ModelAndView menutree(Integer roleid) {
		mv.addObject("radom", Math.random());
		mv.addObject("roleid", roleid);
		mv.setViewName("core/sys/menu/menutree");
		return mv;
	}
	
	@RequestMapping("/datamenutree")
	@ResponseBody
	public JSONArray datamenutree(Integer roleid)
	{
		List<TreeNode> result = new ArrayList<TreeNode>();
		if(roleid != null){
			result = sysMenuService.getMenuTreeByRoleId(roleid);
		}
		return JSONArray.fromObject(result);
	}
	
	/**
	 * 保存权限
	 * @param type		类型
	 * @param id		用户ID或角色ID
	 * @param menuids	权限ID列表
	 * @return
	 */
	@RequestMapping("/menutreesave")
	@ResponseBody
	public JSONObject menutreesave(Integer roleid,String menuids)
	{
		JSONObject rj = new JSONObject();
		sysMenuService.saveRoleMenu(roleid,menuids);
		rj.put("success", true);
		rj.put("msg", "");
		return rj;
	}

	@RequestMapping("/treeselect")
	public String treeselect(String parentId, Model model) {
		model.addAttribute("parentId", parentId);
		return "core/sys/menu/menuTreeselect";
	}
	
	/**
	 * 批量修改菜单排序
	 */
	@RequestMapping("/updateSort")
	public JSONObject updateSort(Integer[] ids, Integer[] sorts, RedirectAttributes redirectAttributes) {
    	for (int i = 0; i < ids.length; i++) {
    		SysMenu menu = new SysMenu(ids[i]);
    		menu.setSort(sorts[i]);
    		sysMenuService.updateSort(menu);
    	}
    	JSONObject rj = new JSONObject();
    	rj.put("success", true);
		rj.put("msg", "保存菜单排序成功!");
		return rj;
	}
	
	/**
	 * isShowHide是否显示隐藏菜单
	 * @param extId
	 * @param isShowHidden
	 * @param response
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/treeData")
	public List<Map<String, Object>> treeData(@RequestParam(required=false) String extId, SysMenuVO vo, @RequestParam(required=false) String isShowHide, HttpServletResponse response) {
		List<Map<String, Object>> mapList = Lists.newArrayList();
		List<SysMenu> list = sysMenuService.getAllList(vo);
		for (int i=0; i<list.size(); i++){
			SysMenu e = list.get(i);
			if (StringUtils.isBlank(extId) || (extId!=null && !extId.equals(e.getId()) && e.getParentids().indexOf(","+extId+",")==-1)){
				if(isShowHide != null && isShowHide.equals("0") && e.getIsshow().intValue()==0){
					continue;
				}
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

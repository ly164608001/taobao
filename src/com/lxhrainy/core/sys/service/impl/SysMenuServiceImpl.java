package com.lxhrainy.core.sys.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.core.oe.TreeNode;
import com.lxhrainy.core.sys.dao.ISysMenuDao;
import com.lxhrainy.core.sys.model.SysMenu;
import com.lxhrainy.core.sys.model.SysRoleMenu;
import com.lxhrainy.core.sys.service.ISysMenuService;
import com.lxhrainy.core.utils.HostAddrUtil;
import com.lxhrainy.core.utils.StringUtils;
import com.lxhrainy.myjz.common.constant.Global;

/**
 * @ClassName: OrderServiceImpl 
 * @Description: 订单Service实现类
 * @author lxhrainy 
 * @date 2016年5月20日 上午11:32:34
 */
@Service("sysMenuService")
@Transactional(readOnly = true)
public class SysMenuServiceImpl extends AbstractBaseServiceImpl<ISysMenuDao, SysMenu, Integer>
	implements ISysMenuService{

	@Autowired
	ISysMenuDao sysMenuDao;
	private List<Integer> temprightids;
	
	@Override
	@Transactional(readOnly=false)
	public int save(SysMenu menu) {
		
		// 获取父节点实体
		menu.setParent(this.getById(menu.getParent().getId()));
		
		// 获取修改前的parentIds，用于更新子节点的parentIds
		String oldParentIds = menu.getParentids(); 
		
		// 设置新的父节点串
		menu.setParentids(menu.getParent().getParentids()+","+menu.getParent().getId());

		int result = -1;
		// 保存或更新实体
		if (menu.getId()==null){
			result = sysMenuDao.insert(menu);
		}else{
			result = sysMenuDao.update(menu);
		}
		
		// 更新子节点 parentIds
		SysMenu m = new SysMenu();
		m.setParentids("%,"+menu.getId()+",%");
		List<SysMenu> list = sysMenuDao.findByParentIdsLike(m);
		for (SysMenu e : list){
			e.setParentids(e.getParentids().replace(oldParentIds, menu.getParentids()));
			sysMenuDao.updateParentIds(e);
		}
		
		return result;
	}

	@Override
	public List<SysMenu> findByParentIdsLike(SysMenu menu) {
		return sysMenuDao.findByParentIdsLike(menu);
	}
	
	@Override
	public List<SysMenu> getTreeByUserId(Integer userId, Integer belong, String target) {
		List<SysMenu> menuList = sysMenuDao.findByUserIdWithType(userId, belong, Global.YES, target);
		List<SysMenu> result = new ArrayList<SysMenu>();
		if(menuList != null && menuList.size() > 0){
			for(SysMenu menu : menuList){
				List<SysMenu> children = menu.getChildren();
				for(SysMenu submenu : menuList){
					if(submenu.getParent().getId().intValue() == menu.getId().intValue()){
						children.add(submenu);
					}
				}
			}
			
			for(SysMenu menu : menuList){
				if(menu.getParent().getId().intValue() == Global.ROOT_MENU_ID){
					result.add(menu);
				}
			}
		}
		return result;
	}

	@Override
	public List<SysMenu> findByUserIdWithType(Integer userId, Integer belong) {
		List<SysMenu> menuList = sysMenuDao.findByUserIdWithType(userId, belong, null, null);
		return menuList;
	}

	@Transactional(readOnly=false)
	@Override
	public int updateParentIds(SysMenu menu) {
		return sysMenuDao.updateParentIds(menu);
	}

	@Transactional(readOnly=false)
	@Override
	public int updateSort(SysMenu menu) {
		return sysMenuDao.updateSort(menu);
	}
	
	@Override
	public List<TreeNode> findTreeNodes() {
		List<TreeNode> result = new ArrayList<TreeNode>();
		List<SysMenu>  list =  sysMenuDao.findAllList(null);
		
		if(list != null && list.size() > 0){
			TreeNode bean = new TreeNode();
			for (SysMenu entity : list) {
				bean = new TreeNode();
				bean.setId(entity.getId());
				bean.setUpId(entity.getParentId());
				bean.setName(entity.getName());
				if (entity.getId().intValue() == 1) {
					bean.setOpen(true);
				}
				if( isInRightIds(entity.getId()))
				{
					bean.setChecked(true);
				}
				bean.setUrl(HostAddrUtil.getHostAddr()
						+ "admin/sys/menu/menuList.htm?parentid="
						+ entity.getId());
				bean.setTarget("rightList");
				result.add(bean);
			}
		}
		return result;
	}

	@Override
	public List<TreeNode> getMenuTreeByRoleId(Integer roleid) {
		temprightids = sysMenuDao.getMenuIdsByRoleId(roleid);
		return findTreeNodesForRole();
	}

	@Override
	public List<TreeNode> findTreeNodesForRole() {
		List<TreeNode> result = new ArrayList<TreeNode>();
		List<SysMenu>  list =  sysMenuDao.findAllList(null);
		
		if(list != null && list.size() > 0){
			TreeNode bean = new TreeNode();
			for (SysMenu entity : list) {
				bean = new TreeNode();
				bean.setId(entity.getId());
				bean.setUpId(entity.getParentId());
				bean.setName(entity.getName());
				bean.setOpen(true);
				if( isInRightIds(entity.getId()))
				{
					bean.setChecked(true);
				}
				result.add(bean);
			}
		}
		return result;
	}
	
	private boolean isInRightIds(int rightid)
	{
		if(temprightids == null)
			return false;
		for(Integer i : temprightids)
		{
			if(i==rightid)
				return true;
		}
		return false;
	}

	@Transactional(readOnly=false)
	@Override
	public void saveRoleMenu(Integer roleid, String menuids) {
		if(roleid != null){
			List<Integer> menuIdList = StringUtils.getIntListByString(menuids);
			List<SysRoleMenu> list = new ArrayList<SysRoleMenu>();
			for(Integer menuId : menuIdList){
				SysRoleMenu roleMenu = new SysRoleMenu();
				roleMenu.setMenuid(menuId);
				roleMenu.setRoleid(roleid);
				list.add(roleMenu);
			}
			//删除原有权限
			sysMenuDao.deleteRoleMenuByRoleId(roleid);
			if(StringUtils.isNotEmpty(menuids)){
				//插入现有权限
				sysMenuDao.bathSaveRoleMenu(list);
			}
		}
	}

	@Override
	public List<SysMenu> findByParentId(Integer parentId) {
		return sysMenuDao.findByParentId(parentId);
	}

}

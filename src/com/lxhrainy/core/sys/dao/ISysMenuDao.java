package com.lxhrainy.core.sys.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.core.sys.model.SysMenu;
import com.lxhrainy.core.sys.model.SysRoleMenu;

/**
 * 菜单DAO接口
 * @author lxhrainy
 * @date 2016-04-15
 * @version 1.0
 */
@MyBatisDao
public interface ISysMenuDao extends IBaseDao<SysMenu> {

	public List<SysMenu> findByParentIdsLike(SysMenu menu);

	public List<SysMenu> findByUserIdWithType(@Param("userId")Integer userId, @Param("belong")Integer belong, @Param("isShow")Integer isShow);
	
	public int updateParentIds(SysMenu menu);
	
	public int updateSort(SysMenu menu);

	public List<SysMenu> findByParentId(@Param("parentId")int parentId);
	
	public List<Integer> getMenuIdsByRoleId(@Param("roleId")Integer roleId);

	public void bathSaveRoleMenu(@Param("menuList")List<SysRoleMenu> list);

	public void deleteRoleMenuByRoleId(@Param("roleid")Integer roleid);
	
}

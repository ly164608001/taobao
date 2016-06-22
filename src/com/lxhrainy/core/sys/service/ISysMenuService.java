package com.lxhrainy.core.sys.service;

import java.util.List;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.core.oe.TreeNode;
import com.lxhrainy.core.sys.model.SysMenu;

/**
 * ISysUserService
 * @Description:用户管理
 * @author lxhrainy 
 * @date 2016年5月27日 上午10:33:35
 */
public interface ISysMenuService extends IBaseService<SysMenu, Integer>{
	/**
	 * @Title: findByParentIdsLike 
	 * @Description: 根据父级ID获取菜单数据
	 * @param @param menu
	 * @param @return    设定文件 
	 * @return List<SysMenu>    返回类型 
	 * @throws
	 */
	public List<SysMenu> findByParentIdsLike(SysMenu menu);

	/**
	 * @Title: findByUserId 
	 * @Description: 获取用户的菜单数据
	 * @param  userId:用户ID
	 * @param  type:类型
	 * @param @return    设定文件 
	 * @return List<SysMenu>    返回类型 
	 * @throws
	 */
	public List<SysMenu> findByUserIdWithType(Integer userId, Integer belong);
	
	/**
	 * @Title: updateParentIds 
	 * @Description: 更新父级ID
	 * @param @param menu
	 * @param @return    设定文件 
	 * @return int    返回类型 
	 * @throws
	 */
	public int updateParentIds(SysMenu menu);
	
	/**
	 * @Title: updateSort 
	 * @Description: 更新排序
	 * @param @param menu
	 * @param @return    设定文件 
	 * @return int    返回类型 
	 * @throws
	 */
	public int updateSort(SysMenu menu);

	/**
	 * @Title: getMenuTreeByRoleId 
	 * @Description: 获取权限树 
	 * @param @param roleid : 角色ID
	 * @param @return    设定文件 
	 * @return List<TreeNode>    返回类型 
	 * @throws
	 */
	public List<TreeNode> getMenuTreeByRoleId(Integer roleid);
	
	/**
	 * @Title: findTreeNodesByParentId 
	 * @Description: 获取子级树形列表
	 * @param @param parentId
	 * @param @return    设定文件 
	 * @return List<TreeNode>    返回类型 
	 * @throws
	 */
	public List<TreeNode> findTreeNodesByParentId(Integer parentId);
	
	/**
	 * @Title: findByParentId 
	 * @Description: 获取子级列表
	 * @param @param parentId
	 * @param @return    设定文件 
	 * @return List<TreeNode>    返回类型 
	 * @throws
	 */
	public List<SysMenu> findByParentId(Integer parentId);

	/**
	 * @Title: saveRoleMenu 
	 * @Description: 保存角色权限
	 * @param @param roleid
	 * @param @param menuids    设定文件 
	 * @return void    返回类型 
	 * @throws
	 */
	public void saveRoleMenu(Integer roleid, String menuids);

	/**
	 * @param admin 
	 * @Title: getTreeByUserId 
	 * @Description: 根据用户ID获取权限树
	 * @param @param userId
	 * @param @param type 菜单类型
	 * @param @return    设定文件 
	 * @return List<SysMenu>    返回类型 
	 * @throws
	 */
	List<SysMenu> getTreeByUserId(Integer userId, Integer type);

}

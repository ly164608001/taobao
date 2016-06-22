package com.lxhrainy.core.sys.model;

/**
 * 角色-菜单
 * @author 系统
 */
public class SysRoleMenu
{
	/**角色编号**/
	private Integer roleid;
	/**菜单编号**/
	private Integer menuid;

	public Integer getRoleid()
	{
		return this.roleid;
	}
	public void setRoleid(Integer roleid)
	{
		this.roleid = roleid;
	}
	public Integer getMenuid()
	{
		return this.menuid;
	}
	public void setMenuid(Integer menuid)
	{
		this.menuid = menuid;
	}
}
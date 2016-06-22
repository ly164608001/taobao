package com.lxhrainy.core.sys.model;

/**
 * 用户-角色
 * @author 系统
 */
public class SysUserRole
{
	/**用户编号**/
	private Integer userid;
	/**角色编号**/
	private Integer roleid;

	public Integer getUserid()
	{
		return this.userid;
	}
	public void setUserid(Integer userid)
	{
		this.userid = userid;
	}
	public Integer getRoleid()
	{
		return this.roleid;
	}
	public void setRoleid(Integer roleid)
	{
		this.roleid = roleid;
	}
}
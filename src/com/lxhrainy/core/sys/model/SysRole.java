package com.lxhrainy.core.sys.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.google.common.collect.Lists;
import com.lxhrainy.core.common.model.BaseModel;
import com.lxhrainy.core.utils.StringUtils;
/**
 * 角色表
 * @author 系统
 */
public class SysRole extends BaseModel
{
	private static final long serialVersionUID = -4047650278156804656L;
	/**角色名称**/
	private String name;
	/**英文名称**/
	private String enname;
	/**数据范围**/
	private String datascope;
	/**是否系统数据**/
	private String issys;
	/**是否可用**/
	private Integer useable;
	/**创建者**/
	private UserInfo createuser;
	/**创建时间**/
	private Date createtime;
	/**更新者**/
	private UserInfo updateuser;
	/**更新时间**/
	private Date updatetime;
	/**备注信息**/
	private String remarks;
	/**删除标记**/
	private Integer deleted = 0;
	
	private List<SysMenu> menuList = Lists.newArrayList(); // 拥有菜单列表

	public String getName()
	{
		return this.name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getEnname()
	{
		return this.enname;
	}
	public void setEnname(String enname)
	{
		this.enname = enname;
	}
	public String getDatascope()
	{
		return this.datascope;
	}
	public void setDatascope(String datascope)
	{
		this.datascope = datascope;
	}
	public String getIssys()
	{
		return this.issys;
	}
	public void setIssys(String issys)
	{
		this.issys = issys;
	}
	public Integer getUseable()
	{
		return this.useable;
	}
	public void setUseable(Integer useable)
	{
		this.useable = useable;
	}
	public UserInfo getCreateuser()
	{
		return this.createuser;
	}
	public void setCreateuser(UserInfo createuser)
	{
		this.createuser = createuser;
	}
	public Date getCreatetime()
	{
		return this.createtime;
	}
	public void setCreatetime(Date createtime)
	{
		this.createtime = createtime;
	}
	public UserInfo getUpdateuser()
	{
		return this.updateuser;
	}
	public void setUpdateuser(UserInfo updateuser)
	{
		this.updateuser = updateuser;
	}
	public Date getUpdatetime()
	{
		return this.updatetime;
	}
	public void setUpdatetime(Date updatetime)
	{
		this.updatetime = updatetime;
	}
	public String getRemarks()
	{
		return this.remarks;
	}
	public void setRemarks(String remarks)
	{
		this.remarks = remarks;
	}
	public Integer getDeleted()
	{
		return this.deleted;
	}
	public void setDeleted(Integer deleted)
	{
		this.deleted = deleted;
	}
	public List<SysMenu> getMenuList() {
		return menuList;
	}
	public void setMenuList(List<SysMenu> menuList) {
		this.menuList = menuList;
	}
	
	public List<Integer> getMenuIdList() {
		List<Integer> menuIdList = Lists.newArrayList();
		for (SysMenu menu : menuList) {
			menuIdList.add(menu.getId());
		}
		return menuIdList;
	}

	public void setMenuIdList(List<Integer> menuIdList) {
		menuList = Lists.newArrayList();
		for (Integer menuId : menuIdList) {
			SysMenu menu = new SysMenu();
			menu.setId(menuId);
			menuList.add(menu);
		}
	}

	public String getMenuIds() {
		return StringUtils.join(getMenuIdList(), ",");
	}
	
	public void setMenuIds(String menuIds) {
		menuList = Lists.newArrayList();
		if (menuIds != null){
			String[] ids = StringUtils.split(menuIds, ",");
			List<Integer> idList = new ArrayList<Integer>();
			for(String id : ids){
				idList.add(Integer.parseInt(id));
			}
			setMenuIdList(idList);
		}
	}
}
package com.lxhrainy.core.sys.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.lxhrainy.core.common.model.BaseModel;
/**
 * 菜单表
 * @author 系统
 */
public class SysMenu extends BaseModel
{
	private static final long serialVersionUID = -8265823472738357147L;
	/**父级编号**/
	private SysMenu parent;
	/**所有父级编号**/
	private String parentids;
	/**名称**/
	private String name;
	/**排序**/
	private Integer sort;
	/**菜单类型**/
	private Integer type;
	/**所属**/
	private Integer belong;
	/**链接**/
	private String href;
	/**目标**/
	private String target;
	/**图标**/
	private String icon;
	/**是否在菜单中显示**/
	private Integer isshow;
	/**权限标识**/
	private String permission;
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
	
	List<SysMenu> children = new ArrayList<SysMenu>();
	
	public SysMenu(){
		
	}
	
	public SysMenu(Integer id){
		this();
		this.id = id;
	}
	
	public SysMenu(Integer id, String name){
		this();
		this.id = id;
		this.name = name;
	}

	public SysMenu getParent()
	{
		return this.parent;
	}
	public void setParent(SysMenu parent)
	{
		this.parent = parent;
	}
	public String getParentids()
	{
		return this.parentids;
	}
	public void setParentids(String parentids)
	{
		this.parentids = parentids;
	}
	public String getName()
	{
		return this.name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public Integer getSort()
	{
		return this.sort;
	}
	public void setSort(Integer sort)
	{
		this.sort = sort;
	}
	
	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Integer getBelong() {
		return belong;
	}

	public void setBelong(Integer belong) {
		this.belong = belong;
	}

	public String getHref()
	{
		return this.href;
	}
	public void setHref(String href)
	{
		this.href = href;
	}
	public String getTarget()
	{
		return this.target;
	}
	public void setTarget(String target)
	{
		this.target = target;
	}
	public String getIcon()
	{
		return this.icon;
	}
	public void setIcon(String icon)
	{
		this.icon = icon;
	}
	public Integer getIsshow()
	{
		return this.isshow;
	}
	public void setIsshow(Integer isshow)
	{
		this.isshow = isshow;
	}
	public String getPermission()
	{
		return this.permission;
	}
	public void setPermission(String permission)
	{
		this.permission = permission;
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
	
	public List<SysMenu> getChildren() {
		return children;
	}

	public void setChildren(List<SysMenu> children) {
		this.children = children;
	}

	public Integer getParentId() {
		return parent != null && parent.getId() != null ? parent.getId() : 0;
	}
	
	@JsonIgnore
	public static void sortList(List<SysMenu> list, List<SysMenu> sourcelist, Integer parentId, boolean cascade){
		for (int i=0; i<sourcelist.size(); i++){
			SysMenu e = sourcelist.get(i);
			if (e.getParent()!=null && e.getParent().getId()!=null
					&& e.getParent().getId().equals(parentId)){
				list.add(e);
				if (cascade){
					// 判断是否还有子节点, 有则继续获取子节点
					for (int j=0; j<sourcelist.size(); j++){
						SysMenu child = sourcelist.get(j);
						if (child.getParent()!=null && child.getParent().getId()!=null
								&& child.getParent().getId().equals(e.getId())){
							sortList(list, sourcelist, e.getId(), true);
							break;
						}
					}
				}
			}
		}
	}
}
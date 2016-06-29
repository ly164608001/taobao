package com.lxhrainy.core.sys.model;

import java.util.Date;

import com.lxhrainy.core.common.model.BaseModel;
/**
 * sys_dict
 * @author 系统
 */
public class SysDict extends BaseModel
{
	private static final long serialVersionUID = -6204157405024392L;
	/**名称**/
	private String value;
	/**标签名**/
	private String label;
	/**类型**/
	private String type;
	/**描述**/
	private String description;
	/**排序**/
	private Integer sort;
	/**父级ID**/
	private Integer parentid;
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

	public String getValue()
	{
		return this.value;
	}
	public void setValue(String value)
	{
		this.value = value;
	}
	public String getLabel()
	{
		return this.label;
	}
	public void setLabel(String label)
	{
		this.label = label;
	}
	public String getType()
	{
		return this.type;
	}
	public void setType(String type)
	{
		this.type = type;
	}
	public String getDescription()
	{
		return this.description;
	}
	public void setDescription(String description)
	{
		this.description = description;
	}
	public Integer getSort()
	{
		return this.sort;
	}
	public void setSort(Integer sort)
	{
		this.sort = sort;
	}
	public Integer getParentid()
	{
		return this.parentid;
	}
	public void setParentid(Integer parentid)
	{
		this.parentid = parentid;
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
	public UserInfo getCreateuser() {
		return createuser;
	}
	public void setCreateuser(UserInfo createBy) {
		this.createuser = createBy;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public UserInfo getUpdateuser() {
		return updateuser;
	}
	public void setUpdateuser(UserInfo updateBy) {
		this.updateuser = updateBy;
	}
	public Date getUpdatetime() {
		return updatetime;
	}
	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
	
}
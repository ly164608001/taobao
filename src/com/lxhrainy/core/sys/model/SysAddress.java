package com.lxhrainy.core.sys.model;

import com.lxhrainy.core.common.model.BaseModel;
/**
 * 全国省市区街道
 * @author 系统
 */
public class SysAddress extends BaseModel
{
	private static final long serialVersionUID = 3972750379836452321L;
	/**父级ID**/
	private SysAddress parent;
	/**区域名称**/
	private String name;
	/**级别**/
	private Integer depth;
	/**删除标识**/
	private Integer deleted;

	
	public SysAddress getParent() {
		return parent;
	}
	public void setParent(SysAddress parent) {
		this.parent = parent;
	}
	public String getName()
	{
		return this.name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public Integer getDepth()
	{
		return this.depth;
	}
	public void setDepth(Integer depth)
	{
		this.depth = depth;
	}
	public Integer getDeleted() {
		return deleted;
	}
	public void setDeleted(Integer deleted) {
		this.deleted = deleted;
	}
	
}
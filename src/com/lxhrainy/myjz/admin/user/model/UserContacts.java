package com.lxhrainy.myjz.admin.user.model;

import java.sql.Timestamp;

import com.lxhrainy.core.common.model.BaseModel;
/**
 * 常用联系人
 * @author xueyunteng
 */
public class UserContacts extends BaseModel
{
	/**
	*/ 
	private static final long serialVersionUID = 1L;
	/**账号ID**/
	private Integer userid;
	/**购房者姓名**/
	private String name;
	/**购房者身份证号码**/
	private String idcard;
	/**购房者联系电话**/
	private String phone;
	/**创建时间**/
	private Timestamp createtime;
	/**删除标识**/
	private Integer deleted;

	public Integer getUserid()
	{
		return this.userid;
	}
	public void setUserid(Integer userid)
	{
		this.userid = userid;
	}
	public String getName()
	{
		return this.name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getIdcard()
	{
		return this.idcard;
	}
	public void setIdcard(String idcard)
	{
		this.idcard = idcard;
	}
	public String getPhone()
	{
		return this.phone;
	}
	public void setPhone(String phone)
	{
		this.phone = phone;
	}
	public Timestamp getCreatetime()
	{
		return this.createtime;
	}
	public void setCreatetime(Timestamp createtime)
	{
		this.createtime = createtime;
	}
	public Integer getDeleted()
	{
		return this.deleted;
	}
	public void setDeleted(Integer deleted)
	{
		this.deleted = deleted;
	}
}
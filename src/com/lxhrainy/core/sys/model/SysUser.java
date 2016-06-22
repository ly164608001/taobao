package com.lxhrainy.core.sys.model;

import java.util.Date;

import com.lxhrainy.core.common.model.BaseModel;
/**
 * 用户表
 * @author 系统
 */
public class SysUser extends BaseModel
{
	/**
	*/ 
	private static final long serialVersionUID = -5987855444583931785L;
	/**登录名**/
	private String loginname;
	/**密码**/
	private String password;
	/**工号**/
	private String no;
	/**姓名**/
	private String name;
	/**邮箱**/
	private String email;
	/**电话**/
	private String phone;
	/**手机**/
	private String mobile;
	/**用户类型**/
	private Integer usertype;
	/**用户头像**/
	private String photo;
	/**最后登陆IP**/
	private String loginip;
	/**最后登陆时间**/
	private Date logintime;
	/**是否可登录**/
	private Integer loginflag;
	/**创建者**/
	private SysUser createuser;
	/**创建时间**/
	private Date createtime;
	/**更新者**/
	private SysUser updateuser;
	/**更新时间**/
	private Date updatetime;
	/**备注信息**/
	private String remarks;
	/**删除标记**/
	private Integer deleted = 0;

	public String getLoginname()
	{
		return this.loginname;
	}
	public void setLoginname(String loginname)
	{
		this.loginname = loginname;
	}
	public String getPassword()
	{
		return this.password;
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
	public String getNo()
	{
		return this.no;
	}
	public void setNo(String no)
	{
		this.no = no;
	}
	public String getName()
	{
		return this.name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	public String getEmail()
	{
		return this.email;
	}
	public void setEmail(String email)
	{
		this.email = email;
	}
	public String getPhone()
	{
		return this.phone;
	}
	public void setPhone(String phone)
	{
		this.phone = phone;
	}
	public String getMobile()
	{
		return this.mobile;
	}
	public void setMobile(String mobile)
	{
		this.mobile = mobile;
	}
	public Integer getUsertype()
	{
		return this.usertype;
	}
	public void setUsertype(Integer usertype)
	{
		this.usertype = usertype;
	}
	public String getPhoto()
	{
		return this.photo;
	}
	public void setPhoto(String photo)
	{
		this.photo = photo;
	}
	public String getLoginip()
	{
		return this.loginip;
	}
	public void setLoginip(String loginip)
	{
		this.loginip = loginip;
	}
	public Date getLogintime()
	{
		return this.logintime;
	}
	public void setLogintime(Date logintime)
	{
		this.logintime = logintime;
	}
	public Integer getLoginflag()
	{
		return this.loginflag;
	}
	public void setLoginflag(Integer loginflag)
	{
		this.loginflag = loginflag;
	}
	public SysUser getCreateuser()
	{
		return this.createuser;
	}
	public void setCreateuser(SysUser createuser)
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
	public SysUser getUpdateuser()
	{
		return this.updateuser;
	}
	public void setUpdateuser(SysUser updateuser)
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
}
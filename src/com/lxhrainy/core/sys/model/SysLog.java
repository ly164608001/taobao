package com.lxhrainy.core.sys.model;

import java.util.Date;

import com.lxhrainy.core.common.model.BaseModel;
/**
 * sys_log
 * @author 系统
 */
public class SysLog extends BaseModel
{
	private static final long serialVersionUID = 3960612006391980849L;
	/**日志类型**/
	private Integer type;
	/**日志标题**/
	private String title;
	/**创建人**/
	private SysUser createuser;
	/**创建时间**/
	private Date createtime;
	/**操作IP地址**/
	private String remoteip;
	/**用户代理**/
	private String useragent;
	/**请求uri**/
	private String requesturi;
	/**操作方式**/
	private String method;
	/**操作提交的数据**/
	private String params;
	/**异常信息**/
	private String exception;

	public Integer getType()
	{
		return this.type;
	}
	public void setType(Integer type)
	{
		this.type = type;
	}
	public String getTitle()
	{
		return this.title;
	}
	public void setTitle(String title)
	{
		this.title = title;
	}
	public String getRemoteip()
	{
		return this.remoteip;
	}
	public void setRemoteip(String remoteip)
	{
		this.remoteip = remoteip;
	}

	public SysUser getCreateuser() {
		return createuser;
	}
	public void setCreateuser(SysUser createuser) {
		this.createuser = createuser;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public String getUseragent() {
		return useragent;
	}
	public void setUseragent(String useragent) {
		this.useragent = useragent;
	}
	public String getRequesturi()
	{
		return this.requesturi;
	}
	public void setRequesturi(String requesturi)
	{
		this.requesturi = requesturi;
	}
	public String getMethod()
	{
		return this.method;
	}
	public void setMethod(String method)
	{
		this.method = method;
	}
	public String getParams()
	{
		return this.params;
	}
	public void setParams(String params)
	{
		this.params = params;
	}
	public String getException()
	{
		return this.exception;
	}
	public void setException(String exception)
	{
		this.exception = exception;
	}
}
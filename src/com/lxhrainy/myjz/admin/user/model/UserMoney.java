package com.lxhrainy.myjz.admin.user.model;

import com.lxhrainy.core.common.model.BaseModel;
/**
 * 账户信息
 * @author xueyunteng
 */
public class UserMoney extends BaseModel
{
	/**
	*/ 
	private static final long serialVersionUID = 1L;
	/**账号ID**/
	private Integer userid;
	/**总余额**/
	private Double allbalance;
	/**可用余额**/
	private Double usablebalance;
	/**冻结金额**/
	private Double frozenbalance;
	/**支付密码**/
	private String paypassword;
	/**删除标识**/
	private Integer deleted;
	/**账号状态**/
	private Integer status;
	/**备注**/
	private String memo;

	public Integer getUserid()
	{
		return this.userid;
	}
	public void setUserid(Integer userid)
	{
		this.userid = userid;
	}
	public Double getAllbalance()
	{
		return this.allbalance;
	}
	public void setAllbalance(Double allbalance)
	{
		this.allbalance = allbalance;
	}
	public Double getUsablebalance()
	{
		return this.usablebalance;
	}
	public void setUsablebalance(Double usablebalance)
	{
		this.usablebalance = usablebalance;
	}
	public Double getFrozenbalance()
	{
		return this.frozenbalance;
	}
	public void setFrozenbalance(Double frozenbalance)
	{
		this.frozenbalance = frozenbalance;
	}
	public Integer getDeleted()
	{
		return this.deleted;
	}
	public void setDeleted(Integer deleted)
	{
		this.deleted = deleted;
	}
	public String getPaypassword() {
		return paypassword;
	}
	public void setPaypassword(String paypassword) {
		this.paypassword = paypassword;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	
}
package com.lxhrainy.myjz.admin.user.model;

import java.sql.Timestamp;

import com.lxhrainy.core.common.model.BaseModel;
/**
 * 企业信息
 * @author xueyunteng
 */
public class UserEnterpriseInfo extends BaseModel
{
	/**
	*/ 
	private static final long serialVersionUID = 1L;
	/**账号ID**/
	private Integer userid;
	/**公司名称**/
	private String enterprisename;
	/**LOGO图片地址**/
	private String logo;
	/**公司官网**/
	private String website;
	/**电话**/
	private String telephone;
	/**所在地**/
	private String location;
	/**详细地址**/
	private String detailaddress;
	/**经度**/
	private Double longitude;
	/**纬度**/
	private Double latitude;
	/**企业简介**/
	private String enterprisedesc;
	/**企业文化**/
	private String enterpriseculture;
	/**修改时间**/
	private Timestamp modifytime;
	/**修改人ID**/
	private Integer modifyuserid;
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
	public String getEnterprisename()
	{
		return this.enterprisename;
	}
	public void setEnterprisename(String enterprisename)
	{
		this.enterprisename = enterprisename;
	}
	public String getLogo()
	{
		return this.logo;
	}
	public void setLogo(String logo)
	{
		this.logo = logo;
	}
	public String getWebsite()
	{
		return this.website;
	}
	public void setWebsite(String website)
	{
		this.website = website;
	}
	public String getTelephone()
	{
		return this.telephone;
	}
	public void setTelephone(String telephone)
	{
		this.telephone = telephone;
	}
	public String getLocation()
	{
		return this.location;
	}
	public void setLocation(String location)
	{
		this.location = location;
	}
	public String getDetailaddress()
	{
		return this.detailaddress;
	}
	public void setDetailaddress(String detailaddress)
	{
		this.detailaddress = detailaddress;
	}
	public Double getLongitude()
	{
		return this.longitude;
	}
	public void setLongitude(Double longitude)
	{
		this.longitude = longitude;
	}
	public Double getLatitude()
	{
		return this.latitude;
	}
	public void setLatitude(Double latitude)
	{
		this.latitude = latitude;
	}
	public String getEnterprisedesc()
	{
		return this.enterprisedesc;
	}
	public void setEnterprisedesc(String enterprisedesc)
	{
		this.enterprisedesc = enterprisedesc;
	}
	public String getEnterpriseculture()
	{
		return this.enterpriseculture;
	}
	public void setEnterpriseculture(String enterpriseculture)
	{
		this.enterpriseculture = enterpriseculture;
	}
	public Timestamp getModifytime()
	{
		return this.modifytime;
	}
	public void setModifytime(Timestamp modifytime)
	{
		this.modifytime = modifytime;
	}
	public Integer getModifyuserid()
	{
		return this.modifyuserid;
	}
	public void setModifyuserid(Integer modifyuserid)
	{
		this.modifyuserid = modifyuserid;
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
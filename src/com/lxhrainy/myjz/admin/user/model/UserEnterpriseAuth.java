package com.lxhrainy.myjz.admin.user.model;

import java.sql.Timestamp;

import com.lxhrainy.core.common.model.BaseModel;
/**
 * 企业认证信息
 * @author xueyunteng
 */
public class UserEnterpriseAuth extends BaseModel
{
	/**
	*/ 
	private static final long serialVersionUID = 1L;
	/**企业名称**/
	private String enterprisename;
	/**营业执照注册号**/
	private String businesslicenseno;
	/**营业执照所在地**/
	private String businesslicenseaddress;
	/**营业执照期限**/
	private String businesslicensetimescope;
	/**营业执照照片**/
	private String businesslicensepic;
	/**营业范围**/
	private String businesslicensescope;
	/**组织机构代码**/
	private String organizationno;
	/**法人姓名**/
	private String legalpersonname;
	/**法人身份证号**/
	private String legalpersonidcard;
	/**身份证正面**/
	private String idcardfront;
	/**身份证背面**/
	private String idcardback;
	/**申请认证时间**/
	private Timestamp authtime;
	/**状态**/
	private Integer status;
	/**审核人后台用户ID**/
	private Integer auditor;
	/**审核时间**/
	private Timestamp audittime;
	/**审核备注**/
	private String auditmemo;
	/**删除标识**/
	private Integer deleted;

	public String getEnterprisename()
	{
		return this.enterprisename;
	}
	public void setEnterprisename(String enterprisename)
	{
		this.enterprisename = enterprisename;
	}
	public String getBusinesslicenseno()
	{
		return this.businesslicenseno;
	}
	public void setBusinesslicenseno(String businesslicenseno)
	{
		this.businesslicenseno = businesslicenseno;
	}
	public String getBusinesslicenseaddress()
	{
		return this.businesslicenseaddress;
	}
	public void setBusinesslicenseaddress(String businesslicenseaddress)
	{
		this.businesslicenseaddress = businesslicenseaddress;
	}
	public String getBusinesslicensetimescope()
	{
		return this.businesslicensetimescope;
	}
	public void setBusinesslicensetimescope(String businesslicensetimescope)
	{
		this.businesslicensetimescope = businesslicensetimescope;
	}
	public String getBusinesslicensepic()
	{
		return this.businesslicensepic;
	}
	public void setBusinesslicensepic(String businesslicensepic)
	{
		this.businesslicensepic = businesslicensepic;
	}
	public String getBusinesslicensescope()
	{
		return this.businesslicensescope;
	}
	public void setBusinesslicensescope(String businesslicensescope)
	{
		this.businesslicensescope = businesslicensescope;
	}
	public String getOrganizationno()
	{
		return this.organizationno;
	}
	public void setOrganizationno(String organizationno)
	{
		this.organizationno = organizationno;
	}
	public String getLegalpersonname()
	{
		return this.legalpersonname;
	}
	public void setLegalpersonname(String legalpersonname)
	{
		this.legalpersonname = legalpersonname;
	}
	public String getLegalpersonidcard()
	{
		return this.legalpersonidcard;
	}
	public void setLegalpersonidcard(String legalpersonidcard)
	{
		this.legalpersonidcard = legalpersonidcard;
	}
	public String getIdcardfront()
	{
		return this.idcardfront;
	}
	public void setIdcardfront(String idcardfront)
	{
		this.idcardfront = idcardfront;
	}
	public String getIdcardback()
	{
		return this.idcardback;
	}
	public void setIdcardback(String idcardback)
	{
		this.idcardback = idcardback;
	}
	public Timestamp getAuthtime()
	{
		return this.authtime;
	}
	public void setAuthtime(Timestamp authtime)
	{
		this.authtime = authtime;
	}
	public Integer getStatus()
	{
		return this.status;
	}
	public void setStatus(Integer status)
	{
		this.status = status;
	}
	public Integer getAuditor()
	{
		return this.auditor;
	}
	public void setAuditor(Integer auditor)
	{
		this.auditor = auditor;
	}
	public Timestamp getAudittime()
	{
		return this.audittime;
	}
	public void setAudittime(Timestamp audittime)
	{
		this.audittime = audittime;
	}
	public String getAuditmemo()
	{
		return this.auditmemo;
	}
	public void setAuditmemo(String auditmemo)
	{
		this.auditmemo = auditmemo;
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
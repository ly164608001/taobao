package com.lxhrainy.myjz.admin.user.model;

import java.sql.Timestamp;

import com.lxhrainy.core.common.model.BaseModel;

/**
 * 个人信息
 * 
 * @author xueyunteng
 */
public class UserDetailInfo extends BaseModel {
	/**
	*/
	private static final long serialVersionUID = 1L;
	/** 账号ID **/
	private Integer userid;
	/** 头像 **/
	private String icon;
	/** 性别 **/
	private Integer sex;
	/** 生日 **/
	private String birthday;
	/** 血型 **/
	private String bloodtype;
	/** 出生地 **/
	private String birthplace;
	/** 居住地 **/
	private String apartment;
	/** 个人简介 **/
	private String personsesc;
	/** 教育程度 **/
	private Integer educationdegree;
	/** 职业 **/
	private Integer job;
	/** 职位 **/
	private String position;
	/** 联系地址 **/
	private String contactaddress;
	/** 邮政编码 **/
	private String zipcode;
	/** 邮箱地址 **/
	private String email;
	/** QQ号码 **/
	private String qq;
	/** 真实姓名 **/
	private String realname;
	/** 证件类别 **/
	private Integer certificatetype;
	/** 证件号 **/
	private String certificateno;
	/** 更新时间 **/
	private Timestamp modifytime;
	/** 删除标识 **/
	private Integer deleted;

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public Integer getUserid() {
		return this.userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getIcon() {
		return this.icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public Integer getSex() {
		return this.sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public String getBirthday() {
		return this.birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getBloodtype() {
		return this.bloodtype;
	}

	public void setBloodtype(String bloodtype) {
		this.bloodtype = bloodtype;
	}

	public String getBirthplace() {
		return this.birthplace;
	}

	public void setBirthplace(String birthplace) {
		this.birthplace = birthplace;
	}

	public String getApartment() {
		return this.apartment;
	}

	public void setApartment(String apartment) {
		this.apartment = apartment;
	}

	public String getPersonsesc() {
		return this.personsesc;
	}

	public void setPersonsesc(String personsesc) {
		this.personsesc = personsesc;
	}

	public Integer getEducationdegree() {
		return this.educationdegree;
	}

	public void setEducationdegree(Integer educationdegree) {
		this.educationdegree = educationdegree;
	}

	public Integer getJob() {
		return this.job;
	}

	public void setJob(Integer job) {
		this.job = job;
	}

	public String getPosition() {
		return this.position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getContactaddress() {
		return this.contactaddress;
	}

	public void setContactaddress(String contactaddress) {
		this.contactaddress = contactaddress;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getQq() {
		return this.qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getRealname() {
		return this.realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public Integer getCertificatetype() {
		return this.certificatetype;
	}

	public void setCertificatetype(Integer certificatetype) {
		this.certificatetype = certificatetype;
	}

	public String getCertificateno() {
		return this.certificateno;
	}

	public void setCertificateno(String certificateno) {
		this.certificateno = certificateno;
	}

	public Timestamp getModifytime() {
		return this.modifytime;
	}

	public void setModifytime(Timestamp modifytime) {
		this.modifytime = modifytime;
	}

	public Integer getDeleted() {
		return this.deleted;
	}

	public void setDeleted(Integer deleted) {
		this.deleted = deleted;
	}
}
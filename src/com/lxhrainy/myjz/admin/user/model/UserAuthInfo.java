package com.lxhrainy.myjz.admin.user.model;

import java.util.Date;

import com.lxhrainy.core.common.model.BaseModel;
import com.lxhrainy.core.sys.model.UserInfo;

/**
 * 个人认证信息
 * 
 * @author xueyunteng
 */
public class UserAuthInfo extends BaseModel {
	/**
	*/
	private static final long serialVersionUID = 1L;
	/** 账号ID **/
	private UserInfo user;
	/** 实名认证状态 **/
	private Integer certificationstatus;
	/** 实名认证时间 **/
	private Date certificationtime;
	/** 实名认证处理时间 **/
	private Date handletime;
	/** 实名认证处理人 **/
	private UserInfo handler;
	/** 实名认证处理意见 **/
	private String handlememo;
	/** 删除标识 **/
	private Integer deleted;
	/** 真实姓名 **/
	private String realname;
	/** 身份证号 **/
	private String certificateno;
	/** 身份证正面照 **/
	private String cardphoto;
	/** 手持身份证正面照 **/
	private String handcardphoto;
	/** 证件类型 0:身份证，(身份证正面照、手持身份证照、生活照);1:学生证，(学生证正面照、手持学生证照); **/
	private Integer type;
	/** 生活照 **/
	private String lifephoto;
	/** 学生证正面照 **/
	private String stucardphoto;
	/** 手持学生证正面照 **/
	private String handstucardphoto;

	public String getLifephoto() {
		return lifephoto;
	}

	public void setLifephoto(String lifephoto) {
		this.lifephoto = lifephoto;
	}

	public String getStucardphoto() {
		return stucardphoto;
	}

	public void setStucardphoto(String stucardphoto) {
		this.stucardphoto = stucardphoto;
	}

	public String getHandstucardphoto() {
		return handstucardphoto;
	}

	public void setHandstucardphoto(String handstucardphoto) {
		this.handstucardphoto = handstucardphoto;
	}

	public UserInfo getUser() {
		return this.user;
	}

	public void setUser(UserInfo user) {
		this.user = user;
	}

	public Integer getCertificationstatus() {
		return this.certificationstatus;
	}

	public void setCertificationstatus(Integer certificationstatus) {
		this.certificationstatus = certificationstatus;
	}

	public Date getCertificationtime() {
		return this.certificationtime;
	}

	public void setCertificationtime(Date certificationtime) {
		this.certificationtime = certificationtime;
	}

	public Date getHandletime() {
		return this.handletime;
	}

	public void setHandletime(Date handletime) {
		this.handletime = handletime;
	}

	public UserInfo getHandler() {
		return this.handler;
	}

	public void setHandler(UserInfo handler) {
		this.handler = handler;
	}

	public String getHandlememo() {
		return this.handlememo;
	}

	public void setHandlememo(String handlememo) {
		this.handlememo = handlememo;
	}

	public Integer getDeleted() {
		return this.deleted;
	}

	public void setDeleted(Integer deleted) {
		this.deleted = deleted;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getCertificateno() {
		return certificateno;
	}

	public void setCertificateno(String certificateno) {
		this.certificateno = certificateno;
	}

	public String getCardphoto() {
		return cardphoto;
	}

	public void setCardphoto(String cardphoto) {
		this.cardphoto = cardphoto;
	}

	public String getHandcardphoto() {
		return handcardphoto;
	}

	public void setHandcardphoto(String handcardphoto) {
		this.handcardphoto = handcardphoto;
	}

	public Integer getType() {
		return type;
	}

	public void setIdtype(Integer type) {
		this.type = type;
	}


	public void setType(Integer type) {
		this.type = type;
	}

}
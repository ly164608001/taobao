package com.lxhrainy.myjz.admin.user.model;

import java.sql.Timestamp;

import com.lxhrainy.core.common.model.BaseModel;
/**
 * 个人认证信息
 * @author xueyunteng
 */
public class UserAuthInfo extends BaseModel
{
	/**
	*/ 
	private static final long serialVersionUID = 1L;
	/**账号ID**/
	private Integer userid;
	/**支付密码**/
	private String paypassword;
	/**认证手机**/
	private String authphone;
	/**手机认证时间**/
	private Timestamp authphonetime;
	/**密保邮箱**/
	private String authemail;
	/**邮箱认证时间**/
	private Timestamp authemailtime;
	/**绑定的QQ号码**/
	private String bindqq;
	/**绑定QQ时间**/
	private Timestamp bindqqtime;
	/**实名认证状态**/
	private Integer certificationstatus;
	/**实名认证时间**/
	private Timestamp certificationtime;
	/**实名认证处理时间**/
	private Timestamp handletime;
	/**实名认证处理人**/
	private Integer handler;
	/**实名认证处理意见**/
	private String handlememo;
	/**删除标识**/
	private Integer deleted;
	/**真实姓名**/
	private String realname;
	/**身份证号**/
	private String certificateno;
	/**身份证正面照**/
	private String cardphoto;
	/**手持身份证正面照**/
	private String handcardphoto;
	/**证件类型**/
	private Integer type;
	/**开户行**/
	private String openingbank;
	/**银行卡卡号**/
	private String bankno;
	

	public Integer getUserid()
	{
		return this.userid;
	}
	public void setUserid(Integer userid)
	{
		this.userid = userid;
	}
	public String getPaypassword()
	{
		return this.paypassword;
	}
	public void setPaypassword(String paypassword)
	{
		this.paypassword = paypassword;
	}
	public String getAuthphone()
	{
		return this.authphone;
	}
	public void setAuthphone(String authphone)
	{
		this.authphone = authphone;
	}
	public Timestamp getAuthphonetime()
	{
		return this.authphonetime;
	}
	public void setAuthphonetime(Timestamp authphonetime)
	{
		this.authphonetime = authphonetime;
	}
	public String getAuthemail()
	{
		return this.authemail;
	}
	public void setAuthemail(String authemail)
	{
		this.authemail = authemail;
	}
	public Timestamp getAuthemailtime()
	{
		return this.authemailtime;
	}
	public void setAuthemailtime(Timestamp authemailtime)
	{
		this.authemailtime = authemailtime;
	}
	public String getBindqq()
	{
		return this.bindqq;
	}
	public void setBindqq(String bindqq)
	{
		this.bindqq = bindqq;
	}
	public Timestamp getBindqqtime()
	{
		return this.bindqqtime;
	}
	public void setBindqqtime(Timestamp bindqqtime)
	{
		this.bindqqtime = bindqqtime;
	}
	public Integer getCertificationstatus()
	{
		return this.certificationstatus;
	}
	public void setCertificationstatus(Integer certificationstatus)
	{
		this.certificationstatus = certificationstatus;
	}
	public Timestamp getCertificationtime()
	{
		return this.certificationtime;
	}
	public void setCertificationtime(Timestamp certificationtime)
	{
		this.certificationtime = certificationtime;
	}
	public Timestamp getHandletime()
	{
		return this.handletime;
	}
	public void setHandletime(Timestamp handletime)
	{
		this.handletime = handletime;
	}
	public Integer getHandler()
	{
		return this.handler;
	}
	public void setHandler(Integer handler)
	{
		this.handler = handler;
	}
	public String getHandlememo()
	{
		return this.handlememo;
	}
	public void setHandlememo(String handlememo)
	{
		this.handlememo = handlememo;
	}
	public Integer getDeleted()
	{
		return this.deleted;
	}
	public void setDeleted(Integer deleted)
	{
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
	public String getOpeningbank() {
		return openingbank;
	}
	public void setOpeningbank(String openingbank) {
		this.openingbank = openingbank;
	}
	public String getBankno() {
		return bankno;
	}
	public void setBankno(String bankno) {
		this.bankno = bankno;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
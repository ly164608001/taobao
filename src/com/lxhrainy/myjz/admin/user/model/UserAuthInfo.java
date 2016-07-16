package com.lxhrainy.myjz.admin.user.model;

import java.util.Date;

import com.lxhrainy.core.common.model.BaseModel;
import com.lxhrainy.core.sys.model.UserInfo;
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
	private UserInfo user;
	/**认证手机**/
	private String authphone;
	/**手机认证时间**/
	private Date authphonetime;
	/**密保邮箱**/
	private String authemail;
	/**邮箱认证时间**/
	private Date authemailtime;
	/**绑定的QQ号码**/
	private String bindqq;
	/**绑定QQ时间**/
	private Date bindqqtime;
	/**实名认证状态**/
	private Integer certificationstatus;
	/**实名认证时间**/
	private Date certificationtime;
	/**实名认证处理时间**/
	private Date handletime;
	/**实名认证处理人**/
	private UserInfo handler;
	/**实名认证处理意见**/
	private String handlememo;
	/**打款信息处理时间**/
	private Date payhandletime;
	/**打款信息处理人**/
	private UserInfo payhandler;
	/**打款信息处理意见**/
	private String payhandlememo;
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
	/**打款时间**/
	private Date paidtime;
	
	public UserInfo getUser()
	{
		return this.user;
	}
	public void setUser(UserInfo user)
	{
		this.user = user;
	}
	public String getAuthphone()
	{
		return this.authphone;
	}
	public void setAuthphone(String authphone)
	{
		this.authphone = authphone;
	}
	public Date getAuthphonetime()
	{
		return this.authphonetime;
	}
	public void setAuthphonetime(Date authphonetime)
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
	public Date getAuthemailtime()
	{
		return this.authemailtime;
	}
	public void setAuthemailtime(Date authemailtime)
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
	public Date getBindqqtime()
	{
		return this.bindqqtime;
	}
	public void setBindqqtime(Date bindqqtime)
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
	public Date getCertificationtime()
	{
		return this.certificationtime;
	}
	public void setCertificationtime(Date certificationtime)
	{
		this.certificationtime = certificationtime;
	}
	public Date getHandletime()
	{
		return this.handletime;
	}
	public void setHandletime(Date handletime)
	{
		this.handletime = handletime;
	}
	public UserInfo getHandler()
	{
		return this.handler;
	}
	public void setHandler(UserInfo handler)
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
	public Date getPayhandletime() {
		return payhandletime;
	}
	public void setPayhandletime(Date payhandletime) {
		this.payhandletime = payhandletime;
	}
	public UserInfo getPayhandler() {
		return payhandler;
	}
	public void setPayhandler(UserInfo payhandler) {
		this.payhandler = payhandler;
	}
	public String getPayhandlememo() {
		return payhandlememo;
	}
	public void setPayhandlememo(String payhandlememo) {
		this.payhandlememo = payhandlememo;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public Date getPaidtime() {
		return paidtime;
	}
	public void setPaidtime(Date paidtime) {
		this.paidtime = paidtime;
	}
	
}
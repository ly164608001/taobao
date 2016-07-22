/**
 * 
 */
package com.lxhrainy.api.model;

/**
 * @author dyno
 *
 */
public class ApiParams {
	/**
	 * android:android平台;ios:ios平台;
	 */
	private String platform; 
	/**
	 * 手机唯一编号	
	 */
	private String uuid;	
	/**
	 * 邀请人
	 */
	private String inviter;
	/**
	 * 友盟需要用到的token
	 */
	private String token;
	/**
	 * 获取个数 <br/>
	 * 	value : count
	 */
	private  String count;
	/**
	 *货源列表起始序号 <br/>
	 * 	value : offsetid
	 */
	private  String offsetid;
	/**
	 * messageid  消息id
	 */
	private String messageid;
	/**
	 * 消息类型
	 * 0:网站公告;
	 * 1:我的通知
	 */
	private String messagetype;
	/**
	 * NO:关闭;YES:打开;
	 * 打开关闭状态
	 */
	private boolean enable;
	
	/**start 用户信息**/
	//QQ号码
	private String QQ;
	//验证码
	private String captcha;
	//真实姓名
	private String name;
	//登录/交易密码
	private String password;
	//手机号
	private String phone;
	//用户名
	private String username;
	/**end 用户信息**/
	
	/**start提现**/
	//到账时间0:正常到账(24小时);1:快速到账(2小时);
	private String costtime;
	//手续费
	private String fee;
	//提现金额
	private String money;
	//提现银行卡
	private String bankid;
	/**end提现**/
	
	public String getCosttime() {
		return costtime;
	}
	public void setCosttime(String costtime) {
		this.costtime = costtime;
	}
	public String getFee() {
		return fee;
	}
	public void setFee(String fee) {
		this.fee = fee;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public String getBankid() {
		return bankid;
	}
	public void setBankid(String bankid) {
		this.bankid = bankid;
	}
	public String getQQ() {
		return QQ;
	}
	public void setQQ(String qQ) {
		QQ = qQ;
	}
	public String getCaptcha() {
		return captcha;
	}
	public void setCaptcha(String captcha) {
		this.captcha = captcha;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public boolean getEnable() {
		return enable;
	}
	public void setEnable(boolean enable) {
		this.enable = enable;
	}
	public String getMessageid() {
		return messageid;
	}
	public void setMessageid(String messageid) {
		this.messageid = messageid;
	}
	public String getPlatform() {
		return platform;
	}
	public void setPlatform(String platform) {
		this.platform = platform;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public String getInviter() {
		return inviter;
	}
	public void setInviter(String inviter) {
		this.inviter = inviter;
	}
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	public String getOffsetid() {
		return offsetid;
	}
	public void setOffsetid(String offsetid) {
		this.offsetid = offsetid;
	}
	public String getMessagetype() {
		return messagetype;
	}
	public void setMessagetype(String messagetype) {
		this.messagetype = messagetype;
	}
	
}

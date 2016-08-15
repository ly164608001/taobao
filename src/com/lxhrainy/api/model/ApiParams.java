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
	private String invitation;
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
	//性别
	private String gender;
	//头像
	private String avatarurl;
	//生日
	private String birthday;
	//地址
	private String address;
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
	//银行0:中国建设银行;1:中国工商银行;2:中国农业银行;3:中国银行;4:招商银行;5:中国交通银行;
	//6:兴业银行;7:广发银行;8:中国民生银行;9:中国邮政储蓄银行;
	private String bank;
	/**end提现**/
	
	/**start密码**/
	private String oldpassword;
	//类型  0:登录密码;1:交易密码;
	private String type;
	/**end密码**/
	
	/**start 买号**/
	//买号名称
	private String account;
	//买号ID
	private String accountid;
	//买号类型 0:淘宝买号;1:京东买号
	private String accounttype;
	//买号等级，有配置接口获取可选项
	private String level;
	//等级图片
	private String levelimage;
	/**end 买号**/
	
	/**start 银行卡**/
	//持卡人，默认与账户真实姓名一致
	private String holder;
	//支行名称
	private String branch;
	//卡号
	private String card;
	//开户地区具体到县/区
	private String place;
	/**end 银行卡**/
	
	/**start 实名认证**/
	//证件号码
	private String certificate;
	//身份证正面照
	private String identityfront;
	//手持身份证照
	private String identityhand;
	//生活照
	private String liveimage;
	//学生证正面照
	private String studentIdfront;
	//手持学生证照
	private String studentIdhand;
	/**end 实名认证**/
	
	/**start 任务列表**/
	//0:大厅的任务列表;1:我的任务列表;
	private String ismine;
	//0:进行中;1:已完成;2:全部;
	private String status;
	//0:手机单;1:电脑单;
	private String targetplatfrom;
	//0:常规单;1:流量单;
	private String targetsubtype;
	//0:淘宝;1:京东;
	private String targettype;
	//0:普通任务;1:超级任务;2:全部;
	private String tasktype;
	/**end 任务**/
	
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getAccountid() {
		return accountid;
	}
	public void setAccountid(String accountid) {
		this.accountid = accountid;
	}
	public String getAccounttype() {
		return accounttype;
	}
	public void setAccounttype(String accounttype) {
		this.accounttype = accounttype;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getLevelimage() {
		return levelimage;
	}
	public void setLevelimage(String levelimage) {
		this.levelimage = levelimage;
	}
	public String getOldpassword() {
		return oldpassword;
	}
	public void setOldpassword(String oldpassword) {
		this.oldpassword = oldpassword;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAvatarurl() {
		return avatarurl;
	}
	public void setAvatarurl(String avatarurl) {
		this.avatarurl = avatarurl;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
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
	public String getBank() {
		return bank;
	}
	public void setBank(String bank) {
		this.bank = bank;
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
	public String getInvitation() {
		return invitation;
	}
	public void setInvitation(String invitation) {
		this.invitation = invitation;
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
	public String getHolder() {
		return holder;
	}
	public void setHolder(String holder) {
		this.holder = holder;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getCard() {
		return card;
	}
	public void setCard(String card) {
		this.card = card;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getCertificate() {
		return certificate;
	}
	public void setCertificate(String certificate) {
		this.certificate = certificate;
	}
	public String getIdentityfront() {
		return identityfront;
	}
	public void setIdentityfront(String identityfront) {
		this.identityfront = identityfront;
	}
	public String getIdentityhand() {
		return identityhand;
	}
	public void setIdentityhand(String identityhand) {
		this.identityhand = identityhand;
	}
	public String getLiveimage() {
		return liveimage;
	}
	public void setLiveimage(String liveimage) {
		this.liveimage = liveimage;
	}
	public String getStudentIdfront() {
		return studentIdfront;
	}
	public void setStudentIdfront(String studentIdfront) {
		this.studentIdfront = studentIdfront;
	}
	public String getStudentIdhand() {
		return studentIdhand;
	}
	public void setStudentIdhand(String studentIdhand) {
		this.studentIdhand = studentIdhand;
	}
	public String getIsmine() {
		return ismine;
	}
	public void setIsmine(String ismine) {
		this.ismine = ismine;
	}
	public String getTargetplatfrom() {
		return targetplatfrom;
	}
	public void setTargetplatfrom(String targetplatfrom) {
		this.targetplatfrom = targetplatfrom;
	}
	public String getTargetsubtype() {
		return targetsubtype;
	}
	public void setTargetsubtype(String targetsubtype) {
		this.targetsubtype = targetsubtype;
	}
	public String getTargettype() {
		return targettype;
	}
	public void setTargettype(String targettype) {
		this.targettype = targettype;
	}
	public String getTasktype() {
		return tasktype;
	}
	public void setTasktype(String tasktype) {
		this.tasktype = tasktype;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}

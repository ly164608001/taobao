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
	 * favoriteid  收藏id
	 */
	private String favoriteid;
	/**
	 * state   0:关注 1:取消关注|
	 */
	private String state;
	/**
	 * status
	 */
	private String status;
	/**
	 * 货主/车主id
	 */
	private String targetid;
	/**
	 * 充值金额
	 */
	private String money;
	/**
	 * 支付账号
	 */
	private String account;
	/**
	 * id
	 */
	private String id;
	/**
	 * driverid
	 */
	private String driverid;
	/**
	 * 订单id
	 */
	private String orderid;
	/**
	 * 用户id
	 */
	private String userid;
	/**
	 * 用户名	
	 */
	private String username;
	/**
	 * 密码	
	 */
	private String password;
	/**
	 * 旧密码
	 */
	private String oldpwd;
	/**
	 * 新密码	
	 */
	private String newpwd;
	/**
	 * 所在公司	
	 */
	private String company;
	/**
	 * 电话号码	
	 */
	private String phone;
	/**
	 * 平台	android,ios
	 */
	private String platform; 
	/**
	 * 软件名	driver,user
	 */
	private String app; 
	/**
	 * 手机唯一编号	
	 */
	private String uuid;	
	/**
	 * 强制登陆	0
	 */
	private String force;
	/**
	 *  验证码
	 */
	private String captcha;
	/**
	 * 邀请人
	 */
	private String inviter;
	/**
	 * 友盟需要用到的token
	 */
	private String token;
	/**
	 * 车主、货主
	 */
	private String rule; 
	/**
	 * 真实姓名
	 */
	private  String name;
	/**
	 * 联系方式
	 */
	private  String contact;
	/**
	 * 头像id
	 */
	private  String iconid;
	/**
	 * 企业名称
	 */
	private  String enterprise;
	/**
	 * 公司所在地(省市县)
	 */
	private  String ent_address;
	/**
	 * 详细地址(街道-路-号)
	 */
	private  String ent_detail_address;
	/**
	 * 营业执照照片id
	 */
	private  String ent_iconurl;
	/**
	 * 身份证号
	 */
	private  String identity;
	/**
	 * 身份证照片id
	 */
	private  String identity_iconid;
	/**
	 * 身份证背面照片id
	 */
	private  String identity_back_iconid;
	/**
	 * 驾驶证号
	 */
	private  String driving_licence;
	/**
	 * 驾驶证号图片id
	 */
	private  String driving_licence_iconid;
	/**
	 * 驾驶员所在公司
	 */
	private  String driving_company;
	/**
	 * 车牌号
	 */
	private  String plate;
	/**
	 * 车型
	 */
	private  String model;
	/**
	 * 车长
	 */
	private  String conductor;
	/**
	 * 体积
	 */
	private  String party;
	/**
	 * 重量
	 */
	private  String tons;
	/**
	 * 随车电话
	 */
	private  String diver_cell;
	/**
	 * 车主电话
	 */
	private  String owner_cell;
	/**
	 * 所在地(省市县)	
	 */
	private  String address;
	/**
	 * 运营证照片照片id
	 */
	private  String operacert_iconid;
	/**
	 * 认证状态
	 */
	private  String certified;
	/**
	 * 常跑城市
	 */
	private  String comm_addrs;
	/**
	 * 车头照片id
	 */
	private  String car_iconid;
	/**
	 * 行驶证照片照片id
	 */
	private  String license_iconid;
	/**
	 * 发货类型	长期货源：为空 临时货源：具体日期
	 * 
	 */
	private  String pub_typ;
	/**
	 * 发布范围，目前只需要添0  所有车辆：0 收藏车辆：1
	 */
	private  String pub_rag;
	/**
	 * 始发地
	 */
	private  String prov;
	/**
	 * 始发地详细地址
	 */
	private  String prov_detail;
	/**
	 * 始发地纬度
	 */
	private  String prov_lat;
	/**
	 * 始发地经度
	 */
	private  String prov_lng;
	/**
	 * 目的地
	 */
	private  String dest;
	/**
	 * 目的地详细地址
	 */
	private  String dest_detail;
	/**
	 * 目的地纬度
	 */
	private  String dest_lat;
	/**
	 * 目的地经度
	 */
	private  String dest_lng;
	/**
	 * 货物类型 :枚举，0为其他，其他类型见车辆认证表
	 */
	private  String cargo_typ;
	/**
	 * 体积重量计价单位 : 0:重货（元吨/公里） 1:泡货（元方/公里）
	 */
	private  String blf_typ;
	/**
	 * 车型要求 : 枚举，0为不限，其他类型见车辆认证表
	 */
	private  String model_rem;
	/**
	 * 车长要求 枚举，0为不限，其他类型见车辆认证表
	 */
	private  String cond_rem;
	/**
	 * 期望运费   0:面议 N：具体数值
	 */
	private  String freight_exp;
	/**
	 *  保证金  0:不需要 1：需要
	 */
	private  String margin;
	/**
	 * 备注
	 */
	private  String remark;
	/**
	 * 附加照片id
	 */
	private  String cargo_imgs;
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
	 * 目的地 <br/>
	 * 	value : to
	 */
	private  String to;
	/**
	 * 出发地 <br/>
	 * 	value : count
	 */
	private  String from;
	/**
	 * 总数
	 *  vaule ： total
	 */
	private  String total;
	/**
	 * 用户等级
	 *  vaule ： level
	 */
	private  String level;
	/**
	 * 发布量<br/>
	 * value :amount
	 */
	private  String amount;
	/**
	 * 订单完成率<br/>
	 * value :completion
	 */
	private  String completion;
	/**
	 * 星级<br/>
	 * value :star
	 */
	private  String star;
	
	/**
	 * 途径城市(最多3个)
	 */
	private  String pathway;
	/**
	 * 出车时间
	 */
	private  String drawout_t;
	/**
	 * 预计到达时间
	 */
	private  String arrived_t;
	
	private String pub_t;
	/**
	 * 货单id
	 */
	private String cargoid;
	/**
	 * 竞价金额
	 */
	private String bidding_frei;
	/**
	 * 竞价备注
	 */
	private String bidding_remark;
	/**
	 * 车主id
	 */
	private String dirverid;
	/**
	 * 货主需要车主交付的保证金
	 */
	private String margin_rem;
	/**
	 * 流水号
	 */
	private String serial_num;
	/**
	 * 发货过磅单号
	 */
	private String weigh_num;
	/**
	 * 应付运费
	 */
	private String freight;
	/**
	 * 发货过磅单号照片id
	 */
	private String weigh_numid;
	/**
	 *收货人
	 */
	private String consi;
	/**
	 * 收货人联系方式
	 */
	private String consi_cont;
	/**
	 * 详细地址
	 */
	private String address_detail;
	/**
	 * 纬度
	 */
	private String address_lat;
	/**
	 * 经度
	 */
	private String address_lng;
	/**
	 * 类型
	 */
	private String type;
	/**
	 * 车主确认订单流水号
	 */
	private String serial_num_dirver;
	/**
	 * 订单最后编辑时间
	 */
	private String order_t;
	/**
	 * 目的地位置纬度
	 */
	private String arrive_lat;
	/**
	 * 目的地位置经度
	 */
	private String arrive_lng;
	/**
	 * 实际体积重量计价单位
	 */
	private String blf_typ_real;
	/**
	 * 实际体积
	 */
	private String party_real;
	/**
	 * 实际重量
	 */
	private String tons_real;
	/**
	 * 收货过磅单号
	 */
	private String weigh_num_real;
	/**
	 * 实际运费
	 */
	private String freight_real;
	/**
	 * 货损费用
	 */
	private String freight_break;
	/**
	 * 收货过磅单号照片id
	 */
	private String weigh_numid_real;
	/**纬度*/
	private String lat;
	/**经度*/
	private String lng;
	/**位置上传时间*/
	private String time;
	/**弧度*/
	private String degress;
	/**速度*/
	private String speed;
	/**车牌颜色*/
	private String color;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPlatform() {
		return platform;
	}
	public void setPlatform(String platform) {
		this.platform = platform;
	}
	public String getApp() {
		return app;
	}
	public void setApp(String app) {
		this.app = app;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public String getForce() {
		return force;
	}
	public void setForce(String force) {
		this.force = force;
	}
	public String getCaptcha() {
		return captcha;
	}
	public void setCaptcha(String captcha) {
		this.captcha = captcha;
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
	public String getRule() {
		return rule;
	}
	public void setRule(String rule) {
		this.rule = rule;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getIconid() {
		return iconid;
	}
	public void setIconid(String iconid) {
		this.iconid = iconid;
	}
	public String getEnterprise() {
		return enterprise;
	}
	public void setEnterprise(String enterprise) {
		this.enterprise = enterprise;
	}
	public String getEnt_address() {
		return ent_address;
	}
	public void setEnt_address(String ent_address) {
		this.ent_address = ent_address;
	}
	public String getEnt_detail_address() {
		return ent_detail_address;
	}
	public void setEnt_detail_address(String ent_detail_address) {
		this.ent_detail_address = ent_detail_address;
	}
	public String getEnt_iconurl() {
		return ent_iconurl;
	}
	public void setEnt_iconurl(String ent_iconurl) {
		this.ent_iconurl = ent_iconurl;
	}
	public String getIdentity() {
		return identity;
	}
	public void setIdentity(String identity) {
		this.identity = identity;
	}
	public String getIdentity_iconid() {
		return identity_iconid;
	}
	public void setIdentity_iconid(String identity_iconid) {
		this.identity_iconid = identity_iconid;
	}
	public String getIdentity_back_iconid() {
		return identity_back_iconid;
	}
	public void setIdentity_back_iconid(String identity_back_iconid) {
		this.identity_back_iconid = identity_back_iconid;
	}
	public String getDriving_licence() {
		return driving_licence;
	}
	public void setDriving_licence(String driving_licence) {
		this.driving_licence = driving_licence;
	}
	public String getDriving_licence_iconid() {
		return driving_licence_iconid;
	}
	public void setDriving_licence_iconid(String driving_licence_iconid) {
		this.driving_licence_iconid = driving_licence_iconid;
	}
	public String getDriving_company() {
		return driving_company;
	}
	public void setDriving_company(String driving_company) {
		this.driving_company = driving_company;
	}
	public String getPlate() {
		return plate;
	}
	public void setPlate(String plate) {
		this.plate = plate;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getConductor() {
		return conductor;
	}
	public void setConductor(String conductor) {
		this.conductor = conductor;
	}
	public String getParty() {
		return party;
	}
	public void setParty(String party) {
		this.party = party;
	}
	public String getTons() {
		return tons;
	}
	public void setTons(String tons) {
		this.tons = tons;
	}
	public String getDiver_cell() {
		return diver_cell;
	}
	public void setDiver_cell(String diver_cell) {
		this.diver_cell = diver_cell;
	}
	public String getOwner_cell() {
		return owner_cell;
	}
	public void setOwner_cell(String owner_cell) {
		this.owner_cell = owner_cell;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getOperacert_iconid() {
		return operacert_iconid;
	}
	public void setOperacert_iconid(String operacert_iconid) {
		this.operacert_iconid = operacert_iconid;
	}
	public String getCertified() {
		return certified;
	}
	public void setCertified(String certified) {
		this.certified = certified;
	}
	public String getComm_addrs() {
		return comm_addrs;
	}
	public void setComm_addrs(String comm_addrs) {
		this.comm_addrs = comm_addrs;
	}
	public String getCar_iconid() {
		return car_iconid;
	}
	public void setCar_iconid(String car_iconid) {
		this.car_iconid = car_iconid;
	}
	public String getLicense_iconid() {
		return license_iconid;
	}
	public void setLicense_iconid(String license_iconid) {
		this.license_iconid = license_iconid;
	}
	public String getPub_typ() {
		return pub_typ;
	}
	public void setPub_typ(String pub_typ) {
		this.pub_typ = pub_typ;
	}
	public String getPub_rag() {
		return pub_rag;
	}
	public void setPub_rag(String pub_rag) {
		this.pub_rag = pub_rag;
	}
	public String getProv() {
		return prov;
	}
	public void setProv(String prov) {
		this.prov = prov;
	}
	public String getProv_detail() {
		return prov_detail;
	}
	public void setProv_detail(String prov_detail) {
		this.prov_detail = prov_detail;
	}
	public String getProv_lat() {
		return prov_lat;
	}
	public void setProv_lat(String prov_lat) {
		this.prov_lat = prov_lat;
	}
	public String getProv_lng() {
		return prov_lng;
	}
	public void setProv_lng(String prov_lng) {
		this.prov_lng = prov_lng;
	}
	public String getDest() {
		return dest;
	}
	public void setDest(String dest) {
		this.dest = dest;
	}
	public String getDest_detail() {
		return dest_detail;
	}
	public void setDest_detail(String dest_detail) {
		this.dest_detail = dest_detail;
	}
	public String getDest_lat() {
		return dest_lat;
	}
	public void setDest_lat(String dest_lat) {
		this.dest_lat = dest_lat;
	}
	public String getDest_lng() {
		return dest_lng;
	}
	public void setDest_lng(String dest_lng) {
		this.dest_lng = dest_lng;
	}
	public String getCargo_typ() {
		return cargo_typ;
	}
	public void setCargo_typ(String cargo_typ) {
		this.cargo_typ = cargo_typ;
	}
	public String getBlf_typ() {
		return blf_typ;
	}
	public void setBlf_typ(String blf_typ) {
		this.blf_typ = blf_typ;
	}
	public String getModel_rem() {
		return model_rem;
	}
	public void setModel_rem(String model_rem) {
		this.model_rem = model_rem;
	}
	public String getCond_rem() {
		return cond_rem;
	}
	public void setCond_rem(String cond_rem) {
		this.cond_rem = cond_rem;
	}
	public String getFreight_exp() {
		return freight_exp;
	}
	public void setFreight_exp(String freight_exp) {
		this.freight_exp = freight_exp;
	}
	public String getMargin() {
		return margin;
	}
	public void setMargin(String margin) {
		this.margin = margin;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getCargo_imgs() {
		return cargo_imgs;
	}
	public void setCargo_imgs(String cargo_imgs) {
		this.cargo_imgs = cargo_imgs;
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
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getCompletion() {
		return completion;
	}
	public void setCompletion(String completion) {
		this.completion = completion;
	}
	public String getStar() {
		return star;
	}
	public void setStar(String star) {
		this.star = star;
	}
	public String getOldpwd() {
		return oldpwd;
	}
	public void setOldpwd(String oldpwd) {
		this.oldpwd = oldpwd;
	}
	public String getNewpwd() {
		return newpwd;
	}
	public void setNewpwd(String newpwd) {
		this.newpwd = newpwd;
	}
	public String getPathway() {
		return pathway;
	}
	public void setPathway(String pathway) {
		this.pathway = pathway;
	}
	public String getDrawout_t() {
		return drawout_t;
	}
	public void setDrawout_t(String drawout_t) {
		this.drawout_t = drawout_t;
	}
	public String getArrived_t() {
		return arrived_t;
	}
	public void setArrived_t(String arrived_t) {
		this.arrived_t = arrived_t;
	}
	public String getPub_t() {
		return pub_t;
	}
	public void setPub_t(String pub_t) {
		this.pub_t = pub_t;
	}
	public String getCargoid() {
		return cargoid;
	}
	public void setCargoid(String cargoid) {
		this.cargoid = cargoid;
	}
	public String getBidding_frei() {
		return bidding_frei;
	}
	public void setBidding_frei(String bidding_frei) {
		this.bidding_frei = bidding_frei;
	}
	public String getBidding_remark() {
		return bidding_remark;
	}
	public void setBidding_remark(String bidding_remark) {
		this.bidding_remark = bidding_remark;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getDirverid() {
		return dirverid;
	}
	public void setDirverid(String dirverid) {
		this.dirverid = dirverid;
	}
	public String getMargin_rem() {
		return margin_rem;
	}
	public void setMargin_rem(String margin_rem) {
		this.margin_rem = margin_rem;
	}
	public String getSerial_num() {
		return serial_num;
	}
	public void setSerial_num(String serial_num) {
		this.serial_num = serial_num;
	}
	public String getWeigh_num() {
		return weigh_num;
	}
	public void setWeigh_num(String weigh_num) {
		this.weigh_num = weigh_num;
	}
	public String getFreight() {
		return freight;
	}
	public void setFreight(String freight) {
		this.freight = freight;
	}
	public String getWeigh_numid() {
		return weigh_numid;
	}
	public void setWeigh_numid(String weigh_numid) {
		this.weigh_numid = weigh_numid;
	}
	public String getConsi() {
		return consi;
	}
	public void setConsi(String consi) {
		this.consi = consi;
	}
	public String getConsi_cont() {
		return consi_cont;
	}
	public void setConsi_cont(String consi_cont) {
		this.consi_cont = consi_cont;
	}
	public String getAddress_detail() {
		return address_detail;
	}
	public void setAddress_detail(String address_detail) {
		this.address_detail = address_detail;
	}
	public String getAddress_lat() {
		return address_lat;
	}
	public void setAddress_lat(String address_lat) {
		this.address_lat = address_lat;
	}
	public String getAddress_lng() {
		return address_lng;
	}
	public void setAddress_lng(String address_lng) {
		this.address_lng = address_lng;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getDriverid() {
		return driverid;
	}
	public void setDriverid(String driverid) {
		this.driverid = driverid;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getStatus() {
		return status;
	}
	public String getSerial_num_dirver() {
		return serial_num_dirver;
	}
	public void setSerial_num_dirver(String serial_num_dirver) {
		this.serial_num_dirver = serial_num_dirver;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getOrderid() {
		return orderid;
	}
	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}
	public String getOrder_t() {
		return order_t;
	}
	public void setOrder_t(String order_t) {
		this.order_t = order_t;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getArrive_lat() {
		return arrive_lat;
	}
	public void setArrive_lat(String arrive_lat) {
		this.arrive_lat = arrive_lat;
	}
	public String getArrive_lng() {
		return arrive_lng;
	}
	public void setArrive_lng(String arrive_lng) {
		this.arrive_lng = arrive_lng;
	}
	public String getBlf_typ_real() {
		return blf_typ_real;
	}
	public void setBlf_typ_real(String blf_typ_real) {
		this.blf_typ_real = blf_typ_real;
	}
	public String getParty_real() {
		return party_real;
	}
	public void setParty_real(String party_real) {
		this.party_real = party_real;
	}
	public String getTons_real() {
		return tons_real;
	}
	public void setTons_real(String tons_real) {
		this.tons_real = tons_real;
	}
	public String getWeigh_num_real() {
		return weigh_num_real;
	}
	public void setWeigh_num_real(String weigh_num_real) {
		this.weigh_num_real = weigh_num_real;
	}
	public String getFreight_real() {
		return freight_real;
	}
	public void setFreight_real(String freight_real) {
		this.freight_real = freight_real;
	}
	public String getFreight_break() {
		return freight_break;
	}
	public void setFreight_break(String freight_break) {
		this.freight_break = freight_break;
	}
	public String getWeigh_numid_real() {
		return weigh_numid_real;
	}
	public void setWeigh_numid_real(String weigh_numid_real) {
		this.weigh_numid_real = weigh_numid_real;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public String getTargetid() {
		return targetid;
	}
	public void setTargetid(String targetid) {
		this.targetid = targetid;
	}
	public String getFavoriteid() {
		return favoriteid;
	}
	public void setFavoriteid(String favoriteid) {
		this.favoriteid = favoriteid;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	public String getLng() {
		return lng;
	}
	public void setLng(String lng) {
		this.lng = lng;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getDegress() {
		return degress;
	}
	public void setDegress(String degress) {
		this.degress = degress;
	}
	public String getSpeed() {
		return speed;
	}
	public void setSpeed(String speed) {
		this.speed = speed;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}

}

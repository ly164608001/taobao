/**
 * 
 */
package com.lxhrainy.api.model;

/**
 * @author dyno
 *
 */
public class ApiOrderParams {
	/**
	 *   支付方式|0:支付宝支付 1:线下支付 2:微信支付 3:银联支付 4:百付宝支付|
	 */
	private String pay_typ;
	/**
	 * 是否担保|0:需要 1:不需要|
	 */
	private String margin_req;
	/**
	 * 车主id
	 */
	private String dirverid;
	/**
	 *评级
	 */
	private String star;
	/**
	 * 身份 0:货主 1:车主
	 */
	private String rule;
	public String getStar() {
		return star;
	}
	public void setStar(String star) {
		this.star = star;
	}
	/**
	 * 订单id
	 */
	private String orderid;
	/**
	 * 用户id
	 */
	private String userid;
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
	 * 货单id
	 */
	private String cargoid;
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
	/**
	 * 体积
	 */
	private String party;
	/**
	 * 重量
	 */
	private String tons;
	
	/**
	 * 体积重量计价单位 : 0:重货（元吨/公里） 1:泡货（元方/公里）
	 */
	private String blf_typ;
	
	/**
	 *  保证金  0:不需要 1：需要
	 */
	private String margin;
	/**
	 *  余额抵消的部分金额
	 */
	private String margin_offset;
	/**
	 *  备注
	 */
	private String remark;
		
	public String getMargin() {
		return margin;
	}
	public void setMargin(String margin) {
		this.margin = margin;
	}
	public String getBlf_typ() {
		return blf_typ;
	}
	public void setBlf_typ(String blf_typ) {
		this.blf_typ = blf_typ;
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
	public String getDirverid() {
		return dirverid;
	}
	public void setDirverid(String dirverid) {
		this.dirverid = dirverid;
	}
	public String getOrderid() {
		return orderid;
	}
	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}
	public String getMargin_req() {
		return margin_req;
	}
	public void setMargin_req(String margin_req) {
		this.margin_req = margin_req;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
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
	public String getCargoid() {
		return cargoid;
	}
	public void setCargoid(String cargoid) {
		this.cargoid = cargoid;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getSerial_num_dirver() {
		return serial_num_dirver;
	}
	public void setSerial_num_dirver(String serial_num_dirver) {
		this.serial_num_dirver = serial_num_dirver;
	}
	public String getOrder_t() {
		return order_t;
	}
	public void setOrder_t(String order_t) {
		this.order_t = order_t;
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
	public String getMargin_offset() {
		return margin_offset;
	}
	public void setMargin_offset(String margin_offset) {
		this.margin_offset = margin_offset;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getRule() {
		return rule;
	}
	public void setRule(String rule) {
		this.rule = rule;
	}
	public String getPay_typ() {
		return pay_typ;
	}
	public void setPay_typ(String pay_typ) {
		this.pay_typ = pay_typ;
	}
	
	
}

package com.lxhrainy.api.util;

public class ApiConstant {
	
	/**
	 * 全国
	 * value : 全国
	 */
	public static final Integer API_NOTICE_BUSINESS = 2;
	/**
	 * 全国
	 * value : 全国
	 */
	public static final String API_NATIONAL = "全国";
	/**
	/**
	 * 货主
	 * value :user
	 */
	public static final String API_USER = "user";
	/**
	 * 车主
	 *  value : driver
	 */
	public static final String API_DRIVER = "driver";
	/**
	/**
	 * 货主
	 * value :1
	 */
	public static final int API_USER_TYPE_USER = 1;
	/**
	 * 车主
	 *  value : 2
	 */
	public static final int API_USER_TYPE_DRIVER = 2;
	
	/** 
	 * 用户启用
	 *  value : 1
	 */
	public static final Integer API_USER_ALLOW = 1;
	/**
	 * 用户禁用
	 *  value : 2
	 */
	public static final Integer API_USER_FORBIDDEN = 2;
	/**
	 * 认证成功
	 * 	value : 2
	 */
	public static final Integer API_CERTIFIED = 2;
	/**
	 * 未认证
	 *  value : 0
	 */
	public static final Integer API_NOT_CERTIFIED = 0;
	/**
	 * 审核中
	 * 	value : 1
	 */
	public static final Integer API_CERTIFIED_AUDIT = 1;
	/**
	 * 认证失败
	 * 	value : 3
	 */
	public static final Integer API_CERTIFIED_FIALURE = 3;
	/**
	 * 冻结
	 * 	value : 2
	 */
	public static final Integer API_ACCOUNT_FROZEN = 2;
	/**
	 * 解冻
	 *  value : 1
	 */
	public static final Integer API_ACCOUNT_UNFREEZE = 1;
	/**
	 * 货源状态 : 失效
	 * 	value : 1
	 */
	public static final Integer API_GOODS_STATUS_INVALID = 1;
	/**
	 * 货源状态 ： 未接
	 *  value : 0
	 */
	public static final Integer API_GOODS_STATUS_UNCONFIRM = 0;
	/**
	 * 货源状态 ： 已接
	 *  value : 2
	 */
	public static final Integer API_GOODS_STATUS_CONFIRM= 2;
	/**
	 * 订单状态 ： 0:待发货，待接货
	 */
	public static final Integer API_ORDER_STATUS_CREATE = 0;
	/**
	 * 订单状态 ： 1:提交发货，确认收货
	 */
	public static final Integer API_ORDER_STATUS_CONFIRM_USER = 1;
	/**
	 * 订单状态 ： 2:配送中
	 */
	public static final Integer API_ORDER_STATUS_CONFIRM_DRIVER = 2;
	/**
	 * 订单状态 ： 3:确认送达，提交送达；
	 */
	public static final Integer API_ORDER_STATUS_ARRIVED = 3;
	/**
	 * 订单状态 ： 4:已签收\待支付
	 */
	public static final Integer API_ORDER_STATUS_COLLECT = 4;
	/**
	 * 订单状态 ：  5：已支付\待评价
	 */
	public static final Integer API_ORDER_STATUS_OFFER = 5;
	/**
	 * 订单状态 ：6:车主已评价
	 */
	public static final Integer API_ORDER_STATUS_CAR_APPRAISE = 6;
	/**
	 * 订单状态 ：7:货主已评价
	 */
	public static final Integer API_ORDER_STATUS_GOODS_APPRAISE = 7;
	/**
	 * 订单状态 ：8:已完成
	 */
	public static final Integer API_ORDER_STATUS_FINISH = 8;
	/**
	 * 订单状态  : 9:已取消
	 */
	public static final Integer API_ORDER_STATUS_CANCEL = 9;
	/**
	 * 用户身份  0:货主,1:车主
	 */
	public static final String API_JSON_PARAM_RULE = "rule";
	/**
	 * 用户id
	 */
	public static final String API_JSON_PARAM_USERID = "userid";
	/**
	 * 真实姓名
	 */
	public static final String API_JSON_PARAM_NAME = "name";
	/**
	 * 联系方式
	 */
	public static final String API_JSON_PARAM_CONTACT = "contact";
	/**
	 * 头像id
	 */
	public static final String API_JSON_PARAM_ICONID = "iconid";
	/**
	 * 企业名称
	 */
	public static final String API_JSON_PARAM_ENTERPRISE = "enterprise";
	/**
	 * 公司所在地(省市县)
	 */
	public static final String API_JSON_PARAM_ENT_ADDRESS = "ent_address";
	/**
	 * 详细地址(街道-路-号)
	 */
	public static final String API_JSON_PARAM_ENT_DETAIL_ADDRESS = "ent_detail_address";
	/**
	 * 详细地址(街道-路-号)
	 */
	public static final String API_JSON_PARAM_ADDRESS_DETAIL = "address_detail";
	/**
	 * 详细地址经度
	 */
	public static final String API_JSON_PARAM_ADDRESS_LAT = "address_lat";
	/**
	 * 详细地址纬度
	 */
	public static final String API_JSON_PARAM_ADDRESS_LNG = "address_lng";
	/**
	 * 营业执照照片id
	 */
	public static final String API_JSON_PARAM_ENT_ICONURL = "ent_iconurl";
	/**
	 * 身份证号
	 */
	public static final String API_JSON_PARAM_IDENTITY = "identity";
	/**
	 * 身份证照片id
	 */
	public static final String API_JSON_PARAM_IDENTITY_ICONID = "identity_iconid";
	/**
	 * 身份证背面照片id
	 */
	public static final String API_JSON_PARAM_IDENTITY_BACK_ICONID = "identity_back_iconid";
	/**
	 * 驾驶证号
	 */
	public static final String API_JSON_PARAM_DRIVING_LICENCE = "driving_licence";
	/**
	 * 驾驶证号图片id
	 */
	public static final String API_JSON_PARAM_DRIVING_LICENCE_ICONID = "driving_licence_iconid";
	/**
	 * 驾驶员所在公司
	 */
	public static final String API_JSON_PARAM_DRIVING_COMPANY = "driving_company";
	/**
	 * 车牌号
	 */
	public static final String API_JSON_PARAM_PLATE = "plate";
	/**
	 * 车型
	 */
	public static final String API_JSON_PARAM_MODEL = "model";
	/**
	 * 车长
	 */
	public static final String API_JSON_PARAM_CONDUCTOR = "conductor";
	/**
	 * 体积
	 */
	public static final String API_JSON_PARAM_PARTY = "party";
	/**
	 * 重量
	 */
	public static final String API_JSON_PARAM_TONS = "tons";
	/**
	 * 随车电话
	 */
	public static final String API_JSON_PARAM_DIVER_CELL = "diver_cell";
	/**
	 * 车主电话
	 */
	public static final String API_JSON_PARAM_OWNER_CELL = "owner_cell";
	/**
	 * 所在地(省市县)	
	 */
	public static final String API_JSON_PARAM_ADDRESS = "address";
	/**
	 * 运营证照片照片id
	 */
	public static final String API_JSON_PARAM_OPERACERT_ICONID = "operacert_iconid";
	/**
	 * 认证状态
	 */
	public static final String API_JSON_PARAM_CERTIFIED = "certified";
	/**
	 * 常跑城市
	 */
	public static final String API_JSON_PARAM_COMM_ADDRS = "comm_addrs";
	/**
	 * 车头照片id
	 */
	public static final String API_JSON_PARAM_CAR_ICONID = "car_iconid";
	/**
	 * 车辆id
	 */
	public static final String API_JSON_PARAM_CARID = "carid";
	/**
	 * 行驶证照片照片id
	 */
	public static final String API_JSON_PARAM_LICENCE_ICONID = "license_iconid";
	/**
	 * 
	 */
	public static final String API_JSON_PARAM_ = "";
	/**
	 * 发货类型	长期货源：为空 临时货源：具体日期
	 * 
	 */
	public static final String API_JSON_PARAM_PUB_TYP = "pub_typ";
	/**
	 * 发布范围，目前只需要添0  所有车辆：0 收藏车辆：1
	 */
	public static final String API_JSON_PARAM_PUB_RAG = "pub_rag";
	/**
	 * 始发地
	 */
	public static final String API_JSON_PARAM_PROV = "prov";
	/**
	 * 始发地详细地址
	 */
	public static final String API_JSON_PARAM_PROV_DETAIL = "prov_detail";
	/**
	 * 始发地纬度
	 */
	public static final String API_JSON_PARAM_PROV_LAT = "prov_lat";
	/**
	 * 始发地经度
	 */
	public static final String API_JSON_PARAM_PROV_LNG = "prov_lng";
	/**
	 * 目的地
	 */
	public static final String API_JSON_PARAM_DEST = "dest";
	/**
	 * 目的地详细地址
	 */
	public static final String API_JSON_PARAM_DEST_DETAIL = "dest_detail";
	/**
	 * 目的地纬度
	 */
	public static final String API_JSON_PARAM_DEST_LAT = "dest_lat";
	/**
	 * 目的地经度
	 */
	public static final String API_JSON_PARAM_DEST_LNG = "dest_lng";
	/**
	 * 货物类型 :枚举，0为其他，其他类型见车辆认证表
	 */
	public static final String API_JSON_PARAM_CARGO_TYP = "cargo_typ";
	/**
	 * 体积重量计价单位 : 0:重货（元吨/公里） 1:泡货（元方/公里）
	 */
	public static final String API_JSON_PARAM_BLF_TYP = "blf_typ";
	/**
	 * 车型要求 : 枚举，0为不限，其他类型见车辆认证表
	 */
	public static final String API_JSON_PARAM_MODEL_REM = "model_rem";
	/**
	 * 车长要求 枚举，0为不限，其他类型见车辆认证表
	 */
	public static final String API_JSON_PARAM_COND_REM = "cond_rem";
	/**
	 * 期望运费   0:面议 N：具体数值
	 */
	public static final String API_JSON_PARAM_FREIGHT_EXP = "freight_exp";
	/**
	 *  保证金  0:不需要 1：需要
	 */
	public static final String API_JSON_PARAM_MARGIN = "margin";
	/**
	 * 备注
	 */
	public static final String API_JSON_PARAM_REMARK = "remark";
	/**
	 * 附加照片id
	 */
	public static final String API_JSON_PARAM_CARGO_IMGS = "cargo_imgs";
	/**
	 * 获取个数 <br/>
	 * 	value : count
	 */
	public static final String API_JSON_PARAM_COUNT = "count";
	/**
	 *货源列表起始序号 <br/>
	 * 	value : offsetid
	 */
	public static final String API_JSON_PARAM_OFFSETID = "offsetid";
	/**
	 * 目的地 <br/>
	 * 	value : to
	 */
	public static final String API_JSON_PARAM_TO = "to";
	/**
	 * 出发地 <br/>
	 * 	value : count
	 */
	public static final String API_JSON_PARAM_FROM = "from";
	/**
	 * 总数
	 *  vaule ： total
	 */
	public static final String API_JSON_PARAM_TOTAL = "total";
	/**
	 * 用户等级
	 *  vaule ： level
	 */
	public static final String API_JSON_PARAM_LEVEL = "level";
	/**
	 * 发布量<br/>
	 * value :amount
	 */
	public static final String API_JSON_PARAM_AMOUNT = "amount";
	/**
	 * 订单完成率<br/>
	 * value :completion
	 */
	public static final String API_JSON_PARAM_COMPLETION = "completion";
	/**
	 * 星级<br/>
	 * value :star
	 */
	public static final String API_JSON_PARAM_STAR = "star";
	/**
	 * 出车时间<br/>
	 * value :drawout_t
	 */
	public static final String API_JSON_PARAM_DRAWOUT_T = "drawout_t";
	/**
	 * 预计到达时间<br/>
	 * value :arrived_t
	 */
	public static final String API_JSON_PARAM_ARRIVED_T = "arrived_t";
	/**
	 * 途径城市(最多3个)<br/>
	 * value :pathway
	 */
	public static final String API_JSON_PARAM_PATHWAY = "pathway";
	/**
	 * 身份认证信息 <br/>
	 * 	0:未认证、1:审核中、2:认证成功、3:认证失败
	 * value :identify_state
	 */
	public static final String API_JSON_IDENTIFY_STATE = "identify_state";
	/**
	 * 企业认证信息 <br/>
	 * 	0:未认证、1:审核中、2:认证成功、3:认证失败
	 * value :ent_state
	 */
	public static final String API_JSON_ENT_STATE = "ent_state";
	/**
	 * 车辆认证信息 <br/>
	 * 	0:未认证、1:审核中、2:认证成功、3:认证失败
	 * value :car_state
	 */
	public static final String API_JSON_CAR_STATE = "car_state";
	/**
	 * 身份支持，可多个叠加 : 0:未设置，1:支持保证金，2:支持保险，4:支持到付";
	 * value : support
	 */
	public static final String API_JSON_PARAM_SUPPORT = "support";
	/**
	 * 收货人
	 * value : consi
	 */
	public static final String API_JSON_PARAM_CONSI = "consi";
	
	/**
	 * 收货人联系方式
	 * value : consi_cont
	 */
	public static final String API_JSON_PARAM_CONSI_CONT = "consi_cont";
	
	/**
	 * 实际体积重量计价单位
	 * value : blf_typ_real
	 */
	public static final String API_JSON_PARAM_BLF_TYP_REAL = "blf_typ_real";
	/**
	 * 实际体积
	 * value : party_real
	 */
	public static final String API_JSON_PARAM_PARTY_REAL = "party_real";
	/**
	 * 实际重量
	 * value : tons_real
	 */
	public static final String API_JSON_PARAM_TONS_REAL = "tons_real";
	/**
	 * 收货过磅单号
	 * value : weigh_num_real
	 */
	public static final String API_JSON_PARAM_WEIGH_NUM_REAL = "weigh_num_real";
	/**
	 * 实际运费
	 * value : freight_real
	 */
	public static final String API_JSON_PARAM_FREIGHT_REAL = "freight_real";
	/**
	 * 货损费用
	 * value : freight_break
	 */
	public static final String API_JSON_PARAM_FREIGHT_BREAK = "freight_break";
	/**
	 * 收货过磅单号照片id
	 * value : weigh_numid_real
	 */
	public static final String API_JSON_PARAM_WEIGH_NUMID_REAL = "weigh_numid_real";
	
	
	public static final String API_JSON_PARAM_LAT = "lat";
	
	public static final String API_JSON_PARAM_LNG = "lng";
	
	public static final String API_JSON_PARAM_TIME = "time";
	
	public static final String API_JSON_PARAM_DEGRESS = "degress";
	
	public static final String API_JSON_PARAM_SPEED = "speed";

}

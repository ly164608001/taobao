package com.lxhrainy.myjz.common.constant;

public class Global {
	//平台支付宝充值收款账号和名称
	public final static String PLAT_ALIPAY_ACCOUNT = "mayi@qq.com";
	public final static String PLAT_ALIPAY_NAME = "蚂蚁兼职";
	
	//session中的登录者key
	public final static String SESSION_USERNAME = "loginUser";
	//默认地域
	public final static String DEFAULT_LOCATION = "福州";
	//登录者所在地
	public final static String USER_LOCATION = "user_location";
	
	public final static String TARGET_ADMIN = "admin";
	
	/**
	 * 交易通道 1 支付宝 2财付通
	 */
	public final static int PAY_CHANNEL_ALIPAY = 1;
	public final static int PAY_CHANNEL_CFT = 2;
	
	/**
	 * 账号状态
	 */
	public final static int NORMAL = 1;
	public final static int BLACK = 2;
	/**
	 * 账户状态
	 */
	public final static int ACCOUNT_FROZEN = 2;
	public final static int ACCOUNT_NORMAL = 1;
	
	/**
	 * 证件类型 1身份证 2学生证
	 */
	public final static int AUTH_IDCARD = 1;
	public final static int AUTH_STU = 2;
	
	/**
	 * 交易类型 1 收入 2支出
	 */
	public final static int INCOME = 1;
	public final static int PAY = 2;
	
	/** 商家管理 start**/
	//标签管理类型 1 收货类型 2 好评内容
	public final static int LABEL_TYPE_ADDR = 1;
	public final static int LABEL_TYPE_APPRAISE = 2;
	
	//店铺类型 1 淘宝 
	public final static int SHOP_TYPE_TB = 1;
	
	/** 商家管理 end**/
	
	/**帮助中心 start**/
	//顶级菜单的pid为-1
	public final static int ROOT_HELPMENU_ID = -1;
	
	//帮助菜单类型  1 买家中心 2卖家中心
	public final static int USER_CENTER = 1;
	public final static int SELLER_CENTER = 2;
	
	/**帮助中心 end**/
	
	public final static String PROJECT_NAME = "core";
	
	/**顶级菜单ID**/
	public final static int ROOT_MENU_ID = 1;
	/**顶级菜单名称**/
	public final static String ROOT_MENU_NAME = "所有菜单";
	
	//会员角色ID
	public final static int ROLE_ADMIN = 1;
	public final static int ROLE_MEMBER = 2;
	public final static int ROLE_ESTATE = 3;
	public final static int ROLE_AGENT = 4;
	
	//成功失败进行中
	public final static int INIT = 0;
	public final static int SUCCESS = 1;
	public final static int FAIL = -1;
	
	//前台/后台
	public final static int ADMIN = 0;
	public final static int FRONT = 1;
	
	//使用状态
	public final static int UNUSED = 0;
	public final static int USED = 1;
	public final static int OUT_DATE = -1;
	
	//审核状态 0 初始待审核  -2 取消 1通过 -1不通过
	public final static int AUDIT_INIT = 0;
	public final static int AUDIT_CANCEL = -2;
	public final static int AUDIT_PASS = 1;
	public final static int AUDIT_REJECT = -1;
	
	/**用户 start**/
	//重置的用户密码
	public final static String DEFAULT_PASSWORD = "123456";
	
	//用户类型：1 购买者 2 房地产 3 经纪人
	public final static int USER_MEMBER = 10 ;  
	public final static int USER_ESTATE = 30 ;  
	public final static int USER_AGENT = 20 ;  
	public final static int USER_ADMIN = 0 ;
	
	//用户状态:1 启用 2 禁用
	public final static int ENABLE = 1 ;  
	public final static int DISABLE= 2 ; 
	
	//是否 1是 0否
	public final static int YES = 1 ; 
	public final static int NO= 0 ; 
	
	/**用户 end**/
	
	
	//活动类型  1看房活动 2 专题活动 
	public final static int IS_SEEHOUSE=1;
	public final static int IS_THEMATIC=2;
	
	//红包使用状态 -1未使用 1已使用
	public final static int BONUS_UNUSED=0;
	public final static int BONUS_USED=1;
	
	//活动签到 1已签到  -1未签到  0进行中
	public final static int SIGN=1;
	public final static int NOW=0;
	public final static int	UNSIGN=-1;
	
	
	//活动抵扣 1房价总额比例  2抵扣金额
	public final static int DEDUCTION_SCALE=1;
	public final static int DEDUCTION_MONEY=2;
	
	/**交易 start**/
	public final static int TRACE_ING = 0; 
	public final static int TRACE_SUCC = 1;	
	public final static int TRACE_FAIL = -1;		
	/**交易 end**/
	
}


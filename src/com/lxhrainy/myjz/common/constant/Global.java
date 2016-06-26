package com.lxhrainy.myjz.common.constant;

public class Global {
	
	/**帮助中心 start**/
	//顶级菜单的pid为-1
	public final static int ROOT_HELPMENU_ID = -1;
	
	//帮助菜单类型  1 买家中心 2卖家中心
	public final static int USER_CENTER = 1;
	public final static int SELLER_CENTER = 2;
	
	/**帮助中心 end**/
	
	public final static int ROOT_MENU_ID = 1;
	
	//会员角色ID
	public final static int ROLE_MEMBER = 1;
	
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
	
	/**楼盘 start**/
	
	//房源状态 0初始待售 1在售 2 已售 3 已预订
	public final static int HOUSE_SOURCE_INIT = 0; 
	public final static int HOUSE_SOURCE_SELLING = 1;	
	public final static int HOUSE_SOURCE_SELLED = 2;	
	public final static int HOUSE_SOURCE_BOOKED = 3;	
	
	/**楼盘  end**/
	
	/**交易 start**/
	public final static int TRACE_ING = 0; 
	public final static int TRACE_SUCC = 1;	
	public final static int TRACE_FAIL = -1;		
	/**交易 end**/
	
	
	/**订单 start**/
	//默认限制时间 (毫秒)
	public final static long LIMIT_TIME_CONFIRM = 2*3600*1000;     //待确认	 
	public final static long LIMIT_TIME_PAY = 2*3600*1000;         //待付款
	public final static long LIMIT_TIME_CONTRACT = 7*24*3600*1000; //待线下签约+首付
	public final static long LIMIT_TIME_DELAY = 2*24*3600*1000;    //线下签约+首付延期申请审核时间
	public final static long LIMIT_TIME_DEBOOK = 2*24*3600*1000;   //退订等待处理时间
	public final static long LIMIT_TIME_BOOK = 7*24*3600*1000;     //退订有效期
	
	
	//状态 0 待确认 1 待付款 2 待线下签约+首付  9 交易完成 -1 退订 -9 订单关闭
	public final static int ORDER_CONFIRM = 0;	
	public final static int ORDER_PAY = 1;		
	public final static int ORDER_CONTRACT = 2; 
	public final static int ORDER_FINISH = 9;	
	public final static int ORDER_UNSUBSCRIBE = -1;	 
	public final static int ORDER_CLOSED = -9;	
	
	/**
	 * 当前状态(流程) 
	 *  交易正常： 21 待签约-申请延期
	 * 	交易成功： 11 待银行审核 12 银行通知签字 13 银行贷款办理中 14 待银行贷款发放 
	 *  订单退订：-11取消退订 -12 拒绝退订 -13 同意退订 -14 已退款 -15平台介入
	 * 	订单关闭：-21 待确认取消预订  -22 商家超时确认 -23 待付款取消预订 -24 超时支付定金 -25 超时签约+付首付 -26 确认不通过
	 */
	public final static int FINISH_BANK_AUDIT = 11;	
	public final static int FINISH_SIGN = 12;	
	public final static int FINISH_LOAD_HANDLE = 13;	
	public final static int FINISH_LOAD_GRANT = 14;	
	
	public final static int CLOSED_CANCEL = -21;
	public final static int CLOSED_CONFIRM_REJECT = -26;
	public final static int CLOSED_OVERTIME_CONFIRM = -22;	
	public final static int CLOSED_PAY_CANCEL = -23;
	public final static int CLOSED_OVERTIME_PAY = -24;	
	public final static int CLOSED_OVERTIME_CONTRACT = -25;
	
	public final static int UNSUBSCRIBE_CANCEL = -11;	
	public final static int UNSUBSCRIBE_REFUSE = -12;	
	public final static int UNSUBSCRIBE_PASS = -13;	
	public final static int UNSUBSCRIBE_REFUND = -14;
	public final static int UNSUBSCRIBE_PLATFORM_INTO = -15;
	
	public final static int ORDER_CONTRACT_DELAY = 21;
	
	//订单来源 1 预订 2抢购
	public final static int ORDER_SOURCE_BOOK = 1;	
	public final static int ORDER_SOURCE_RUSH = 2;	
	
	/**订单 end**/
	
	
	
	/** 楼盘管理 start **/
	public final static int HOUSES_AUDIT_PASS = 1;//审核通过
	public final static int HOUSES_AUDIT_NOPASS = -1;//审核不通过
	/** 楼盘管理 end **/



/** 消息记录管理 start  xuyongzhen**/
//消息记录阅读状态 -1未使用 1已使用
	public final static int NOTICE_RECORD_UNREAD=-1;
	public final static int NOTICE_RECORD_READ=1;
/** 消息记录管理 end **/
	
/** 站内信管理 start   xuyongzhen**/
//消息记录阅读状态 -1未使用 1已使用
	public final static int STATION_LETTER_UNREAD=-1;
	public final static int STATION_LETTER_READ=1;
/** 站内信管理 end **/
}


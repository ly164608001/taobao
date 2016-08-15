package com.lxhrainy.api.util;

public class ApiConstant {
	
	/**
	 * 网站公告
	 */
	public static final int MSG_WEB = 0;
	/**
	 * 消息
	 */
	public static final int MSG_USER = 1;
	/**
	 * 滚动消息数
	 */
	public static final int MSG_WEB_NUM = 5;
	/**
	 * 消息已读
	 */
	public static final int MSG_UNREAD = 0;
	
	public static final int MSG_READ = 1;
	
	
	public static final int TAOBAO = 0;
	
	public static final int JINGDONG = 1;
	
	/** 
	 * 用户启用
	 *  value : 1
	 */
	public static final int API_USER_ALLOW = 1;
	/**
	 * 用户禁用
	 *  value : 2
	 */
	public static final int API_USER_FORBIDDEN = 2;
	
	public static final int YES = 1;
	
	public static final int NO = 0;
	
	//审核状态 0 初始待审核  -2 取消 1通过 -1不通过
	public final static int AUDIT_INIT = 0;
	public final static int AUDIT_CANCEL = -2;
	public final static int AUDIT_PASS = 1;
	public final static int AUDIT_REJECT = -1;
	
	//提现状态
	public final static int WITHDRAWLS_STATUS_INIT = 0;
	public final static int WITHDRAWLS_STATUS_SUCC = 1;//成功
	public final static int WITHDRAWLS_STATUS_FAIL = -1;//失败
	//1正常到账 2快速到账
	public final static int WITHDRAWLS_TYPE_NORMAL = 1;
	public final static int WITHDRAWLS_TYPE_QUICK = 2;
	//交易类型 1收入(任务奖金 YES) 2支出(提现NO)
	public final static int TRACE_TYPE_OUT = 2;
	public final static int TRACE_TYPE_IN = 1;
	
	public final static int AUTH_TYPE_ID = 0;
	public final static int AUTH_TYPE_STU = 0;
	
	//用户类型：1 刷手 2 商家
	public final static int USER_BUYER = 1 ;  
	public final static int USER_SELLER = 2 ;  
	public final static int USER_ADMIN = 0 ;
	
}

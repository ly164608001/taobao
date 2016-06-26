package com.lxhrainy.api.util;

public class ResultJson {
	/**
	 * 账号已经于xxx，在其他地方登录。确认登录后，其他地方登录的账号将离线
	 * 出现位置 : 当账号被其他地方登录后，尝试进行账号相关接口操作时，返回提示
	 * 	value : -404
	 */
	public static final String ERROR_CODE_USER_LOGINED = "-404";
	/**
	 * 服务器接口异常
	 * 	出现位置 : 接口不存在、接口层出故障
	 * 	value : -405
	 	* */
	public static final String ERROR_CODE_API = "-405";
	/**
	 * 参数传递不正确
	 * 	出现位置 : 参数格式解析错误、参数不全
	 * 	 value : -406
	 */
	public static final String ERROR_CODE_PARAMETERS = "-406";
	/**
	 * 非法调用
	 * 	出现位置 : 权限不够
	 * 	value : -407
	 */
	public static final String ERROR_CODE_USER_NO_AUTH = "-407";
	/**
	 * 通用(根据实际业务进行文字区分)错误
	 * 	出现位置 : 当找不到对应错误编号时
	 * value : -1
	 */
	public static final String ERROR_CODE_GENERAL = "-1";
	/**
	 * 执行（根据实际业务进行文字区分）成功
	 * 出现位置 : 接口调用成功 
	 *  value : 0
	 */
	public static final String SUCCESS = "0";
	
	/**
	 * 账号已注册,请直接登录
	 * 	出现位置 : 同一个身份重复提交注册
	 * 	value : -2
	 */
	public static final String ERROR_CODE_USER_EXIST = "-2";
	/**
	 * 邀请人账号不存在
	 *  	value : -3
	 */
	public static final String ERROR_CODE_INVITER_NOT_EXIST = "-3";
	/**
	 * 验证码错误
	 *  	value : -4
	 */
	public static final String ERROR_CODE_CAPTCHA = "-4";
	/**
	 * 密码错误
	 *  	value : -5
	 */
	public static final String ERROR_CODE_PASSWORD = "-5";
	/**
	 * 网络连接失败
	 *  	value : -4
	 */
	public static final String ERROR_CODE_NETWORK = "-408";
	/**
	 * 网络连接超时
	 *  	value : -409
	 */
	public static final String ERROR_CODE_TIME_OUT = "-409";
	/**
	 * 用户未登录
	 *  	value : -410
	 */
	public static final String ERROR_CODE_USER_NOT_LOGIN = "-410";
	/**
	 * 用户不存在
	 *  	value : -411
	 */
	public static final String ERROR_CODE_USER_NOT_EXIST = "-411";
	
	private boolean success = false;
	private String error_code;
	private String message;
	private Object result;
	
	public ResultJson() {
		super();
	}
	
	public ResultJson(String error_code) {
		super();
		this.error_code = error_code;
	}
	public ResultJson(String error_code, String message) {
		super();
		this.error_code = error_code;
		this.message = message;
	}

	public ResultJson(boolean success, String error_code) {
		super();
		this.success = success;
		this.error_code = error_code;
	}
	public ResultJson(boolean success, String error_code, String message) {
		super();
		this.success = success;
		this.error_code = error_code;
		this.message = message;
	}
	public boolean isSuccess() {
		return success;
	}
	public void setSuccess(boolean success) {
		this.success = success;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getError_code() {
		return error_code;
	}
	public void setError_code(String error_code) {
		this.error_code = error_code;
	}
	public Object getResult() {
		return result;
	}
	public void setResult(Object result) {
		this.result = result;
	}
	public void addSuccessMsg(String msg) {
		setSuccess(true);
		setError_code(SUCCESS);
		setMessage(msg);
	}
	public void addSuccessMsg(String msg,Object result) {
		addSuccessMsg(msg);
		setResult(result);
	}
	public void addFailureMsg(String msg) {
		setError_code(ERROR_CODE_GENERAL);
		setMessage(msg);
	}
}

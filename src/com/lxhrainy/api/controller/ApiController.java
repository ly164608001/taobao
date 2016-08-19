package com.lxhrainy.api.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.api.model.ApiParams;
import com.lxhrainy.api.service.ITaskApiService;
import com.lxhrainy.api.service.IUserApiService;
import com.lxhrainy.api.util.ApiCacheUtil;
import com.lxhrainy.api.util.ApiJSONUtil;
import com.lxhrainy.api.util.ResultJson;
import com.lxhrainy.core.utils.UploadFileUtil;


/**
 * 手机用户相关API的Controller.
 * @author dyno
 */
@Controller
@RequestMapping(value="api")
public class ApiController {
	
	@Autowired
	private IUserApiService userApiService;
	@Autowired
	private ITaskApiService taskApiService;
	
	@RequestMapping(value="test")
	public String test() throws IOException {
		return "api/test";
	}
	
	/**
	 * 图片上传
	 * @param request
	 * @param response
	 */
	@RequestMapping(value="UploadImage", method=RequestMethod.POST )
	public void uploadimg(HttpServletRequest request, HttpServletResponse response) {
		ResultJson rj = new ResultJson();
		JSONObject result = UploadFileUtil.uploadFile(request);
		if ((boolean) result.get("success")) {
			rj.setSuccess(true);
			rj.setError_code(ResultJson.SUCCESS);
			rj.setMessage("上传成功");
		} else {
			rj.setError_code(ResultJson.ERROR_CODE_API);
			rj.setMessage("上传失败");
		}
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 获取广告列表
	 * @param params
	 * @param response
	 */
	@RequestMapping(value="AdList", method=RequestMethod.POST )
	public void adlist(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.adlist(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 获取消息列表
	 * @param params
	 * @param response
	 */
	@RequestMapping(value="MessageList",method = RequestMethod.POST)
	public void msglist(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.msglist(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 消息已读
	 * @param params
	 * @param response
	 */
	@RequestMapping(value="MessageRead", method=RequestMethod.POST )
	public void msgread(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.msgread(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 消息删除
	 * @param params
	 * @param response
	 */
	@RequestMapping(value="MessageDele", method=RequestMethod.POST )
	public void msgdel(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.msgdel(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 消息通知设置
	 * @param params
	 * @param response
	 */
	@RequestMapping(value="MessageSet", method=RequestMethod.POST )
	public void msgset(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.msgset(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 获取条数信息
	 * @param params
	 * @param response
	 */
	@RequestMapping(value="Numbers", method=RequestMethod.POST )
	public void numbers(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.getNumbers(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 获取系统配置
	 * @param params
	 * @param response
	 */
	@RequestMapping(value="Config", method=RequestMethod.POST )
	public void config(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.getSysConfig(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 获取滚动通知列表
	 * @param params
	 * @param response
	 */
	@RequestMapping(value="NoticeList", method=RequestMethod.POST )
	public void noticelist(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.noticelist(params);
		this.writeJsonToResponse(rj, response);
	}
	
	
	
	
	
	
	
	
	
	
	/**
	 * 获取买号列表
	 * @param params  手机号码
	 * @param response
	 * @throws IOException 
	 */
	@RequestMapping(value="BuyerAccountList", method=RequestMethod.POST )
	public void buyerAccountList(InputStream inputStream, HttpServletResponse response) throws IOException {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.buyerAccountList(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 买号添加或升级
	 * @param params  手机号码
	 * @param response
	 * @throws IOException 
	 */
	@RequestMapping(value="BuyerAccountAdd", method=RequestMethod.POST )
	public void buyerAccountAdd(InputStream inputStream, HttpServletResponse response) throws IOException {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.buyerAccountAdd(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 获取提现手续费
	 * @param params
	 * @param response
	 */
	@RequestMapping(value="WithdrawFee", method=RequestMethod.POST )
	public void withdrawFee(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.withdrawFee(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 申请提现
	 * @param params
	 * @param response
	 */
	@RequestMapping(value="Withdraw", method=RequestMethod.POST )
	public void withdrawal(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.withdrawal(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 提现列表
	 * @param params
	 * @param response
	 */
	@RequestMapping(value="WithdrawList", method=RequestMethod.POST )
	public void withdrawList(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.withdrawList(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 收入列表
	 * @param params
	 * @param response
	 */
	@RequestMapping(value="IncomeList", method=RequestMethod.POST )
	public void incomeList(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.incomeList(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 银行卡列表
	 * @param params
	 * @param response
	 */
	@RequestMapping(value="BankcardList", method=RequestMethod.POST )
	public void bankcardList(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.bankcardList(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 绑定银行卡
	 * @param params
	 * @param response
	 */
	@RequestMapping(value="BankcardAdd", method=RequestMethod.POST )
	public void bankcardAdd(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.bankcardAdd(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	* 解除银行卡
	* @param params
	* @param response
	*/
	@RequestMapping(value="BankcardDele", method=RequestMethod.POST )
	public void bankcardDele(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.bankcardDele(params);
		this.writeJsonToResponse(rj, response);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * 实名认证
	 * @param params
	 * @param response
	 * @throws IOException 
	 */
	@RequestMapping(value="Certificate", method=RequestMethod.POST )
	public void certificate(InputStream inputStream, HttpServletResponse response){
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.certificate(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 实名认证信息
	 * @param params
	 * @param response
	 * @throws IOException 
	 */
	@RequestMapping(value="CertificateInfo", method=RequestMethod.POST )
	public void certificateInfo(InputStream inputStream, HttpServletResponse response){
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.certificateInfo(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 忘记密码
	 * @param params  电话号码,验证码,新密码
	 * @param response
	 * @throws IOException 
	 */
	@RequestMapping(value="ForgetPassword", method=RequestMethod.POST )
	public void resetPwd(InputStream inputStream, HttpServletResponse response){
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.forgetPassword(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 用户注册
	 * @param json :
	 * 		username 用户名（必须）
	 *		password 密码（必须）
	 *		inviter 邀请人账号	
	 *		captcha 验证码（必须）
	 * @param response
	 */
	@RequestMapping(value="Sigin", method=RequestMethod.POST )
	public void register(InputStream inputStream, HttpServletResponse response) {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.register(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 获取用户信息
	  * @param json : 
	  * 		userid 用户id（必须）
	 * 		    rule 用户身份（必须）0:货主,1:车主
	 * @param response
	 */
	@RequestMapping(value="UserInfo", method=RequestMethod.POST )
	public void userInfo(InputStream inputStream, HttpServletResponse response) {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.userInfo(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 登出接口
	 * @param response
	 */
	@RequestMapping(value="Logout", method=RequestMethod.POST )
	public void logout(HttpServletResponse response) {
		ResultJson rj =new ResultJson();
		ApiCacheUtil.logoutUser();
		rj.setSuccess(true);
		rj.setMessage("登出成功");
		rj.setError_code(ResultJson.SUCCESS);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 用户登录
	 * @param json : 
	 * 		username 用户名（必须）
	 * 		password 密码（必须）
	 * @param response
	 */
	@RequestMapping(value="Login", method=RequestMethod.POST )
	public void login(InputStream inputStream, HttpServletResponse response) {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.login(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 修改用户信息
	 * @param json : 
	 * 		username 用户名（必须）
	 * 		password 密码（必须）
	 * @param response
	 */
	@RequestMapping(value="EditUserInfo", method=RequestMethod.POST )
	public void editUserInfo(InputStream inputStream, HttpServletResponse response) {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.editUserInfo(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 获取手机验证码
	 * @param params  手机号码
	 * @param response
	 * @throws IOException 
	 */
	@RequestMapping(value="GetInvitation", method=RequestMethod.POST )
	public void getVerity(InputStream inputStream, HttpServletResponse response) throws IOException {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.getVerity(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 获取手机验证码
	 * @param params  手机号码
	 * @param response
	 * @throws IOException 
	 */
	@RequestMapping(value="SetPassword", method=RequestMethod.POST )
	public void setPassword(InputStream inputStream, HttpServletResponse response) throws IOException {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.setPassword(params);
		this.writeJsonToResponse(rj, response);
	}
	
	
	
	
	
	
	
	
	/**
	 * 任务列表
	 * @param params  
	 * @param response
	 * @throws IOException 
	 */
	@RequestMapping(value="TaskList", method=RequestMethod.POST )
	public void taskList(InputStream inputStream, HttpServletResponse response) throws IOException {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = taskApiService.taskList(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 任务执行步骤
	 * @param params  
	 * @param response
	 * @throws IOException 
	 */
	@RequestMapping(value="TaskAction", method=RequestMethod.POST )
	public void taskAction(InputStream inputStream, HttpServletResponse response) throws IOException {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = taskApiService.taskAction(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 任务执行步骤
	 * @param params  
	 * @param response
	 * @throws IOException 
	 */
	@RequestMapping(value="GetTask", method=RequestMethod.POST )
	public void getTask(InputStream inputStream, HttpServletResponse response) throws IOException {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = taskApiService.getTask(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * 任务执行步骤
	 * @param params  
	 * @param response
	 * @throws IOException 
	 */
	@RequestMapping(value="Complain", method=RequestMethod.POST )
	public void complain(InputStream inputStream, HttpServletResponse response) throws IOException {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = taskApiService.complain(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * TaskActionInfo
	 * @param params  
	 * @param response
	 * @throws IOException 
	 */
	@RequestMapping(value="TaskActionInfo", method=RequestMethod.POST )
	public void taskActionInfo(InputStream inputStream, HttpServletResponse response) throws IOException {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = taskApiService.taskActionInfo(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * ComplainList
	 * @param params  
	 * @param response
	 * @throws IOException 
	 */
	@RequestMapping(value="ComplainList", method=RequestMethod.POST )
	public void complainList(InputStream inputStream, HttpServletResponse response) throws IOException {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = taskApiService.complainList(params);
		this.writeJsonToResponse(rj, response);
	}
	
	/**
	 * json发送到client
	 * @param object
	 * @param response
	 */
	public void writeJsonToResponse(Object object,HttpServletResponse response) {
		try {
			/*if (object instanceof ResultJson) {
				HttpServletRequest request = ContextHolderUtils.getRequest();
				ResultJson rj = (ResultJson) object;
				TSLog log = new TSLog();
				log.setLogcontent("Method : "+ request.getQueryString() +" ; msg : " + rj.getMessage() + " ; error_code : " + rj.getError_code());
				if (rj.isSuccess()) {
					log.setLoglevel(Globals.Log_Leavel_INFO);
				} else {
					log.setLoglevel(Globals.Log_Leavel_ERROR);
				}
				log.setOperatetype(Globals.Log_Type_OTHER);
				log.setNote(oConvertUtils.getIpAddrByRequest(request));
				UserInfo loginUser = ApiCacheUtil.getLoginUser();
				if (oConvertUtils.isNotEmpty(loginUser)) {
					log.setUsername(loginUser.getUsername());
					log.setBroswer("platform : "+ loginUser.getPlatform() + " ; app :  " + loginUser.getApp());
				} else {
					log.setUsername("系统接口调用");
					log.setBroswer("系统接口调用");
				}
				log.setOperatetime(DateUtils.gettimestamp());
				systemService.save(log);
			}*/
			PrintWriter pw = response.getWriter();
			response.setContentType("application/json;charset=UTF-8");
			pw.write(JSON.toJSONStringWithDateFormat(object, "yyyy-MM-dd HH:mm:ss"));
			pw.flush();
			pw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}

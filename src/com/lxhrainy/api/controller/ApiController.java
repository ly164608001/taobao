package com.lxhrainy.api.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.api.model.ApiParams;
import com.lxhrainy.api.service.IUserApiService;
import com.lxhrainy.api.util.ApiCacheUtil;
import com.lxhrainy.api.util.ApiJSONUtil;
import com.lxhrainy.api.util.ResultJson;
import com.lxhrainy.core.utils.UploadFileUtil;


/**
 * 手机用户相关API的Controller.
 * @author dyno
 */
@Scope("prototype")
@Controller
@RequestMapping("/api")
@SuppressWarnings("unchecked")
public class ApiController {
	
	@Autowired
	private IUserApiService userApiService;
	
	@RequestMapping(params = "test")
	public String test() throws IOException {
		return "api/test";
	}
	
	/**
	 * 获取手机验证码
	 * @param params  手机号码
	 * @param response
	 * @throws IOException 
	 */
	@RequestMapping(params = "getVerity")
	public void getVerity(InputStream inputStream, HttpServletResponse response) throws IOException {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.getVerity(params);
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
	@RequestMapping(params = "register" , method = RequestMethod.POST)
	public void register(InputStream inputStream, HttpServletResponse response) {
		ApiCacheUtil.getLoginUser();
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.register(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 用户登录
	 * @param json : 
	 * 		username 用户名（必须）
	 * 		password 密码（必须）
	 * @param response
	 */
	@RequestMapping(params = "login" , method = RequestMethod.POST)
	public void login(InputStream inputStream, HttpServletResponse response) {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.login(params,response);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 登出接口
	 * @param response
	 */
	@RequestMapping(params = "logout" , method = RequestMethod.POST)
	public void logout(HttpServletResponse response) {
		ResultJson rj =new ResultJson();
		ApiCacheUtil.logoutUser();
		rj.setSuccess(true);
		rj.setMessage("登出成功");
		rj.setError_code(ResultJson.SUCCESS);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 绑定推送令牌到账号接口
	 * @param token 令牌(必须）
	 * 			
	 * @param response
	 */
	@RequestMapping(params = "bindToken" , method = RequestMethod.POST)
	public void bindToken(InputStream inputStream, HttpServletResponse response) {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.bindToken(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 修改密码
	 * @param params  电话号码
	 * 				      旧密码
	 * 				     新密码
	 * @param response
	 * @throws IOException 
	 */
	@RequestMapping(params = "changePwd")
	public void changePwd(InputStream inputStream, HttpServletResponse response){
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.changePwd(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 重置密码
	 * @param params  电话号码,验证码,身份证号,新密码
	 * @param response
	 * @throws IOException 
	 */
	@RequestMapping(params = "resetPwd")
	public void resetPwd(InputStream inputStream, HttpServletResponse response){
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.resetPwd(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 获取用户账户信息
	 * @param json : 
	 * 		   userid 用户id（必须）
	 * 		   rule 用户身份（必须）0:货主,1:车主
	 * @param response
	 */
	@RequestMapping(params = "accountInfo" , method = RequestMethod.POST)
	public void accountInfo(InputStream inputStream, HttpServletResponse response) {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.accountInfo(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 获取用户信息
	  * @param json : 
	  * 		userid 用户id（必须）
	 * 		    rule 用户身份（必须）0:货主,1:车主
	 * @param response
	 */
	@RequestMapping(params = "userInfo" , method = RequestMethod.POST)
	public void userInfo(InputStream inputStream, HttpServletResponse response) {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.userInfo(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 更新用户信息
	  * @param json : 
	  * 		userid 用户id（必须）
	 * 		    rule 用户身份（必须）0:货主,1:车主
	 * @param response
	 */
	@RequestMapping(params = "updateInfo" , method = RequestMethod.POST)
	public void updateInfo(InputStream inputStream, HttpServletResponse response) {
		ApiParams params =	ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.updateInfo(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 认证司机信息
	 * @param json :
	 * 		   userid 用户id(必须）
	 * 		1、  修改用户联系方式跟姓名
	 * 		   name 真实姓名
	 * 		   contact 联系电话
	 * 		   driving_company 驾驶员所在公司
	 *  	2、用户修改头像信息
	 * 		   iconid 头像图片id
	 * 		3、用户提交身份认证信息
	 * 		   driving_licence 驾驶证号
	 * 		   driving_licence_iconid 驾驶证号图片id
	 * 		   identity 身份证号
	 * 		   identity_iconid 身份证照片id
	 * 		   identity_back_iconid 身份证背面照片id
	 * @param response
	 */
	@RequestMapping(params = "certifiedDriver" , method = RequestMethod.POST)
	public void certifiedDriver(InputStream inputStream, HttpServletResponse response) {
		Map<String, String> params = ApiJSONUtil.decryptJSON(inputStream, Map.class);
		ResultJson rj = userApiService.certifiedDriver(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 认证用户/公司信息
	 * @param json :
	 * 		userid 用户id(必须）
	 * 		1、修改用户联系方式跟姓名
	 * 		   name 真实姓名
	 * 		   contact 联系电话
	 *  	2、用户修改头像信息
	 *  	   iconid  头像id
	 *  	3、用户提交企业认证信息 
	 * 		   enterprise 企业名称
	 * 		   ent_address 公司所在地(省市县)
	 * 		   ent_detail_address 详细地址(街道-路-号)
	 * 		   ent_iconurl 营业执照照片id
	 * 		4、用户提交身份认证信息
	 * 		   identity 身份证号
	 * 		   identity_iconid 身份证照片id
	 * 		   identity_back_iconid 身份证背面照片id
	 * @param response
	 */
	@RequestMapping(params = "certifiedUser" , method = RequestMethod.POST)
	public void certifiedUser(InputStream inputStream, HttpServletResponse response) {
		Map<String, String> params = ApiJSONUtil.decryptJSON(inputStream, Map.class);
		ResultJson rj = userApiService.certifiedUser(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 认证车辆信息
	 * 	功能 ： 
	 * 		1、提交车辆信息（必填:plate，model,conductor）
	 *  	2、提交车辆附属信息
	 *  	3、用户提交车辆认证信息（必填：license_iconid，选填：operacert_iconid）	 
	 * @param userid 用户id(必须）
	 * @param plate 车牌号
	 * @param model 车型
	 * @param conductor 车长
	 * @param party 体积
	 * @param tons 重量
	 * @param diver_cell  随车电话
	 * @param owner_cell  车主电话
	 * @param enterprise  企业名称
	 * @param diver_cell  随车电话
	 * @param address  所在地
	 * @param certified 车辆认证状态 : 0:未认证 1:已认证行驶证 2:已认证营运证
	 * @param operacert_iconid 身份证照片id
	 * @param car_iconid 身份证背面照片id
	 * @param license_iconid 行驶证照片照片id
	 * @param response
	 */
	@RequestMapping(params = "certifiedCar" , method = RequestMethod.POST)
	public void certifiedCar(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.certifiedCar(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 图片上传
	 * @param request
	 * @param response
	 */
	@RequestMapping(params = "uploadimg" , method = RequestMethod.POST)
	public void uploadimg(HttpServletRequest request, HttpServletResponse response) {
		ResultJson rj = new ResultJson();
		//TSAttachment file = systemService.uploadFile(uploadFile);
		JSONObject result = UploadFileUtil.savefile(request);
		if ((boolean) result.get("success")) {
			rj.setSuccess(true);
			rj.setError_code(ResultJson.SUCCESS);
			rj.setMessage("上传成功");
			//TODO 返回url
			//rj.setResult(file.getId());
		} else {
			rj.setError_code(ResultJson.ERROR_CODE_API);
			rj.setMessage("上传失败");
		}
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * GET方式 二进制图片数据
	 * @param request id
	 * @param response
	 */
	@RequestMapping(params = "getimg" , method = RequestMethod.GET)
	public void getimg(@RequestParam("id") String id,  HttpServletResponse response) {
		userApiService.getimg(id, response);
	}
	/**
	 * 提交支付账号密码设置
	 * @param params
	 * @param response
	 */
	@RequestMapping(params = "payPassword" , method = RequestMethod.POST)
	public void payPassword(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.payPassword(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 绑定支付账号信息
	 * @param params
	 * @param response
	 */
	@RequestMapping(params = "bindPay" , method = RequestMethod.POST)
	public void bindPay(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.bindPay(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	* 解除绑定支付账号信息
	* @param params
	* @param response
	*/
	@RequestMapping(params = "unbindPay" , method = RequestMethod.POST)
	public void unbindPay(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.unbindPay(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 申请充值
	 * @param params
	 * @param response
	 */
	@RequestMapping(params = "topup" , method = RequestMethod.POST)
	public void topup(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.topup(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 订单支付请求
	 * @param params
	 * @param response
	 */
	@RequestMapping(params = "payOrder" , method = RequestMethod.POST)
	public void payOrder(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.payOrder(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 申请提现
	 * @param params
	 * @param response
	 */
	@RequestMapping(params = "withdrawal" , method = RequestMethod.POST)
	public void withdrawal(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.withdrawal(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 账单列表
	 * @param params
	 * @param response
	 */
	@RequestMapping(params = "billList" , method = RequestMethod.POST)
	public void billList(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.billList(params);
		this.writeJsonToResponse(rj, response);
	}
	/**
	 * 获取广告列表
	 * @param params
	 * @param response
	 */
	@RequestMapping(params = "adlist" , method = RequestMethod.POST)
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
	@RequestMapping(params = "msglist" , method = RequestMethod.POST)
	public void msglist(InputStream inputStream, HttpServletResponse response) {
		ApiParams params = ApiJSONUtil.decryptJSON(inputStream, ApiParams.class);
		ResultJson rj = userApiService.msglist(params);
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

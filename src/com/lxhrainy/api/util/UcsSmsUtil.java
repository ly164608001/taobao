/**
 * @author Glan.duanyj
 * @date 2014-05-12
 * @project rest_demo
 */
package com.lxhrainy.api.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import com.alibaba.fastjson.JSONObject;
import com.lxhrainy.api.util.sms.client.AbsRestClient;
import com.lxhrainy.api.util.sms.client.JsonReqClient;
import com.lxhrainy.api.util.sms.client.XmlReqClient;

public class UcsSmsUtil {
	public static String accountSid = "a84e25091ab2f66349b30d83c45a4abf";
	public static String authToken = "d90d33c18f459cab1a1b3454a86e84bb";
	public static String appId="14e70d32e1c34a8e8e6815e31f79d6bd";
	
	static AbsRestClient InstantiationRestAPI(boolean enable) {
		if(enable) {
			return new JsonReqClient();
		} else {
			return new XmlReqClient();
		}
	}
	public static void findAccount(boolean json,String accountSid,String authToken){
		try {
			String result=InstantiationRestAPI(json).findAccoutInfo(accountSid, authToken);
			System.out.println("Response content is: " + result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void createClient(boolean json,String accountSid,String authToken,String appId,String clientName
			,String chargeType,String charge,String mobile){
		try {
			String result=InstantiationRestAPI(json).createClient(accountSid, authToken, appId, clientName, chargeType, charge,mobile);
			System.out.println("Response content is: " + result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void findClients(boolean json,String accountSid,String authToken,String appId,String start
			,String limit){
		try {
			String result=InstantiationRestAPI(json).findClients(accountSid, authToken, appId, start, limit);
			System.out.println("Response content is: " + result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void findClientByNbr(boolean json,String accountSid,String authToken,String clientNumber,String appId){
		try {
			String result=InstantiationRestAPI(json).findClientByNbr(accountSid, authToken, clientNumber,appId);
			System.out.println("Response content is: " + result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void closeClient(boolean json,String accountSid,String authToken,String clientNumber,String appId){
		try {
			String result=InstantiationRestAPI(json).closeClient(accountSid, authToken, clientNumber,appId);
			System.out.println("Response content is: " + result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void chargeClient(boolean json,String accountSid,String authToken,String clientNumber,
			String chargeType,String charge,String appId){
		try {
			String result=InstantiationRestAPI(json).charegeClient(accountSid, authToken, clientNumber, chargeType, charge,appId);
			System.out.println("Response content is: " + result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void billList(boolean json,String accountSid,String authToken,String appId,String date){
		try {
			String result=InstantiationRestAPI(json).billList(accountSid, authToken, appId, date);
			System.out.println("Response content is: " + result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void clientBillList(boolean json,String accountSid,String authToken,String appId,String clientNumber,String date){
		try {
			String result=InstantiationRestAPI(json).clientBillList(accountSid, authToken, appId, clientNumber, date);
			System.out.println("Response content is: " + result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void callback(boolean json,String accountSid,String authToken,String appId,String fromClient,String to,String fromSerNum,String toSerNum){
		try {
			String result=InstantiationRestAPI(json).callback(accountSid, authToken, appId, fromClient, to,fromSerNum,toSerNum);
			System.out.println("Response content is: " + result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void voiceCode(boolean json,String accountSid,String authToken,String appId,String to,String verifyCode){
		try {
			String result=InstantiationRestAPI(json).voiceCode(accountSid, authToken, appId, to, verifyCode);
			System.out.println("Response content is: " + result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 短信发送
	 * @param templateId
	 * @param to
	 * @param param
	 */
	public static String templateSMS(String templateId,String to,String param){
		String res = "";
		try {
			String result=InstantiationRestAPI(true).templateSMS(accountSid, authToken, appId, templateId, to, param);
			JSONObject rj = JSONObject.parseObject(result);
			res = rj.getJSONObject("resp").getString("respCode");
		} catch (Exception e) {
			e.printStackTrace();
			e.printStackTrace();
		}
		return res;
	}
	public static void findClientByMobile(boolean json,String accountSid,String authToken,String mobile,String appId){
		try {
			String result=InstantiationRestAPI(json).findClientByMobile(accountSid, authToken, mobile, appId);
			System.out.println("Response content is: " + result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void dispalyNumber(boolean json,String accountSid,String authToken,String appId,String clientNumber,String display){
		try {
			String result=InstantiationRestAPI(json).dispalyNumber(accountSid, authToken, appId, clientNumber, display);
			System.out.println("Response content is: " + result);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 测试说明 参数顺序，请参照各具体方法参数名称
	 * 参数名称含义，请参考rest api 文档
	 * @author Glan.duanyj
	 * @date 2014-06-30
	 * @param params[]
	 * @return void
	 * @throws IOException 
	 * @method main
	 */
	public static void main(String[] args) throws IOException {
//		String jsonStr="{\"client\":\"1\"}";
//		JSONObject obj=JSONObject.fromObject(jsonStr);
//		System.out.println(obj.getInt("client"));
		System.out.println("请输入参数，以空格隔开...");
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String param=br.readLine();
		String [] params=param.split(" ");
		String method = params[0];
		boolean json=true;
		if (params[1].equals("xml")) {
			json=false;
		}
		if (method.equals("1")) {
			String accountSid="";
			String token="";
			findAccount(json,accountSid,token);
		}else if (method.equals("2")) {
			createClient(json, params[2],params[3], params[4], params[5], params[6], params[7], params[8]);
		}else if (method.equals("3")) {
			String accountSid="";
			String token="";
			String appId="";
			findClients(json,accountSid,token,appId,"0","5");
		}else if (method.equals("4")) {
			findClientByNbr(json,params[2],params[3], params[4], params[5]);
		}else if (method.equals("5")) {
			closeClient(json, params[2],params[3], params[4], params[5]);
		}else if (method.equals("6")) {
			chargeClient(json, params[2],params[3], params[4], params[5], params[6], params[7]);
		}else if (method.equals("7")) {
			billList(json, params[2], params[3],params[4], params[5]);
		}else if (method.equals("8")) {
			clientBillList(json, params[2], params[3],params[4],params[5], params[6]);
		}else if (method.equals("9")) {
			String accountSid = "";// 主账户Id
			String authToken="";
			String appId="";
			accountSid="";
			authToken="";
			appId="";
			String fromClient="";
			String to="";
			String fromSerNum="";
			String toSerNum="";
			callback(json, accountSid, authToken, appId, fromClient, to, fromSerNum, toSerNum);
		}else if (method.equals("10")) {
			String to="";
			String accountSid="";
			String token="";
			String appId="";
			String para = "";
			voiceCode(json, accountSid, token, appId, to, para);
		}else if (method.equals("11")) { //短信验证码 
			String templateId="27994";
			String to="17750310332";
			String para="1234,2";
			templateSMS(templateId,to,para);
		}else if (method.equals("12")) {
			findClientByMobile(json, params[2],params[3], params[4], params[5]);
		}else if (method.equals("13")) {
			String accountSid="";
			String token="";
			String clientNumber="";
			String appId="";
			String display="1";
			dispalyNumber(json, accountSid, token, appId, clientNumber, display);
		}
	}
}

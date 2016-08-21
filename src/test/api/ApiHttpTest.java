package test.api;

import org.junit.Assert;
import org.junit.Test;

import com.lxhrainy.api.util.HttpUtil;
import com.lxhrainy.api.util.ImageBinary;
import com.lxhrainy.api.util.ResultJson;
import com.lxhrainy.core.utils.JSONHelper;
import com.lxhrainy.core.utils.StringUtil;

public class ApiHttpTest {
	public static final String UUID = "123456";
	
	//public static final String URL = "http://www.myjzpt.com/api";
	public static final String URL = "http://127.0.0.1:8080/core/api";
	/*public static final String USERID = "4";
	public static final String ID = "driver";*/
	
	public static final String USERID = "71";
	public static final String ID = "user";
	
	
	
	//public static final String URL = "http://202.100.180.20/api.do";
	
	/*public static final String USERID = "4";
	public static final String ID = "driver";*/
	
	/*public static final String USERID = "3";
	public static final String ID = "user";*/
	
	@Test
	public void getAdertList() throws Exception{
		String url = URL+"/AdList.htm";
		String params = "{}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	
	@Test
	public void MessageList() throws Exception{
		String url = URL+"/MessageList.htm";
		String params = "{\"count\":10,\"messagetype\":0,\"offsetid\":0}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void MessageRead() throws Exception{
		String url = URL+"/MessageRead.htm";
		String params = "{\"messagetype\":0,\"messageid\":0,\"offsetid\":5}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void MessageDele() throws Exception{
		String url = URL+"/MessageDele.htm";
		String params = "{\"messagetype\":0,\"messageid\":0,\"offsetid\":3}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void MessageSet() throws Exception{
		String url = URL+"/MessageSet.htm";
		String params = "{\"enable\":true}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void Numbers() throws Exception{
		String url = URL+"/Numbers.htm";
		String params = "{\"platform\":\"android\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void Config() throws Exception{
		String url = URL+"/Config.htm";
		String params = "{\"platform\":\"android\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void NoticeList() throws Exception{
		String url = URL+"/NoticeList.htm";
		String params = "{}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void BuyerAccountList() throws Exception{
		String url = URL+"/BuyerAccountList.htm";
		String params = "{\"count\":20,\"offsetid\":0}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	
	@Test
	public void BuyerAccountAdd() throws Exception{
		String url = URL+"/BuyerAccountAdd.htm";
		String params = "{\"accountid\":\"2\",\"account\":\"随便修改\",\"levelimage\":\"http://img0.bdstatic.com/img/image/imglogo-r.png\",\"level\":\"0\",\"accounttype\":0}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	
	@Test
	public void Login() throws Exception{
		String url = URL+"/Login.htm";
		String params = "{\"username\":\"新刷手\",\"password\":\"1234567\",\"uuid\":\"adkalsjdfl\",\"platform\":\"android\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	
	@Test
	public void Sigin() throws Exception{
		String url = URL+"/Sigin.htm";
		String params = "{'phone':'17750310332','password':'123456','invitation':'yun','platform':'ios','captcha':'120318','uuid':'adkalsjdfl','username':'新刷手','QQ':'234345555','name':'罗鑫辉'}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	
	@Test
	public void GetInvitation() throws Exception{
		String url = URL+"/GetInvitation.htm";
		String params = "{\"phone\":\"17750310332\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	
	@Test
	public void UserInfo() throws Exception{
		String url = URL+"/UserInfo.htm";
		String params = "{}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	
	@Test
	public void EditUserInfo() throws Exception{
		String url = URL+"/EditUserInfo.htm";
		String params = "{\"gender\":\"女\",\"avatarurl\":\"http://img0.bdstatic.com/img/image/imglogo-r.png\",\"birthday\":\"1980-07-07\",\"address\":\"福建省 福州市 鼓楼区\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	
	@Test
	public void SetPassword() throws Exception{
		String url = URL+"/SetPassword.htm";
		String params = "{\"password\":\"1234567\",\"type\":1,\"oldpassword\":\"123456\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	
	@Test
	public void Logout() throws Exception{
		String url = URL+"/Logout.htm";
		String params = "{\"platform\":\"android\",\"uuid\":\"adkalsjdfl\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	
	@Test
	public void ForgetPassword() throws Exception{
		String url = URL+"/ForgetPassword.htm";
		String params = "{\"captcha\":\"317685\",\"phone\":\"17750310332\",\"password\":\"1234567\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	
	@Test
	public void Certificate() throws Exception{
		String url = URL+"/Certificate.htm";
		String params = "{\"certificate\":\"64422＊＊＊＊＊123\",\"studentIdfront\" :\"http://img0.bdstatic.com/img/image/imglogo-r.png\",\"studentIdhand\":\"http://img0.bdstatic.com/img/image/imglogo-r.png\",\"identityfront\":\"http://img0.bdstatic.com/img/image/imglogo-r.png\",\"usertoken\":\"0\",\"identityhand\":\"http://img0.bdstatic.com/img/image/imglogo-r.png\",\"liveimage\":\"http://img0.bdstatic.com/img/image/imglogo-r.png\",\"name\":\"钱某某\",\"type\":0}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	
	@Test
	public void CertificateInfo() throws Exception{
		String url = URL+"/CertificateInfo.htm";
		String params = "{}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	
	@Test
	public void BankcardAdd() throws Exception{
		String url = URL+"/BankcardAdd.htm";
		String params = "{\"holder\":\"钱某某\",\"password\":\"1234567\",\"branch\":\"谢谢银行某某支行\",\"card\":\"64422＊＊＊＊＊123\",\"bank\":0,\"place\":\"某某省市县\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void BankcardList() throws Exception{
		String url = URL+"/BankcardList.htm";
		String params = "{\"count\":20,\"offsetid\":0}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void BankcardDele() throws Exception{
		String url = URL+"/BankcardDele.htm";
		String params = "{\"bankid\":5}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void UploadImage() throws Exception{
		String url = URL+"/UploadImage.htm";
		String image = ImageBinary.getImageBinary();
		String params = "{\"image\":\""+image+"\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void Withdraw() throws Exception{
		String url = URL+"/Withdraw.htm";
		String params = "{\"costtime\" : 0,  \"bankid\" : 5,  \"money\" : 10,  \"password\" : \"1234567\",\"fee\" : 1}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void WithdrawList() throws Exception{
		String url = URL+"/WithdrawList.htm";
		String params = "{ \"count\":20,\"offsetid\":0}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void WithdrawFee() throws Exception{
		String url = URL+"/WithdrawFee.htm";
		String params = "{\"money\":10,\"bank\":1,\"costtime\":1}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void IncomeList() throws Exception{
		String url = URL+"/IncomeList.htm";
		String params = "{ \"count\":20,\"offsetid\":0}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	private boolean paserRsult(String result) {
		if (StringUtil.isNotEmpty(result)) {
			ResultJson rj = JSONHelper.fromJsonToObject(result,ResultJson.class);
			if (StringUtil.isNotEmpty(rj) && rj.isSuccess()) {
				System.out.println(result);
				return true;
			} else {
				System.out.println(rj.getError_code());
				System.out.println(rj.getMessage());
			}
		}
		return false;
	}

}

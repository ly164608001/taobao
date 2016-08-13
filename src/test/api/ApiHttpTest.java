package test.api;

import org.junit.Assert;
import org.junit.Test;

import com.lxhrainy.api.util.HttpUtil;
import com.lxhrainy.api.util.ResultJson;
import com.lxhrainy.core.utils.JSONHelper;
import com.lxhrainy.core.utils.StringUtil;

public class ApiHttpTest {
	public static final String UUID = "123456";
	
	//public static final String URL = "http://hyll.haoyunll.cn/api.do";
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
	public void Login() throws Exception{
		String url = URL+"/Login.htm";
		String params = "{\"username\":\"yun\",\"password\":\"123456\",\"uuid\":\"adkalsjdfl\",\"platform\":\"android\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	
	
	
	/*@Test
	public void getVerity() throws Exception {
		String url = URL+"?getVerity";
		String params = "{\"phone\":\"15806090483\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void register() throws Exception {
		//13800138000-13800138009
		String url = URL+"?register";
		String params = "{\"username\":\"13800138009\",\"password\":\"zhtz123\",\"app\":\"user\",\"captcha\":\"681233\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
		String params2 = "{\"username\":\"13800138009\",\"password\":\"zhtz123\",\"app\":\"driver\",\"captcha\":\"681233\"}";
		String result2 = HttpUtil.postHttpReq(url, params2);
		Assert.assertTrue(paserRsult(result2));
	}
	@Test
	public void changePwd() throws Exception {
		String url = URL+"?changePwd";
		String params = "{\"username\":\"15806090483\",\"oldpwd\":\"123456\",\"app\":\""+ID+"\",\"newpwd\":\"111111\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void login() throws Exception {
		String url = URL+"?login";
		String params = "{\"username\":\"13800138009\",\"force\":\"1\",\"password\":\"zhtz123\",\"app\":\""+ID+"\",\"uuid\":\"123456\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void userinfo() throws Exception {
		String url = URL+"?userInfo";
		String params = "{\"rule\":\"0\",\"userid\":\""+USERID+"\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void accountInfo() throws Exception {
		String url = URL+"?accountInfo";
		String params = "{\"rule\":\"0\",\"userid\":\""+USERID+"\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void updateInfo() throws Exception {
		String url = URL+"?updateInfo";
		String params = "{\"userid\":\""+USERID+"\","
				+ "\"name\":\"hehe\","
				+ "\"contact\":\"13244244444\","
				+ "\"iconid\":\"321\","
				+ "\"company\":\"好运联联公司\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void certifiedDriver() throws Exception {
		String url = URL+"?certifiedDriver";
		String params = "{"
				+ "\"userid\":\""+USERID+"\","
				+ "\"identity\":\"350524198808203615\","
				+ "\"identity_iconid\":\"123aa\","
				+ "\"identity_back_iconid\":\"123bb\", "
				+ "\"driving_licence\":\"88782847aa\","
				+ "\"driving_licence_iconid\":\"123dd\""
				+ "}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void certifiedUser() throws Exception {
		String url = URL+"?certifiedUser";
		String params = "{"
				+ "\"userid\":\""+USERID+"\","
				+ "\"identity\":\"350524198808203615\","
				+ "\"enterprise\":\"车辆网有限公司\","
				+ "\"ent_address\":\"福建 福州 鼓楼\","
				+ "\"ent_detail_address\":\"杨桥路66号\","
				+ "\"ent_iconid\":\"321\","
				+ "\"identity_back_iconid\":\"321b\","
				+ "\"identity_iconid\":\"321f\""
				+ "}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void certifiedCar() throws Exception {
		String url = URL+"?certifiedCar";
		String params = "{"
				+ "\"userid\":\""+USERID+"\","
				+ "\"plate\":\"闽A123321\","
				+ "\"model\":\"1\","
				+ "\"conductor\":\"1\","
				+ "\"party\":\"2.3\","
				+ "\"tons\":\"123.23\","
				+ "\"diver_cell\":\"1234214242\", "
				+ "\"owner_cell\":\"1234214242\","
				+ "\"address\":\"福建 福州\","
				+ "\"address_detail\":\"鼓楼\","
				+ "\"address_lat\":\"213.00\","
				+ "\"address_lng\":\"201.00\","
				+ "\"comm_addrs\":\"福建 福州,福建 福州,福建 福州,福建 福州\","
				+ "\"operacert_iconid\":\"321\","
				+ "\"license_iconid\":\"3507871112111111111\","
				+ "\"car_iconid\":\"123\","
				+ "\"enterprise\":\"测试\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void publishCargo() throws Exception {
		String url = URL+"?publishCargo";
		String params = "{\"blf_typ\":\"\",\"cargo_imgs\":\"\",\"cargo_typ\":\"3\",\"cond_rem\":\"6\",\"dest\":\"福建 福州\",\"dest_detail\":\"鼓楼\",\"dest_lat\":\"29.57335\",\"dest_lng\":\"106.5314\",\"dirverid\":\"\",\"freight_exp\":\"\",\"margin\":\"\",\"model_rem\":\"6\",\"party\":\"34\",\"prov\":\"福建 福州\",\"prov_detail\":\"鼓楼\",\"prov_lat\":\"31.25143\", \"prov_lng\":\"121.3922\",	\"pub_rag\":\"\",\"pub_typ\":\"2015-09-22\",\"remark\":\"\",\"tons\":\"2\",\"userid\":\""+USERID+"\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void cargoList() throws Exception {
		String url = URL+"?cargoList";
		String params = "{\"pub_typ\":\"\","
				+ "\"from\" :\"全国\","
				+ " \"offsetid\" :\"8\", "
				+ "\"to\" :\"全国\", "
				+ "\"count\" :\"4\", "
				+ "\"model\" :\"\"}";
		//String params = "{\"offsetid\" :\"4\", \"count\" :\"28\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void myCargoList() throws Exception {
		String url = URL+"?myCargoList";
		String params = "{\"state\":\"0\",\"rule\":\"0\",\"userid\":\""+USERID+"\",\"offsetid\":\"0\",\"count\":\"20\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void cargoDetail() throws Exception {
		String url = URL+"?cargoDetail";
		String params = "{\"cargoid\":\"3\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void biddingList() throws Exception {
		String url = URL+"?biddingList";
		String params = "{\"cargoid\":\"2\", \"offsetid\" :\"0\", \"count\" :\"20\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void cancelCargo() throws Exception {
		String url = URL+"?cancelCargo";
		String params = "{\"cargoid\":\"2\",\"userid\":\"3\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void publishCaroptions() throws Exception {
		String url = URL+"?publishCaroptions";
		String params = "{\"userid\":\""+USERID+"\",\"drawout_t\":\"2015-06-28\",\"arrived_t\":\"2015-06-28\",\"pathway\":\"福建 福州 鼓楼,福建 福州 鼓楼,福建 福州 鼓楼\",\"prov\":\"福建 福州 鼓楼\",\"prov_detail\":\"街道门牌\",\"prov_lat\":\"26.0\",\"prov_lng\":\"119.0\",\"dest\":\"福建 福州 鼓楼\",\"dest_detail\":\"街道门牌\",\"dest_lat\":\"26.0\",\"dest_lng\":\"119.0\",\"remark\":\"备注\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void caroptions() throws Exception {
		String url = URL+"?caroptions";
		String params = "{\"offsetid\" :\"0\", \"count\" :\"20\"}";
		//String params = "{ \"driverid\" :\"3\",\"pub_t\" :\"2015-06-28\",\"from\" :\"\", \"conductor\" :\"\", \"party\" :\"\", \"tons\" :\"\", \"offsetid\" :\"0\", \"to\" :\"\", \"count\" :\"20\", \"model\" :\"\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void carList() throws Exception {
		String url = URL+"?carList";
		//String params = "{ \"from\" :\"福建 福州\", \"conductor\" :\"\", \"party\" :\"\", \"tons\" :\"\", \"offsetid\" :\"0\", \"to\" :\"福建 福州\", \"count\" :20, \"model\" :\"\"}";
		String params = "{\"offsetid\" :\"0\", \"count\" :\"20\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void bidding() throws Exception {
		String url = URL+"?bidding";
		String params = "{\"cargoid\":\"2\",\"userid\":\""+USERID+"\",\"bidding_frei\":\"3\",\"bidding_remark\":\"dffasd3\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void orderCreate() throws Exception {
		String url = URL+"?orderCreate";
		String params = "{\"cargoid\":\"3\",\"userid\":\""+USERID+"\",\"dirverid\":\""+USERID+"\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void orderConfirmUser() throws Exception {
		String url = URL+"?orderConfirmUser";
		String params = "{\"orderid\":\"3\","
				+ "\"cargoid\":\"3\","
				+ "\"userid\":\""+USERID+"\","
				+ "\"party\":\"20\","
				+ "\"tons\":\"1\","
				+ "\"blf_typ\":\"0\","
				+ "\"margin\":\"20\","
				+ "\"margin_rem\":\"30\","
				+ "\"serial_num\":\"000867\","
				+ "\"weigh_num\":\"akdfjakd123fjj\","
				+ "\"weigh_numid\":\"6653\","
				+ "\"consi\":\"陈xx\","
				+ "\"consi_cont\":\"13242424\","
				+ "\"freight\":\"166566\""
				+ "}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void orderConfirmDriver() throws Exception {
		String url = URL+"?orderConfirmDriver";
		String params = "{\"orderid\":\"3\","
				+ "\"dirverid\":\"4\","
				+ "\"order_t\":\"2015-10-28 12:12:12\""
				+ "}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void orderArrived() throws Exception {
		String url = URL+"?orderArrived";
		String params = "{\"orderid\":\"3\","
				+ "\"dirverid\":\"4\","
				+ "\"arrive_lat\":\"26.444\","
				+ "\"arrive_lng\":\"119.444\","
				+ "\"order_t\":\"2015-10-28 12:12:12\""
				+ "}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void orderCollect() throws Exception {
		String url = URL+"?orderCollect";
		String params = "{"
				+ "\"orderid\":\"3\","
				+ "\"blf_typ_real\":\"23\","
				+ "\"party_real\":\"23\","
				+ "\"tons_real\":\"23\","
				+ "\"weigh_num_real\":\"akdfjakd123fjj\","
				+ "\"weigh_numid_real\":\"6653\","
				+ "\"freight_real\":\"166566\","
				+ "\"freight_break\":\"166\","
				+ "\"order_t\":\"2015-06-28 12:12:12\","
				+ "\"remark\":\"货损166\""
				+ "}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void orderOffer() throws Exception {
		String url = URL+"?orderOffer";
		String params = "{\"orderid\":\"3\","
				+ "\"dirverid\":\"1\","
				+ "\"serial_num_dirver\":\"79879879878\","
				+ "\"order_t\":\"2015-10-28 12:12:12\""
				+ "}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void evaluate() throws Exception {
		String url = URL+"?evaluate";
		String params = "{\"orderid\":\"3\","
				+ "\"userid\":\"1\","
				+ "\"star\":\"3\","
				+ "\"remark\":\"嘻嘻嘻\""
				+ "}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void orderList() throws Exception {
		String url = URL+"?orderList";
		String params = "{ \"userid\" :\""+USERID+"\", \"type\" :\"2\", \"rule\" :\"1\", \"offsetid\" :\"0\", \"count\" :\"20\"}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void orderDetail() throws Exception {
		String url = URL+"?orderDetail";
		String params = "{\"orderid\":\"2\","
				+ "\"dirverid\":\"4\","
				+ "\"userid\":\""+USERID+"\","
				+ "\"order_t\":\"2015-06-28 12:12:12\""
				+ "}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void msglist() throws Exception {
		String url = URL+"?msglist";
		String params = "{\"type\":\"2\","
				+ "\"offsetid\":\"0\","
				+ "\"count\":\"20\""
				+ "}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void complaints() throws Exception {
		String url = URL+"?complaints";
		String params = "{\"orderid\":\"1\","
				+ "\"userid\":\"1\","
				+ "\"remark\":\"不来接货\""
				+ "}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void payPassword() throws Exception {
		String url = URL+"?payPassword";
		String params = "{\"type\":\"1\","
				+ "\"userid\":\""+USERID+"\","
				+ "\"password\":\"123456\""
				+ "}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void bindPay() throws Exception {
		String url = URL+"?bindPay";
		String params = "{\"type\":\"1\","
				+ "\"userid\":\""+USERID+"\","
				+ "\"name\":\"王元泉\","
				+ "\"account\":\"dyno\""
				+ "}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void unbindPay() throws Exception {
		String url = URL+"?unbindPay";
		String params = "{\"type\":\"1\","
				+ "\"userid\":\""+USERID+"\","
				+ "\"name\":\"王元泉\","
				+ "\"account\":\"dyno\""
				+ "}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void topup() throws Exception {
		String url = URL+"?topup";
		String params = "{\"type\":\"1\","
				+ "\"userid\":\""+USERID+"\","
				+ "\"money\":\"2000\""
				+ "}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void payOrder() throws Exception {
		String url = URL+"?payOrder";
		String params = "{\"type\":\"1\","
				+ "\"userid\":\""+USERID+"\","
				+ "\"orderid\":\"1\","
				+ "\"order_t\":\"2015-12-12 12:12:12\","
				+ "\"money\":\"2000\""
				+ "}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void withdrawal() throws Exception {
		String url = URL+"?withdrawal";
		String params = "{\"type\":\"1\","
				+ "\"userid\":\""+USERID+"\","
				+ "\"password\":\"123456\","
				+ "\"account\":\"dyno\","
				+ "\"money\":\"200\""
				+ "}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void adlist() throws Exception {
		String url = URL+"?adlist";
		String params = "{\"rule\":\"0\","
				+ "\"app\":\"0\","
				+ "\"offsetid\":\"0\","
				+ "\"count\":\"20\""
				+ "}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}
	@Test
	public void billList() throws Exception {
		String url = URL+"?billList";
		String params = "{\"type\":\"2\","
				+ "\"userid\":\""+USERID+"\","
				+ "\"offsetid\":\"0\","
				+ "\"count\":\"20\""
				+ "}";
		String result = HttpUtil.postHttpReq(url, params);
		Assert.assertTrue(paserRsult(result));
	}*/
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

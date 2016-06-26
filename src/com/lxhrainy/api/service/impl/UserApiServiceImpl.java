/**
 * 
 */
package com.lxhrainy.api.service.impl;

import java.io.Serializable;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.api.model.ApiParams;
import com.lxhrainy.api.service.IUserApiService;
import com.lxhrainy.api.util.ResultJson;
import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.core.sys.dao.IUserInfoDao;
import com.lxhrainy.core.sys.model.UserInfo;

/**
 * 用户数据
 * @author dyno
 *
 */
@Service("userApiService")
@Transactional
public class UserApiServiceImpl extends AbstractBaseServiceImpl<IUserInfoDao, UserInfo, Serializable> implements IUserApiService  {

	@Override
	public ResultJson getVerity(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson register(ApiParams mobileUser) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson login(ApiParams mobileUser, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson bindToken(ApiParams user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson changePwd(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson resetPwd(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson accountInfo(ApiParams user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson userInfo(ApiParams user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson certifiedDriver(Map<String, String> params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson certifiedUser(Map<String, String> params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson certifiedCar(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void getimg(String id, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ResultJson updateInfo(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson payPassword(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson bindPay(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson unbindPay(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson topup(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson payOrder(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson withdrawal(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson billList(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson adlist(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson msglist(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson getFavorites(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ResultJson setFavorites(ApiParams params) {
		// TODO Auto-generated method stub
		return null;
	}

}

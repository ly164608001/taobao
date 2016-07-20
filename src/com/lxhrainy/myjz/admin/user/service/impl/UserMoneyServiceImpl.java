package com.lxhrainy.myjz.admin.user.service.impl;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.core.utils.AESUtil;
import com.lxhrainy.myjz.admin.user.dao.IUserMoneyDao;
import com.lxhrainy.myjz.admin.user.model.UserMoney;
import com.lxhrainy.myjz.admin.user.service.IUserMoneyService;


/**
 * 用户账户信息服务实现类
 * @author xueyunteng
 * @date 2016-05-23
 */

@Service
@Transactional(readOnly = true)
public class UserMoneyServiceImpl extends
AbstractBaseServiceImpl<IUserMoneyDao, UserMoney, Integer>
implements IUserMoneyService {
	
	@Autowired
	IUserMoneyDao userMoneyDao;

	@Override
	public UserMoney getByUserId(Integer userid) {
		return userMoneyDao.getByUserId(userid);
	}

	@Override
	public boolean updateStatusByUserId(UserMoney model) {
		int result = userMoneyDao.updateStatusByUserId(model);
		if(result != -1){
			return true;
		}
		return false;
	}
	
	/**
	 * @Description: 验证交易密码是否正确
	 * @param userid 用户
	 * @param paypassword 交易密码
	 * @return boolean    返回类型 
	 */
	public boolean validatePaypassword(int userid, String paypassword) {
		paypassword = encrptPassword(paypassword);
		if(StringUtils.isEmpty(paypassword)){
			return false;
		}
		
		UserMoney money = this.getByUserId(userid);
		if(money.getPaypassword().equals(paypassword)){
			return true;
		}
		
		return false;
	}
	
	/**
	 * 加密密码
	 * @param password
	 * @return
	 */
	public static String encrptPassword(String password) {
		try {
			return AESUtil.encrptString(password, "1234567812345678");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	
}

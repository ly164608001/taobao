package com.lxhrainy.core.sys.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.core.sys.dao.ISysRoleDao;
import com.lxhrainy.core.sys.dao.IUserInfoDao;
import com.lxhrainy.core.sys.model.UserInfo;
import com.lxhrainy.core.sys.service.IUserInfoService;
import com.lxhrainy.core.utils.AESUtil;
import com.lxhrainy.myjz.admin.user.dao.IUserAuthInfoDao;
import com.lxhrainy.myjz.admin.user.dao.IUserDetailInfoDao;
import com.lxhrainy.myjz.admin.user.dao.IUserMoneyDao;
import com.lxhrainy.myjz.admin.user.model.UserAuthInfo;
import com.lxhrainy.myjz.admin.user.model.UserDetailInfo;
import com.lxhrainy.myjz.admin.user.model.UserMoney;
import com.lxhrainy.myjz.admin.user.oe.UserInfoVO;
import com.lxhrainy.myjz.common.constant.Global;


/**
 * 用户服务实现类
 * @author xueyunteng
 * @date 2016-05-23
 */

@Service
@Transactional(readOnly = true)
public class UserInfoServiceImpl extends
AbstractBaseServiceImpl<IUserInfoDao, UserInfo, Integer>
implements IUserInfoService {
	
	@Autowired
	IUserInfoDao userInfoDao;
	@Autowired
	IUserMoneyDao userMoneyDao;
	@Autowired
	IUserDetailInfoDao userDetailInfoDao;
	@Autowired
	IUserAuthInfoDao userAuthInfoDao;
	@Autowired
	ISysRoleDao sysRoleDao;

	/**
	 * 用户登录
	 * @return 存在返回用户信息 不存在返回null
	 */
	public UserInfo checkUserLogin(String username,String password, Integer channel){
		String enPassword = encrptPassword(password);
		UserInfo userInfo = userInfoDao.checkUserLogin(username ,enPassword, channel);
		return userInfo;
	}
	
	/**
	 * 重置用户密码
	 */
	@Transactional(readOnly = false)
	public int resetPassword(int id) {
		userInfoDao.updatePassword(id,encrptPassword(Global.DEFAULT_PASSWORD));
		return id;
	}

	/**
	 * 加密密码
	 * @param password
	 * @return
	 */
	private String encrptPassword(String password) {
		try {
			return AESUtil.encrptString(password, "1234567812345678");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}

	/**
	 * 修改密码
	 * @param userid
	 * @param oldpassword
	 * @param password
	 * @return
	 */
	@Transactional(readOnly = false)
	public int modifyPassword(int userid, String oldpassword, String password) {
		UserInfo user = this.getById(userid);
		if(!encrptPassword(oldpassword).equals(user.getPassword())){
			return -1;
		}
		
		dao.updatePassword(userid,encrptPassword(password));
		return 1;
	}

	@Override
	@Transactional(readOnly = false)
	public int registerMember(UserInfo user) {
		//判断用户名是否存在
		UserInfo exsitUser = dao.getByName(user.getUsername());
		int result = 0;
		if(exsitUser != null){
			//用户名已存在
			result = -2;
		}else{
			user.setPassword(encrptPassword(user.getPassword()));
			user.setType(Global.USER_BUYER);
			//保存用户
			result = userInfoDao.insert(user);
			if(result != -1){
				user.setId(result);
				//创建用户的账户信息
				UserMoney money = new UserMoney();
				money.setAllbalance(0.00);
				money.setFrozenbalance(0.00);
				money.setDeleted(Global.NO);
				money.setUsablebalance(0.00);
				money.setUser(user);
				userMoneyDao.insert(money);
				//创建用户详细信息
				UserDetailInfo detail = new UserDetailInfo();
				detail.setUser(user);
				detail.setDeleted(Global.NO);
				userDetailInfoDao.insert(detail);
				//创建用户认证信息
				UserAuthInfo authInfo = new UserAuthInfo();
				authInfo.setDeleted(Global.NO);
				authInfo.setUser(new UserInfo(result));
				userAuthInfoDao.insert(authInfo);
				
				//分配用户权限
				sysRoleDao.insertUserRole(result, Global.ROLE_MEMBER);
			}
		}
		return result;
	}

	@Override
	@Transactional(readOnly = false)
	public UserInfo getByUsername(String username) {
		UserInfo userInfo = userInfoDao.getByName(username);
		return userInfo;
	}	
	
	/**
	 * 更新用户个人信息
	 * @param userInfo
	 * @return -1 失败 1成功
	 */
	@Transactional(readOnly = false)
	public int updateUserInfo(UserInfo userInfo) {
		int updateRst = this.update(userInfo);
		if(updateRst == -1){
			return -1;
		}
		userInfo.getDetailInfo().setUser(userInfo);
		updateRst = userDetailInfoDao.updateByUserid(userInfo.getDetailInfo());
		return updateRst;
	}

	@Override
	@Transactional(readOnly = false)
	public int resetPwdFormUser(UserInfo user) {
		//判断用户信息是否正确
		UserInfo tempUser = this.getById(user.getId());
		if(tempUser != null){
			if(tempUser.getUsername().equals(user.getUsername())){
				return dao.updatePassword(user.getId(),encrptPassword(user.getPassword()));
			}
		}
		return -1;
	}

	/**
	 * 用户详细信息
	 * @param userid
	 * @return
	 */
	public UserInfo getPersonInfo(int userid) {
		UserInfo user = dao.getPersonInfo(userid);
		return user;
	}

	@Override
	@Transactional(readOnly=false)
	public int save(UserInfo model) {
		model.setRegistertime(new Date());
		model.setChannel(Global.ADMIN);
		model.setType(Global.USER_ADMIN);
		model.setDeleted(Global.NO);
		model.setStatus(Global.ENABLE);
		model.setPassword(encrptPassword(Global.DEFAULT_PASSWORD));
		return super.save(model);
	}

	@Override
	public List<UserInfo> getMemberListByPage(UserInfoVO vo) {
		int total = getMemberCountByCondition(vo);
		vo.setTotalCount(total);
		return dao.findMemberListByPage(vo);
	}
	
	@Override
	public int getMemberCountByCondition(UserInfoVO vo) {
		return dao.getMemberCountByCondition(vo);
	}

	@Override
	@Transactional(readOnly=false)
	public boolean updateUserStatus(UserInfo user) {
		int result = dao.updateUserStatus(user);
		if(result != -1){
			return true;
		}
		return false;
	}

	@Override
	public List<UserInfo> getEstateListByPage(UserInfoVO vo) {
		int total = getEstateCountByCondition(vo);
		vo.setTotalCount(total);
		return dao.findEstateListByPage(vo);
	}
	
	@Override
	public int getEstateCountByCondition(UserInfoVO vo) {
		return dao.getEstateCountByCondition(vo);
	}
	
	@Override
	public boolean isExistUserName(String username, Integer type) {
		//判断用户名是否存在
		UserInfo exsitUser = dao.getByName(username);
		if(exsitUser != null){
			return true;
		}
		return false;
	}

	@Override
	public UserInfo getByPhone(String phone) {
		return dao.getByPhone(phone);
	}

	@Override
	public int updateUserPwd(Integer userid, String password) {
		UserInfo user = new UserInfo();
		user.setId(userid);
		user.setPassword(encrptPassword(password));
		return this.update(user);
	}
	
}

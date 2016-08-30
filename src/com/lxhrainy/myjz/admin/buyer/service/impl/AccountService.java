package com.lxhrainy.myjz.admin.buyer.service.impl;


import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.buyer.dao.IAccountInfoDao;
import com.lxhrainy.myjz.admin.buyer.model.AccountBasicInfo;
import com.lxhrainy.myjz.admin.buyer.model.AccountInfo;
import com.lxhrainy.myjz.admin.buyer.model.AccountReceiptAddress;
import com.lxhrainy.myjz.admin.buyer.model.AccountVpnInfo;
import com.lxhrainy.myjz.admin.buyer.oe.AccountVO;
import com.lxhrainy.myjz.admin.buyer.service.IAccountBasicInfoService;
import com.lxhrainy.myjz.admin.buyer.service.IAccountReceiptAddressService;
import com.lxhrainy.myjz.admin.buyer.service.IAccountService;
import com.lxhrainy.myjz.admin.buyer.service.IAccountVpnInfoService;
import com.lxhrainy.myjz.common.constant.Global;


/**
 * 买家小号Service
 * @author xueyunteng
 * @version 2016-07-06
 */
@Service
@Transactional(readOnly = true)
public class AccountService extends
AbstractBaseServiceImpl<IAccountInfoDao, AccountInfo, Integer>
implements IAccountService  {

	@Autowired
	IAccountInfoDao dao;
	@Autowired
	IAccountBasicInfoService basicInfoService;
	@Autowired
	IAccountReceiptAddressService addressService;
	@Autowired
	IAccountVpnInfoService vpnService;
	
	@Override
	@Transactional(readOnly = false)
	public int save(AccountInfo account) {
		Date currentDate = new Date();
		
		//新增收获地址
		AccountReceiptAddress address = new AccountReceiptAddress();
		address.setAccount(account);
		address.setCreatetime(currentDate);
		addressService.save(address);
		
		//新增vpn
		AccountVpnInfo vpn = new AccountVpnInfo();
		vpn.setCreatetime(currentDate);
		vpn.setAccount(account);
		vpnService.save(vpn);
		
		//新增基础信息
		AccountBasicInfo basicInfo = new AccountBasicInfo();
		basicInfo.setAccount(account);
		basicInfoService.save(basicInfo);
		
		//新增小号信息
		int result = super.save(account);
		
		return result;
	}
	
	/***
	 * 更新顺序
	 */
	@Transactional(readOnly = false)
	public int updateSort(int id,int sort){
		return dao.updateSort(id,sort);
	}
	
	/**
	 * 禁用
	 * @param id
	 * @return 1 成功 
	 * 		   -1 该状态非启用状态
	 */
	@Transactional(readOnly = false)
	public int unable(int id) {
		return this.updateStatus(id, Global.NO);
	}
	
	/**
	 * 启用
	 * @param id
	 * @return 1 成功 
	 *         -1 该状态非启用状态
	 */
	@Transactional(readOnly = false)
	public int able(int id) {
		return this.updateStatus(id, Global.YES);
	}
	
	/**
	 * 更新状态 
	 * @param id
	 * @param updateSataus 更新后状态值
	 * @return 1 成功 
	 * 			-1 该状态非可更新状态
	 */
	private int updateStatus(int id, int updateSataus){
		AccountInfo model = this.getById(id);
		if(updateSataus == model.getStatus()){
			return -1;
		}
		
		dao.updateStatus(id,updateSataus);
		return 1;
	}

	@Override
	public List<AccountInfo> getListForMobile(AccountVO vo) {
		return dao.getListForMobile(vo);
	}

	/**
	 * 审核
	 * @param id
	 * @return 1 成功
	 * 		   -1申请记录不存在
	 * 		   -2 该申请非待审状态
	 */
	public int audit(int id,int auditstatus){
		AccountInfo model = this.getById(id);
		if(model == null){
			return -1;
		}
		
		if(model.getAuditstatus() != Global.AUDIT_INIT){
			return -2;
		}
		
		dao.updateAuditStatus(id,auditstatus);
		return 1;
	}
}
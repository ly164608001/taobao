package com.lxhrainy.myjz.admin.buyer.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.buyer.dao.IAccountInfoDao;
import com.lxhrainy.myjz.admin.buyer.model.AccountInfo;
import com.lxhrainy.myjz.admin.buyer.service.IAccountService;
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
	
	
}
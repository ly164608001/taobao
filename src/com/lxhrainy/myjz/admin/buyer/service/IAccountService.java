package com.lxhrainy.myjz.admin.buyer.service;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.myjz.admin.buyer.model.AccountInfo;

/**
 * 买家小号服务接口
 * @author xueyunteng
 * @date 2016-06-23
 */
public interface IAccountService extends IBaseService<AccountInfo, Integer>{

	/**
	 * 禁用
	 * @param id
	 * @return 1 成功 
	 * 		   -1 该状态非启用状态
	 */
	public int unable(int id);
	
	/**
	 * 启用
	 * @param id
	 * @return 1 成功 
	 *         -1 该状态非启用状态
	 */
	public int able(int id);

	/***
	 * 更新顺序
	 * @param ID
	 */
	public int updateSort(int id,int sort);

}

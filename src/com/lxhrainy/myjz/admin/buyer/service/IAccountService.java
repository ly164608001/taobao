package com.lxhrainy.myjz.admin.buyer.service;

import java.util.List;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.myjz.admin.buyer.model.AccountInfo;
import com.lxhrainy.myjz.admin.buyer.oe.AccountVO;

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

	/**
	 * 手机端获取买号列表
	 * @param vo
	 * @return
	 */
	List<AccountInfo> getListForMobile(AccountVO vo);

	/**
	 * 审核通过
	 * @param id
	 * @return 1 成功
	 * 		   -1 申请记录不存在
	 * 		   -2 该申请非待审状态
	 */
	public int audit(int id,int auditstatus);

}

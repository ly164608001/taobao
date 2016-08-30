package com.lxhrainy.myjz.admin.buyer.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.myjz.admin.buyer.model.AccountInfo;
import com.lxhrainy.myjz.admin.buyer.oe.AccountVO;


/**
 * 买家小号DAO接口
 * @author xueyunteng
 * @version 2016-07-09
 */
@MyBatisDao
public interface IAccountInfoDao extends IBaseDao<AccountInfo> {

	/**
	 * 更新状态
	 * @param id
	 * @param status
	 */
	void updateStatus(@Param("id")int id, @Param("status")int status);

	/**
	 * 更新顺序
	 * @param id
	 * @param status
	 */
	int updateSort(@Param("id")int id, @Param("sort")int sort);

	/**
	 * 手机端获取买号列表
	 * @param vo
	 * @return
	 */
	List<AccountInfo> getListForMobile(@Param("condition")AccountVO vo);

	void updateAuditStatus(@Param("id")int id, @Param("auditstatus")int auditstatus);
	
}
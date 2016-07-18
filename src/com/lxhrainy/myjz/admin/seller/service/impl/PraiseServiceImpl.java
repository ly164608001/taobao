package com.lxhrainy.myjz.admin.seller.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.seller.dao.IPraiseDao;
import com.lxhrainy.myjz.admin.seller.model.Praise;
import com.lxhrainy.myjz.admin.seller.service.IPraiseService;


/**
 * 好评内容服务实现类
 * @author xueyunteng
 * @date 2016-07-05
 */

@Service
@Transactional(readOnly = true)
public class PraiseServiceImpl extends
AbstractBaseServiceImpl<IPraiseDao, Praise, Integer>
implements IPraiseService {

	@Autowired 
	IPraiseDao dao;
	
	/**
	 * 删除指定状态好评内容
	 * @param status
	 */
	@Transactional(readOnly = false)
	public int deleteByStatus(int status) {
		return dao.deleteByStatus(status);
	}
}

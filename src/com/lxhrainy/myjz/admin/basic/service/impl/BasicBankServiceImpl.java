package com.lxhrainy.myjz.admin.basic.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.basic.dao.IBasicBankDao;
import com.lxhrainy.myjz.admin.basic.model.BasicBank;
import com.lxhrainy.myjz.admin.basic.service.IBasicBankService;

/**
 * 银行信息实现类
 * 
 * @author xueyunteng
 * @date 2016-07-31
 */

@Service
@Transactional(readOnly = true)
public class BasicBankServiceImpl extends
		AbstractBaseServiceImpl<IBasicBankDao, BasicBank, Integer>
		implements IBasicBankService {

}

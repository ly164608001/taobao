package com.lxhrainy.myjz.admin.buyer.service.impl;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.buyer.dao.IAccountReceiptAddressDao;
import com.lxhrainy.myjz.admin.buyer.model.AccountReceiptAddress;
import com.lxhrainy.myjz.admin.buyer.service.IAccountReceiptAddressService;


/**
 * 买号收获地址Service
 * @author xueyunteng
 * @version 2016-07-06
 */
@Service
@Transactional(readOnly = true)
public class AccountReceiptAddressService extends
AbstractBaseServiceImpl<IAccountReceiptAddressDao, AccountReceiptAddress, Integer>
implements IAccountReceiptAddressService  {

	
}
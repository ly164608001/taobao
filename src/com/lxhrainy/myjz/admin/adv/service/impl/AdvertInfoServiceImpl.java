package com.lxhrainy.myjz.admin.adv.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.adv.dao.IAdvertInfoDao;
import com.lxhrainy.myjz.admin.adv.model.AdvertInfo;
import com.lxhrainy.myjz.admin.adv.service.IAdvertInfoService;

/**
 * 广告实现类
 * 
 * @author xueyunteng
 * @date 2016-07-31
 */

@Service
@Transactional(readOnly = true)
public class AdvertInfoServiceImpl extends
		AbstractBaseServiceImpl<IAdvertInfoDao, AdvertInfo, Integer>
		implements IAdvertInfoService {

}

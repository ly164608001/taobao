package com.lxhrainy.myjz.admin.helpcenter.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.helpcenter.dao.IHelpMenuDao;
import com.lxhrainy.myjz.admin.helpcenter.model.HelpMenu;
import com.lxhrainy.myjz.admin.helpcenter.service.IHelpMenuService;


/**
 * 商品服务实现类
 * @author xueyunteng
 * @date 2016-06-23
 */

@Service
@Transactional(readOnly = true)
public class HelpMenuServiceImpl extends
AbstractBaseServiceImpl<IHelpMenuDao, HelpMenu, Integer>
implements IHelpMenuService {

	
}

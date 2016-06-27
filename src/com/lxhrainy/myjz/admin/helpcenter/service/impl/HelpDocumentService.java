package com.lxhrainy.myjz.admin.helpcenter.service.impl;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.helpcenter.dao.IHelpMenuDao;
import com.lxhrainy.myjz.admin.helpcenter.model.HelpMenu;
import com.lxhrainy.myjz.admin.helpcenter.service.IHelpDocumentService;


/**
 * 帮助文档Service
 * @author xueyunteng
 * @version 2016-06-28
 */
@Service
@Transactional(readOnly = true)
public class HelpDocumentService extends
AbstractBaseServiceImpl<IHelpMenuDao, HelpMenu, Integer>
implements IHelpDocumentService  {

	
}
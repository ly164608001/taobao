package com.lxhrainy.myjz.admin.helpcenter.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.helpcenter.dao.IHelpDocumentDao;
import com.lxhrainy.myjz.admin.helpcenter.model.HelpDocument;
import com.lxhrainy.myjz.admin.helpcenter.service.IHelpDocumentService;


/**
 * 帮助文档Service
 * @author xueyunteng
 * @version 2016-06-28
 */
@Service
@Transactional(readOnly = true)
public class HelpDocumentService extends
AbstractBaseServiceImpl<IHelpDocumentDao, HelpDocument, Integer>
implements IHelpDocumentService  {

	@Autowired
	IHelpDocumentDao dao;
	
	/**
	 * 根据文档菜单id批量删除文档
	 * @param Menuids
	 */
	@Transactional(readOnly = false)
	public void deleteByMenuids(String menuids) {
		dao.deleteByMenuids(menuids);
	}
	
}
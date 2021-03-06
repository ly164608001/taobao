package com.lxhrainy.myjz.admin.helpcenter.service;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.myjz.admin.helpcenter.model.HelpDocument;

/**
 * 帮助文档服务接口
 * @author xueyunteng
 * @date 2016-06-23
 */
public interface IHelpDocumentService extends IBaseService<HelpDocument, Integer>{

	/**
	 * 根据文档菜单id批量删除文档
	 * @param childids
	 */
	void deleteByMenuids(String menuids);

}

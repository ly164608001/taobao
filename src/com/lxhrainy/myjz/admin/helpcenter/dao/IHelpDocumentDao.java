package com.lxhrainy.myjz.admin.helpcenter.dao;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.myjz.admin.helpcenter.model.HelpDocument;


/**
 * 帮助文档DAO接口
 * @author xueyunteng
 * @version 2016-06-28
 */
@MyBatisDao
public interface IHelpDocumentDao extends IBaseDao<HelpDocument> {

	/**
	 * 根据文档类型id批量删除文档
	 * @param typeids
	 */
	void deleteByMenuids(@Param("menuids")String menuids);
	
}
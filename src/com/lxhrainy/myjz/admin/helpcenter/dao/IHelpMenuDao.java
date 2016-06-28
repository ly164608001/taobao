package com.lxhrainy.myjz.admin.helpcenter.dao;

import java.util.List;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.myjz.admin.helpcenter.model.HelpMenu;

/**
 * 帮助菜单接口
 * @author 薛云腾
 * @date 2016-06-24
 * @version 1.0
 */
@MyBatisDao
public interface IHelpMenuDao extends IBaseDao<HelpMenu> {

	/**
	 * 获取指定id的下级菜单列表
	 * @param level
	 * @return
	 */
	List<HelpMenu> getListByPid(int pid);
	
}

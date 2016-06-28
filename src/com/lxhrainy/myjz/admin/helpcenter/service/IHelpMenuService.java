package com.lxhrainy.myjz.admin.helpcenter.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.myjz.admin.helpcenter.model.HelpMenu;

/**
 * 帮助菜单服务接口
 * @author xueyunteng
 * @date 2016-06-23
 */
public interface IHelpMenuService extends IBaseService<HelpMenu, Integer>{

	/**
	 * 获取指定下级菜单列表
	 * @param level
	 * @return
	 */
	List<HelpMenu> getListByPid(@Param("pid")int pid);

}

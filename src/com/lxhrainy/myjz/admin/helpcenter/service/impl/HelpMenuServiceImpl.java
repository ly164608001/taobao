package com.lxhrainy.myjz.admin.helpcenter.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.helpcenter.dao.IHelpMenuDao;
import com.lxhrainy.myjz.admin.helpcenter.model.HelpMenu;
import com.lxhrainy.myjz.admin.helpcenter.service.IHelpMenuService;
import com.lxhrainy.myjz.common.constant.Global;


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
	
	@Autowired
	IHelpMenuDao dao;

	/**
	 * 获取指定下级菜单列表
	 * @param level
	 * @return
	 */
	public List<HelpMenu> getListByPid(int pid) {
		List<HelpMenu> list = dao.getListByPid(pid);
		return list;
	}
	
	/**
	 * 获取全名称
	 * @param id
	 * @return
	 */
	public String getFullnameById(Integer id) {
		if(id == null){
			return "";
		}
		
		String name = "";
		HelpMenu menu = this.getById(id);
		while (true) {
			name = " > " + menu.getName() + name;
			int pid = menu.getParent().getId();
			if(pid == Global.ROOT_HELPMENU_ID){
				break;
			} 
			menu = this.getById(pid);
		}
		
		name = name.substring(2,name.length());
		return name;
	}
}

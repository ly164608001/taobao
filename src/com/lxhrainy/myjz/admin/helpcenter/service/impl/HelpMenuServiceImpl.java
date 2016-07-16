package com.lxhrainy.myjz.admin.helpcenter.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.core.oe.TreeNode;
import com.lxhrainy.core.utils.HostAddrUtil;
import com.lxhrainy.myjz.admin.helpcenter.dao.IHelpMenuDao;
import com.lxhrainy.myjz.admin.helpcenter.model.HelpMenu;
import com.lxhrainy.myjz.admin.helpcenter.service.IHelpDocumentService;
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
	@Autowired
	IHelpDocumentService documenetService;

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
	
	@Override
	public List<TreeNode> findTreeNodes() {
		List<TreeNode> result = new ArrayList<TreeNode>();
		List<HelpMenu>  list =  dao.findAllList(null);
		
		if(list != null && list.size() > 0){
			TreeNode bean = new TreeNode();
			for (HelpMenu entity : list) {
				bean = new TreeNode();
				bean.setId(entity.getId());
				bean.setUpId(entity.getParent().getId());
				bean.setName(entity.getName());
				if (entity.getId().intValue() == 1) {
					bean.setOpen(true);
				}
				
				bean.setUrl(HostAddrUtil.getHostAddr()
						+ "admin/helpcenter/menu/menuList.htm?parentid="
						+ entity.getId());
				bean.setTarget("rightList");
				result.add(bean);
			}
		}
		return result;
	}

	@Override
	@Transactional(readOnly = false)
	public int save(HelpMenu model) {
		//设置pids
		int pid = model.getParent().getId();
		String pids = "," + pid + ",";
		while(pid != -1){
			HelpMenu temp = this.getById(pid);
			pid = temp.getParent().getId();
			pids = "," + pid + pids;
		}
		
		model.setPids(pids);
		int result = dao.insert(model);
		return result;
	}
	
	@Override
	@Transactional(readOnly = false)
	public void deleteById(Integer id) {
		//删除所有子集文档
		String childids = this.getAllChildid(id);
		documenetService.deleteByMenuids(childids);
		//删除所有子集菜单
		String deletePids = "," + id + ",";
		dao.deleteAllChildren(deletePids);
		//删除本身菜单
		dao.deleteById(id);
	}
	
	/**
	 * 获取所有子集id 以","分割
	 * @param pid
	 * @return
	 */
	private String getAllChildid(int pid) {
		String queryPids = "," + pid + ",";
		List<HelpMenu> childList = dao.getAllChildren(queryPids);
		String result = "";
		
		if(childList != null && childList.size() > 0){
			for (HelpMenu helpMenu : childList) {
				result += helpMenu.getId() + ",";
			}
		}
		
		if(!"".equals(result)){
			result = result.substring(0,result.length()-1);
		}
		
		return result;
	}
	
}

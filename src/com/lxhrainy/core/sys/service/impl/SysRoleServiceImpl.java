package com.lxhrainy.core.sys.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.core.sys.dao.ISysRoleDao;
import com.lxhrainy.core.sys.model.SysRole;
import com.lxhrainy.core.sys.oe.SysRoleTreeVO;
import com.lxhrainy.core.sys.service.ISysRoleService;
import com.lxhrainy.core.utils.StringUtil;

/**
 * @ClassName: OrderServiceImpl 
 * @Description: 订单Service实现类
 * @author lxhrainy 
 * @date 2016年5月20日 上午11:32:34
 */
@Service("sysRoleService")
@Transactional(readOnly = true)
public class SysRoleServiceImpl extends AbstractBaseServiceImpl<ISysRoleDao, SysRole, Integer>
	implements ISysRoleService{

	@Autowired
	ISysRoleDao dao;
	
	@Transactional(readOnly = false)
	@Override
	public int save(SysRole model) {
		//判断角色名是否存在
		if(model.getId() != null){
			SysRole oldRole = dao.getByName(model.getName());
			if(oldRole != null){
				if(oldRole.getId().intValue() != model.getId().intValue()){
					return -1;
				}
			}
		}else{
			SysRole oldRole = dao.getByName(model.getName());
			if(oldRole != null){
				return -1;
			}
		}
		return super.save(model);
	}

	/**
	 * 保存用户角色信息
	 * @param userid
	 * @param rolesid
	 */
	@Transactional(readOnly = false)
	public void userRoleSave(int userid, String rolesid){
		dao.deleteRoleByUser(userid);
		List<Integer> roleList = StringUtil.getIntListByString(rolesid);
		for (Integer roleid : roleList) {
			dao.insertUserRole(userid,roleid);
		}
	}
	
	/**
	 * 获取角色树 并选择对应用户角色
	 * @param userid
	 * @return
	 */
	public List<SysRoleTreeVO> getSelectTree(int userid){
		List<SysRoleTreeVO> result = new ArrayList<SysRoleTreeVO>();
		List<Integer> roleids = dao.getRoleidsByUser(userid);
		List<SysRole> roleList = dao.findAllList(null);
		
		for (SysRole sysRole : roleList) {
			SysRoleTreeVO roleTree = new SysRoleTreeVO();
			roleTree.setId(sysRole.getId());
			roleTree.setText(sysRole.getName());
			if(isExistRole(roleids,sysRole.getId())){
				roleTree.setChecked(true);
			}
			result.add(roleTree);
		}
		
		return result;
	}
	
	private boolean isExistRole(List<Integer> roleids,int roleid){
		for (int i = 0,len = roleids.size(); i < len; i++) {
			if(roleid == roleids.get(i)){
				return true;
			}
		}
		return false;
	}
	
}

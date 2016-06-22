package com.lxhrainy.core.sys.service;

import java.util.List;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.core.sys.model.SysRole;
import com.lxhrainy.core.sys.oe.SysRoleTreeVO;

/**
 * ISysUserService
 * @Description:用户管理
 * @author lxhrainy 
 * @date 2016年5月27日 上午10:33:35
 */
public interface ISysRoleService extends IBaseService<SysRole, Integer>{

	/**
	 * 获取角色树 并选择对应用户角色
	 * @param userid
	 * @return
	 */
	List<SysRoleTreeVO> getSelectTree(int userid);

	/**
	 * 保存用户角色信息
	 * @param userid
	 * @param rolesid
	 */
	void userRoleSave(int userid, String rolesid);

	
}

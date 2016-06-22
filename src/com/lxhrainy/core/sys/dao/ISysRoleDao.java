package com.lxhrainy.core.sys.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.annotation.MyBatisDao;
import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.core.sys.model.SysRole;

/**
 * 角色DAO接口
 * @author lxhrainy
 * @date 2016-04-15
 * @version 1.0
 */
@MyBatisDao
public interface ISysRoleDao extends IBaseDao<SysRole> {

	public SysRole getByName(@Param("name")String name);
	
	public SysRole getByEnname(@Param("enname")String enname);

	public int deleteRoleMenu(SysRole role);

	public int insertRoleMenu(SysRole role);

	public List<Integer> getRoleidsByUser(@Param("userid")Integer userid);

	public void deleteRoleByUser(@Param("userid")int userid);

	public void insertUserRole(@Param("userid")int userid, @Param("roleid")Integer roleid);
	
}

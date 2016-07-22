package com.lxhrainy.core.sys.service;

import java.util.List;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.core.sys.model.SysArea;

/**
 * ISysAreaService
 * @Description:地域管理
 * @author lxhrainy 
 * @date 2016年5月27日 上午10:33:35
 */
public interface ISysAreaService extends IBaseService<SysArea, Integer>{

	/**
	 * 获取下级
	 * @param pid
	 * @return
	 */
	List<SysArea> getListByPid(int pid);
	
}

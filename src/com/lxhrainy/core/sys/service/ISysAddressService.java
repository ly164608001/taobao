package com.lxhrainy.core.sys.service;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.core.sys.model.SysAddress;

/**
 * ISysAddressService
 * @Description:地区管理管理
 * @author xueyunteng 
 * @date 2016年07月02日 上午10:33:35
 */
public interface ISysAddressService extends IBaseService<SysAddress, Integer>{
	
	/**
	 * 根据地区id获取地区显示全称名
	 * @param id
	 * @return
	 */
	public String getFullName(Integer id);
}

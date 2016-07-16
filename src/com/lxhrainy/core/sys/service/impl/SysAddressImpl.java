package com.lxhrainy.core.sys.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.core.sys.dao.ISysAddressDao;
import com.lxhrainy.core.sys.model.SysAddress;
import com.lxhrainy.core.sys.service.ISysAddressService;

/**
 * @ClassName: OrderServiceImpl 
 * @Description: 订单Service实现类
 * @author lxhrainy 
 * @date 2016年5月20日 上午11:32:34
 */
@Service("sysAddressService")
@Transactional(readOnly = true)
public class SysAddressImpl extends AbstractBaseServiceImpl<ISysAddressDao, SysAddress, Integer>
	implements ISysAddressService{
	
	/**
	 * 根据地区id获取地区显示全称名
	 * @param id
	 * @return
	 */
	public String getFullName(Integer id){
		String fullName = "";
		if(id == null){
			return fullName;
		}
		
		SysAddress model = this.getById(id);
		while(true){
			SysAddress parent = model.getParent();
			fullName = ">" + model.getName() + fullName;
			if(parent == null || parent.getDepth() == null || parent.getDepth() == 1){
				fullName = ">" + parent.getName() + fullName;
				break;
			}
			
			model = this.getById(parent.getId());
		}
		
		if(!"".equals(fullName)){
			fullName = fullName.substring(1,fullName.length());
		}
		
		return fullName;
	}
	
}

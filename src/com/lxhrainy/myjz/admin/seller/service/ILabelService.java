package com.lxhrainy.myjz.admin.seller.service;

import java.util.List;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.myjz.admin.seller.model.Label;

/**
 * 标签服务接口
 * @author xueyunteng
 * @date 2016-07-04
 */
public interface ILabelService extends IBaseService<Label, Integer>{

	/**
	 * 获取指定用户的收获地址标签列表
	 * @param userid
	 * @return
	 */
	List<Label> getAddressListByUser(int userid);

	/**
	 * 获取指定用户的好评内容标签列表
	 * @param userid
	 * @return
	 */
	public List<Label> getPraiseListByUser(int userid);
	
}

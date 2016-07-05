package com.lxhrainy.myjz.admin.seller.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.seller.dao.ILabelDao;
import com.lxhrainy.myjz.admin.seller.model.Label;
import com.lxhrainy.myjz.admin.seller.service.ILabelService;
import com.lxhrainy.myjz.common.constant.Global;


/**
 * 标签服务实现类
 * @author xueyunteng
 * @date 2016-07-04
 */

@Service
@Transactional(readOnly = true)
public class LabelServiceImpl extends
AbstractBaseServiceImpl<ILabelDao, Label, Integer>
implements ILabelService {
	
	@Autowired
	ILabelDao dao;

	/**
	 * 获取指定用户的收获地址标签列表
	 * @param userid
	 * @return
	 */
	public List<Label> getAddressListByUser(int userid) {
		return dao.getListByUserAndType(userid,Global.LABEL_TYPE_ADDR);
	}
	
	/**
	 * 获取指定用户的好评内容标签列表
	 * @param userid
	 * @return
	 */
	public List<Label> getPraiseListByUser(int userid) {
		return dao.getListByUserAndType(userid,Global.LABEL_TYPE_APPRAISE);
	}
	
}

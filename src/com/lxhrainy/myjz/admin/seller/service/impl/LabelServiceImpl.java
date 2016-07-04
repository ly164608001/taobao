package com.lxhrainy.myjz.admin.seller.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.myjz.admin.seller.dao.ILabelDao;
import com.lxhrainy.myjz.admin.seller.model.Label;
import com.lxhrainy.myjz.admin.seller.service.ILabelService;


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

}

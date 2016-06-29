package com.lxhrainy.core.sys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.core.oe.SysNoticeVO;
import com.lxhrainy.core.sys.dao.ISysNoticeDao;
import com.lxhrainy.core.sys.model.SysNotice;
import com.lxhrainy.core.sys.service.ISysNoticeService;

/**
 * @ClassName: SysNoticeImpl 
 * @Description: 消息Service实现类
 * @author lxhrainy 
 * @date 2016年5月20日 上午11:32:34
 */
@Service("sysDictService")
@Transactional(readOnly = true)
public class SysNoticeImpl extends AbstractBaseServiceImpl<ISysNoticeDao, SysNotice, Integer>
	implements ISysNoticeService{

	@Autowired
	private ISysNoticeDao dao;
	
	@Override
	public List<SysNotice> getListForMobile(SysNoticeVO vo) {
		return dao.getListForMobile(vo);
	}

	@Override
	public boolean updateFromMobile(SysNoticeVO vo) {
		int result = dao.updateFromMobile(vo);
		if(result != -1){
			return true;
		}
		return false;
	}
	
}

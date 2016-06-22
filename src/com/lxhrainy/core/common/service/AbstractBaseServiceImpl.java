package com.lxhrainy.core.common.service;

import java.io.Serializable;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.dao.IBaseDao;
import com.lxhrainy.core.common.model.BaseModel;
import com.lxhrainy.core.common.oe.BaseVO;

/**
 * AbstractBaseServiceImpl
 * @Description: service基础类实现
 * @author lxhrainy 
 * @date 2016年5月25日 上午11:52:23
 */
@Transactional(readOnly = true)
public abstract class AbstractBaseServiceImpl<D extends IBaseDao<T>, T extends BaseModel, PK extends Serializable> implements IBaseService<T, PK> {
	
	/**
	 * 日志对象
	 */
	protected Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	protected D dao;

	@Override
	@Transactional(readOnly = false)
	public int save(T t) {
		return dao.insert(t);
	}

	@Override
	public T getById(Integer id) {
		return dao.getById(id);
	}

	@Override
	@Transactional(readOnly = false)
	public int update(T t) {
		return dao.update(t);
	}

	@Override
	@Transactional(readOnly = false)
	public void deleteById(Integer id) {
		dao.deleteById(id);
	}

	@Override
	public List<T> getListByPage(BaseVO vo) {
		int total = getCountByCondition(vo);
		vo.setTotalCount(total);
		return dao.findListByPage(vo);
	}

	@Override
	public List<T> getAllList(BaseVO vo) {
		return dao.findAllList(vo);
	}

	@Override
	public int getCountByCondition(BaseVO vo) {
		return dao.getCountByCondition(vo);
	}

}

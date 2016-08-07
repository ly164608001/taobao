package com.lxhrainy.core.common.service;

import java.io.Serializable;
import java.util.List;

import com.lxhrainy.core.common.model.BaseModel;
import com.lxhrainy.core.common.oe.BaseVO;

/**
 * IBaseService
 * @Description: Service基础类
 * @author lxhrainy 
 * @date 2016年5月25日 上午11:07:42 
 * @param <T>
 * @param <PK>
 */
public interface IBaseService<T extends BaseModel, PK extends Serializable> {

	/**
	 * @Title: save 
	 * @Description: 保存信息
	 * @param @param t
	 * @param @return    设定文件 
	 * @return int    返回类型 
	 * @throws
	 */
	public int save(T t);
	
	/**
	 * @Title: getById 
	 * @Description: 根据ID获取信息
	 * @param @param id
	 * @param @return    设定文件 
	 * @return T    返回类型 
	 * @throws
	 */
	public T getById(Integer id);
	
	/**
	 * @Title: update 
	 * @Description: 更新数据 
	 * @param @param t
	 * @param @return    设定文件 
	 * @return int    返回类型 
	 * @throws
	 */
	public int update(T t);
	
	/**
	 * @Title: deleteById 
	 * @Description: 根据ID删除数据 
	 * @param @param id    设定文件 
	 * @return void    返回类型 
	 * @throws
	 */
	public int deleteById(Integer id);
	
	/**
	 * @Title: getListByCondition 
	 * @Description: 获取分页列表
	 * @param @param vo
	 * @param @param pager
	 * @param @return    设定文件 
	 * @return List<T>    返回类型 
	 * @throws
	 */
	public List<T> getListByPage(BaseVO vo);
	
	/**
	 * @Title: getAllList 
	 * @Description: 根据条件获取所有列表数据
	 * @param @param vo
	 * @param @return    设定文件 
	 * @return List<T>    返回类型 
	 * @throws
	 */
	public List<T> getAllList(BaseVO vo);
	
	/**
	 * @Title: getCountByCondition 
	 * @Description: 根据条件获取总数 
	 * @param @param vo
	 * @param @return    设定文件 
	 * @return int    返回类型 
	 * @throws
	 */
	public int getCountByCondition(BaseVO vo);
}

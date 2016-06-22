package com.lxhrainy.core.common.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lxhrainy.core.common.oe.BaseVO;

public interface IBaseDao<T> {
	
	/**
	 * 插入数据
	 * @param entity
	 * @return
	 */
	public int insert(T entity);

	/**
	 * 获取单条数据
	 * @param id
	 * @return
	 */
	public T getById(Integer id);
	
	/**
	 * 更新数据
	 * @param entity
	 * @return
	 */
	public int update(T entity);
	
	/**
	 * 删除数据（一般为逻辑删除，更新deleted字段为1）
	 * @param id
	 * @see public int delete(T entity)
	 * @return
	 */
	public int deleteById(Integer id);
	
	
	/**
	 * 查询数据列表，如果需要分页，请设置分页对象，如：entity.setPage(new Page<T>());
	 * @param entity
	 * @return
	 */
	public List<T> findListByPage(@Param("condition")BaseVO vo);
	
	/**
	 * 查询所有数据列表
	 * @param entity
	 * @return
	 */
	public List<T> findAllList(@Param("condition")BaseVO vo);
	
	/**
	 * @Title: getCountByCondition 
	 * @Description: 根据条件获取总数
	 * @param @param vo
	 * @param @return    设定文件 
	 * @return int    返回类型 
	 * @throws
	 */
	public int getCountByCondition(@Param("condition")BaseVO vo);
	
}

package com.lxhrainy.core.sys.service;

import java.util.List;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.core.oe.SysNoticeVO;
import com.lxhrainy.core.sys.model.SysNotice;

/**
 * ISysNoticeService
 * @Description:消息管理
 * @author lxhrainy 
 * @date 2016年5月27日 上午10:33:35
 */
public interface ISysNoticeService extends IBaseService<SysNotice, Integer>{

	/**
	 * 返回手机端所需的消息列表
	 * @param vo
	 * @return
	 */
	List<SysNotice> getListForMobile(SysNoticeVO vo);

	/**
	 * 更新消息状态
	 * @param vo
	 * @return
	 */
	boolean updateFromMobile(SysNoticeVO vo);

	/**
	 * 删除消息记录
	 * @param vo
	 * @return
	 */
	boolean delMsgFromMobile(SysNoticeVO vo);
	
}

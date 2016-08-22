package com.lxhrainy.api.service;

import com.lxhrainy.api.model.ApiOrderParams;
import com.lxhrainy.api.util.ResultJson;
import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.core.sys.model.UserInfo;

public interface ITaskApiService extends IBaseService<UserInfo, Integer>{

	/**
	 * 任务列表
	 * @param params
	 * @return
	 */
	ResultJson taskList(ApiOrderParams params);

	/**
	 * 任务执行步骤
	 * @param params
	 * @return
	 */
	ResultJson taskAction(ApiOrderParams params);
	/**
	 * 任务执行步骤
	 * @param params
	 * @return
	 */
	ResultJson getTask(ApiOrderParams params);

	/**
	 * 任务申诉
	 * @param params
	 * @return
	 */
	ResultJson complain(ApiOrderParams params);

	/**
	 * 任务获取执行步骤
	 * @param params
	 * @return
	 */
	ResultJson taskActionInfo(ApiOrderParams params);

	/**
	 * 任务申诉列表
	 * @param params
	 * @return
	 */
	ResultJson complainList(ApiOrderParams params);
	
}

package com.lxhrainy.api.service;

import com.lxhrainy.api.model.ApiParams;
import com.lxhrainy.api.util.ResultJson;
import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.core.sys.model.UserInfo;

public interface ITaskApiService extends IBaseService<UserInfo, Integer>{

	/**
	 * 任务列表
	 * @param params
	 * @return
	 */
	ResultJson taskList(ApiParams params);

	/**
	 * 任务执行步骤
	 * @param params
	 * @return
	 */
	ResultJson taskAction(ApiParams params);
	/**
	 * 任务执行步骤
	 * @param params
	 * @return
	 */
	ResultJson getTask(ApiParams params);

	/**
	 * 任务申诉
	 * @param params
	 * @return
	 */
	ResultJson complain(ApiParams params);

	/**
	 * 任务获取执行步骤
	 * @param params
	 * @return
	 */
	ResultJson taskActionInfo(ApiParams params);

	/**
	 * 任务申诉列表
	 * @param params
	 * @return
	 */
	ResultJson complainList(ApiParams params);
	
}

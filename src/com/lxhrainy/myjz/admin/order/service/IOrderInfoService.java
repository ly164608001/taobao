package com.lxhrainy.myjz.admin.order.service;

import java.util.List;

import com.lxhrainy.core.common.service.IBaseService;
import com.lxhrainy.myjz.admin.order.model.OrderInfo;
import com.lxhrainy.myjz.admin.order.oe.OrderInfoVO;

/**
 * 订单服务接口
 * @author xueyunteng
 * @date 2016-06-23
 */
public interface IOrderInfoService extends IBaseService<OrderInfo, Integer>{

	/**
	 * 手机端获取订单列表
	 * @param vo
	 * @return
	 */
	List<OrderInfo> getListForMobile(OrderInfoVO vo);

}

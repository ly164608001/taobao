package com.lxhrainy.myjz.admin.order.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxhrainy.core.common.service.AbstractBaseServiceImpl;
import com.lxhrainy.core.sys.model.UserInfo;
import com.lxhrainy.myjz.admin.order.dao.IOrderInfoDao;
import com.lxhrainy.myjz.admin.order.model.OrderInfo;
import com.lxhrainy.myjz.admin.order.model.OrderOtherProperties;
import com.lxhrainy.myjz.admin.order.oe.OrderInfoVO;
import com.lxhrainy.myjz.admin.order.service.IOrderInfoService;
import com.lxhrainy.myjz.admin.order.service.IOrderOtherPropertiesService;
import com.lxhrainy.myjz.admin.task.model.TaskStatistics;
import com.lxhrainy.myjz.admin.user.model.UserMoney;
import com.lxhrainy.myjz.admin.user.service.IUserMoneyService;


/**
 * 订单服务实现类
 * @author xueyunteng
 * @date 2016-06-23
 */

@Service
@Transactional(readOnly = true)
public class OrderInfoServiceImpl extends
AbstractBaseServiceImpl<IOrderInfoDao, OrderInfo, Integer>
implements IOrderInfoService {
	
	@Autowired
	private IOrderOtherPropertiesService orderOtherProService;
	@Autowired
	private IUserMoneyService moneyService;
	private static long orderNum = 0l;  
	
	@Override
	public List<OrderInfo> getListForMobile(OrderInfoVO vo) {
		return dao.getListForMobile(vo);
	}

	@Override
	public List<TaskStatistics> statisticsTask(UserInfo user) {
		return dao.statisticsTask(user);
	}

	/**
	 * 创建任务
	 * @param model
	 * @param proList
	 * @return
	 */
	@Transactional(readOnly = false)
	public int createTask(OrderInfo model, List<OrderOtherProperties> proList,int totalPrice) {
		
		//插入订单
		model.setOrderno(genOrderNo(model));
		model.setBond(totalPrice*0.68);
		dao.insert(model);
		
		//插入订单的其他属性
		for (int i = 0; i < proList.size(); i++) {
			proList.get(i).setOrder(model);
		}
		orderOtherProService.insertBatch(proList);
		
		//扣除蚂蚁币
		UserMoney moneyInfo = moneyService.getByUserId(model.getCreateuser().getId());  
		return moneyService.frozonMoney(moneyInfo, totalPrice);
	}
	
	/**
	 * 生成订单编号
	 * @return
	 */
	private synchronized String genOrderNo(OrderInfo model){
		Date createDate = model.getCreatetime();
		String str = new SimpleDateFormat("yyyyMMddHHmm").format(createDate);
		orderNum ++;  
		long orderNo = Long.parseLong((str)) * 10000;  
		orderNo += orderNum;
		return "TB" + orderNo;
	}
	
}

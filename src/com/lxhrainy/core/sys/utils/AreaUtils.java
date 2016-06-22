package com.lxhrainy.core.sys.utils;

import java.util.ArrayList;
import java.util.List;

import com.google.common.collect.Lists;
import com.lxhrainy.core.sys.dao.ISysAreaDao;
import com.lxhrainy.core.sys.model.SysArea;
import com.lxhrainy.core.sys.oe.SysAreaVO;
import com.lxhrainy.core.utils.CacheUtils;
import com.lxhrainy.core.utils.SpringContextHolder;

/**
 * 地域信息工具类
 * @author lxhrainy
 * @date 2016-04-15
 * @version 1.0
 */
public class AreaUtils {
	
	private static ISysAreaDao sysAreaDao = SpringContextHolder.getBean(ISysAreaDao.class);

	public static final String CACHE_AREA_LIST = "areaList";
	
	
	public static List<SysArea> getAreaList(){
		@SuppressWarnings("unchecked")
		List<SysArea> areaList = (List<SysArea>)CacheUtils.get(CACHE_AREA_LIST);
		List<SysArea> result = new ArrayList<SysArea>();
		if (areaList==null){
			areaList = Lists.newArrayList();
			result = sysAreaDao.findAllList(new SysAreaVO());
			//对list进行排序呢设置
			if(result != null && result.size() > 0){
				for(SysArea area : result){
					List<SysArea> children = area.getChildren();
					for(SysArea child : result){
						if(child.getParent().getId().intValue() == area.getId().intValue()){
							children.add(child);
						}
					}
				}
				
				for(SysArea area : result){
					if(area.getParent().getId().intValue() == 100000){
						areaList.add(area);
					}
				}
			}
			CacheUtils.put(CACHE_AREA_LIST, areaList);
		}
		if (areaList == null){
			areaList = Lists.newArrayList();
		}
		return areaList;
	}
	
}

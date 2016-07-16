package com.lxhrainy.core.sys.utils;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.lxhrainy.core.sys.dao.ISysAreaDao;
import com.lxhrainy.core.sys.model.SysArea;
import com.lxhrainy.core.sys.oe.SysAreaVO;
import com.lxhrainy.core.utils.CacheUtils;
import com.lxhrainy.core.utils.ContextHolderUtils;
import com.lxhrainy.core.utils.SpringContextHolder;
import com.lxhrainy.core.utils.StringUtil;

/**
 * 地域信息工具类
 * @author lxhrainy
 * @date 2016-04-15
 * @version 1.0
 */
public class AreaUtils {
	
	private static ISysAreaDao sysAreaDao = SpringContextHolder.getBean(ISysAreaDao.class);

	public static final String CACHE_AREA_MAP = "areaMap";
	
	
	public static List<SysArea> getAreaList(Integer parentId){
		@SuppressWarnings("unchecked")
		Map<Integer,List<SysArea>> areaMap = (Map<Integer,List<SysArea>>)CacheUtils.get(CACHE_AREA_MAP);
		if (areaMap==null){
			areaMap = Maps.newHashMap();
			List<SysArea> result = sysAreaDao.findAllList(new SysAreaVO());
			//对list进行排序呢设置
			if(result != null && result.size() > 0){
				for(SysArea area : result){
					List<SysArea> children = area.getChildren();
					for(SysArea child : result){
						if(child.getParent().getId().intValue() == area.getId().intValue()){
							children.add(child);
						}
					}
					if(children != null && children.size() > 0){
						//存在子列表
						areaMap.put(area.getId(), children);
					}
				}
				
				List<SysArea> provinceList = new ArrayList<SysArea>();
				for(SysArea area : result){
					if(area.getParent().getId().intValue() == 100000){
						provinceList.add(area);
					}
				}
				areaMap.put(100000, provinceList);
			}
			CacheUtils.put(CACHE_AREA_MAP, areaMap);
		}
		List<SysArea> areaList = areaMap.get(parentId);
		if (areaList == null){
			areaList = Lists.newArrayList();
		}
		return areaList;
	}
	
	public static List<SysArea> getAllCityAreaList(){
		List<SysArea> areaList = Lists.newArrayList();
		//TODO 
		return areaList;
	}
	
	public static String getCountyAreaList(Integer parentId, Integer selectdId, String url){
		String html = "";
		List<SysArea> areaList = getAreaList(parentId);
		if(areaList != null && areaList.size() > 0){
			if(selectdId == null){
				selectdId = -1;
			}
			if(StringUtil.isEmpty(url)){
				url = "javascript:void(0)";
				for(SysArea area : areaList){
					html += "<dd";
					if(area.getId().intValue() == selectdId.intValue()){
						html += " class='active'";
					}
					html += "><a href='"+url+"'>" + area.getAreaname()+"</a></dd>";
				}
			}else{
				String basePath = ContextHolderUtils.getRequest().getContextPath();
				for(SysArea area : areaList){
					html += "<dd";
					if(area.getId().intValue() == selectdId.intValue()){
						html += " class='active'";
					}
					html += "><a href='" + basePath + url + "?areaid="+area.getId()+"'>" + area.getAreaname()+"</a></dd>";
				}
			}
		}
		return html;
	}
	
}

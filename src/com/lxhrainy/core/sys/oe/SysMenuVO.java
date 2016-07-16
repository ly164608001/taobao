package com.lxhrainy.core.sys.oe;

import com.lxhrainy.core.common.oe.BaseVO;
import com.lxhrainy.core.sys.model.SysMenu;

public class SysMenuVO extends BaseVO{

	private SysMenu model;
	
	private Integer parentid;

	public SysMenu getModel() {
		return model;
	}

	public void setModel(SysMenu model) {
		this.model = model;
	}

	public Integer getParentid() {
		return parentid;
	}

	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}
	
}

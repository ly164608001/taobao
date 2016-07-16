package com.lxhrainy.myjz.admin.helpcenter.oe;

import com.lxhrainy.core.common.oe.BaseVO;
import com.lxhrainy.myjz.admin.helpcenter.model.HelpMenu;

public class HelpMenuVO extends BaseVO {

	private HelpMenu model;
	private Integer parentid;
	
	public Integer getParentid() {
		return parentid;
	}

	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}

	public HelpMenu getModel() {
		return model;
	}

	public void setModel(HelpMenu model) {
		this.model = model;
	}
	
}

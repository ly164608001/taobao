package com.lxhrainy.myjz.admin.seller.oe;

import com.lxhrainy.core.common.oe.BaseVO;
import com.lxhrainy.myjz.admin.seller.model.Praise;

public class PraiseVO extends BaseVO {

	private Praise model;
	private String keyword;

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public Praise getModel() {
		return model;
	}

	public void setModel(Praise model) {
		this.model = model;
	}

}

package com.lxhrainy.myjz.admin.seller.oe;

import com.lxhrainy.core.common.oe.BaseVO;
import com.lxhrainy.myjz.admin.seller.model.ReceiptAddress;

public class ReceiptAddressVO extends BaseVO {

	private ReceiptAddress model;
	private String keyword;

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public ReceiptAddress getModel() {
		return model;
	}

	public void setModel(ReceiptAddress model) {
		this.model = model;
	}

}

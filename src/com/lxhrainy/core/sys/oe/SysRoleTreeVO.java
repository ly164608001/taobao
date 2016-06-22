package com.lxhrainy.core.sys.oe;

import java.util.List;

/**
 * easyui treeNode树节点 菜单权限树
 */
public class SysRoleTreeVO {
	/** id **/
	private int id;
	/** 名称 **/
	private String text;
	/** 是否选中 **/
	private boolean checked = false;
	/** 子节点 **/
	private List<SysRoleTreeVO> children = null;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public List<SysRoleTreeVO> getChildren() {
		return children;
	}

	public void setChildren(List<SysRoleTreeVO> children) {
		this.children = children;
	}

	public boolean isChecked() {
		return checked;
	}

	public void setChecked(boolean checked) {
		this.checked = checked;
	}

}

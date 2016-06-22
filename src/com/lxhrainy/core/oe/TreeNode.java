package com.lxhrainy.core.oe;

import java.util.List;

/**
 * 树节点
 * @author yangxinhua
 */
public class TreeNode {
	/**id**/
	private int id;
	/**名称**/
	private String text;
	/**是否选中**/
	private boolean checked = false;
	/**子节点**/
	private List<TreeNode> children;
	
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
	
	public List<TreeNode> getChildren() {
		return children;
	}
	public void setChildren(List<TreeNode> children) {
		this.children = children;
	}
	public boolean isChecked() {
		return checked;
	}
	public void setChecked(boolean checked) {
		this.checked = checked;
	}
	
	
}

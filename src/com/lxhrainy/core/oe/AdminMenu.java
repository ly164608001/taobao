package com.lxhrainy.core.oe;

import java.util.List;

/**
 * 菜单对象
 * @author yangxinhua
 */
public class AdminMenu {
	/**菜单id**/
	private int id;
	/**菜单名称**/
    private String name = "";
    /**菜单地址**/
    private String url = "";
    /**菜单图片**/
    private String image = "";
    /**子级菜单**/
    private List<AdminMenu> children;
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public List<AdminMenu> getChildren() {
		return children;
	}
	public void setChildren(List<AdminMenu> children) {
		this.children = children;
	}
    
	
}

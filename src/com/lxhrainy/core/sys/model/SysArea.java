package com.lxhrainy.core.sys.model;

import java.util.ArrayList;
import java.util.List;

import com.lxhrainy.core.common.model.BaseModel;
/**
 * 全国省市区
 * @author 系统
 */
public class SysArea extends BaseModel
{
	private static final long serialVersionUID = 3972750379836452321L;
	/**
	 * 区域编码
	 */
	private String areacode;
	/**
	 * 地域名称
	 */
	private String areaname;
	/**
	 * 父级ID
	 */
	private SysArea parent;
	/**
	 * 级别
	 */
	private String level;
	/**
	 * 级别类型
	 */
	private String leveltype;
	/**
	 * 城市编码
	 */
	private String citycode;
	/**
	 * 邮政编码
	 */
	private String zipcode;
	/**
	 * 父级名称组合
	 */
	private String mergername;
	/**
	 * 经度
	 */
	private Double lng;
	/**
	 * 纬度
	 */
	private Double lat;
	/**
	 * 地域拼音
	 */
	private String pinyin;
	/**
	 * 中文简称
	 */
	private String shortname;
	/**删除标识**/
	private Integer deleted;
	
	List<SysArea> children = new ArrayList<SysArea>();
	
	public String getAreacode() {
		return areacode;
	}
	public void setAreacode(String areacode) {
		this.areacode = areacode;
	}
	public String getAreaname() {
		return areaname;
	}
	public void setAreaname(String areaname) {
		this.areaname = areaname;
	}
	public SysArea getParent() {
		return parent;
	}
	public void setParent(SysArea parent) {
		this.parent = parent;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getLeveltype() {
		return leveltype;
	}
	public void setLeveltype(String leveltype) {
		this.leveltype = leveltype;
	}
	public String getCitycode() {
		return citycode;
	}
	public void setCitycode(String citycode) {
		this.citycode = citycode;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getMergername() {
		return mergername;
	}
	public void setMergername(String mergername) {
		this.mergername = mergername;
	}
	public Double getLng() {
		return lng;
	}
	public void setLng(Double lng) {
		this.lng = lng;
	}
	public Double getLat() {
		return lat;
	}
	public void setLat(Double lat) {
		this.lat = lat;
	}
	public String getPinyin() {
		return pinyin;
	}
	public void setPinyin(String pinyin) {
		this.pinyin = pinyin;
	}
	public String getShortname() {
		return shortname;
	}
	public void setShortname(String shortname) {
		this.shortname = shortname;
	}
	public Integer getDeleted() {
		return deleted;
	}
	public void setDeleted(Integer deleted) {
		this.deleted = deleted;
	}
	public List<SysArea> getChildren() {
		return children;
	}
	public void setChildren(List<SysArea> children) {
		this.children = children;
	}

}
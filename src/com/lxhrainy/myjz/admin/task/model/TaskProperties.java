package com.lxhrainy.myjz.admin.task.model;

import java.util.List;

import com.lxhrainy.core.common.model.BaseModel;

/**
 * 任务属性Entity
 * 
 * @author xueyunteng
 * @version 2016-08-08
 */
public class TaskProperties extends BaseModel {

	private static final long serialVersionUID = 1L;
	private String name; // 元素name属性名称
	private Integer status; // 使用状态(0,1)
	private Integer type; // 展示区域块(1 任务基本属性 2任务需求设置 3买手身份验证 4发布任务设置)
	private Integer price; // 所需蚂蚁币
	private String elementtype; // 元素类型
	private Integer elementnum; // 元素个数
	private String needtype; // 所需类型(刷手反馈数据类型)
	private Integer neednum; // 所需个数
	private String sort; // 任务完成排序
	private String elementname; // 显示的属性元素名称
	
	private String signname;
	
	private List<TaskPropertiesValue> valueList; //所有值列表
	private TaskProperties parent;//所属属性
	private TaskPropertiesValue belongValue; //所属属性值

	public TaskPropertiesValue getBelongValue() {
		return belongValue;
	}

	public void setBelongValue(TaskPropertiesValue belongValue) {
		this.belongValue = belongValue;
	}

	public TaskProperties getParent() {
		return parent;
	}

	public void setParent(TaskProperties parent) {
		this.parent = parent;
	}

	public List<TaskPropertiesValue> getValueList() {
		return valueList;
	}

	public void setValueList(List<TaskPropertiesValue> valueList) {
		this.valueList = valueList;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getElementtype() {
		return elementtype;
	}

	public void setElementtype(String elementtype) {
		this.elementtype = elementtype;
	}

	public Integer getElementnum() {
		return elementnum;
	}

	public void setElementnum(Integer elementnum) {
		this.elementnum = elementnum;
	}

	public String getNeedtype() {
		return needtype;
	}

	public void setNeedtype(String needtype) {
		this.needtype = needtype;
	}

	public Integer getNeednum() {
		return neednum;
	}

	public void setNeednum(Integer neednum) {
		this.neednum = neednum;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getElementname() {
		return elementname;
	}

	public void setElementname(String elementname) {
		this.elementname = elementname;
	}

	public String getSignname() {
		return signname;
	}

	public void setSignname(String signname) {
		this.signname = signname;
	}

}
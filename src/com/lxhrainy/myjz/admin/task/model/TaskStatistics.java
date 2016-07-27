package com.lxhrainy.myjz.admin.task.model;

import com.lxhrainy.core.common.model.BaseModel;

public class TaskStatistics extends BaseModel{

	private static final long serialVersionUID = -9151773139843482629L;

	/**
	 * 任务条数
	 */
	private Integer number;
	/**
	 * 任务平台类型
	 * 0:手机单;1:电脑单;
	 */
	private Integer targetplatfrom;
	/**
	 * 任务目标副类型
	 * 0:常规单;1:流量单;
	 */
	private Integer targetsubtype;
	/**
	 * 任务目标类型，targettype可与targetsubtype、targetplatfrom和用，允许组合
	 * 0:淘宝;1:京东;
	 */
	private Integer targettype;
	
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public Integer getTargetplatfrom() {
		return targetplatfrom;
	}
	public void setTargetplatfrom(Integer targetplatfrom) {
		this.targetplatfrom = targetplatfrom;
	}
	public Integer getTargetsubtype() {
		return targetsubtype;
	}
	public void setTargetsubtype(Integer targetsubtype) {
		this.targetsubtype = targetsubtype;
	}
	public Integer getTargettype() {
		return targettype;
	}
	public void setTargettype(Integer targettype) {
		this.targettype = targettype;
	}
	
}

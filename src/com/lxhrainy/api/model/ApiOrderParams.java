/**
 * 
 */
package com.lxhrainy.api.model;

/**
 * @author dyno
 *
 */
public class ApiOrderParams {
	
	/**
	 * 获取个数 <br/>
	 * 	value : count
	 */
	private  String count;
	/**
	 *货源列表起始序号 <br/>
	 * 	value : offsetid
	 */
	private  String offsetid;
	
	/**start 任务列表**/
	//0:大厅的任务列表;1:我的任务列表;
	private String ismine;
	//0:进行中;1:已完成;2:全部;
	private String status;
	//0:手机单;1:电脑单;
	private String targetplatfrom;
	//0:常规单;1:流量单;
	private String targetsubtype;
	//0:淘宝;1:京东;
	private String targettype;
	//0:普通任务;1:超级任务;2:全部;
	private String tasktype;
	/**end 任务**/
	
	
	//start 申诉
	/**
	 * 任务ID
	 */
	private String taskid;
	/**
	 * 申诉类型，请根据 Config接口获取
	 */
	private String complaintype;
	/**
	 * 申述内容
	 */
	private String content;
	/**
	 * 凭证照片，最多三张图片
	 */
	private String proveimage;
	/**
	 * 卖方id
	 */
	private String sellerid;
	//end 申诉
	
	public String getTaskid() {
		return taskid;
	}
	public void setTaskid(String taskid) {
		this.taskid = taskid;
	}
	public String getComplaintype() {
		return complaintype;
	}
	public void setComplaintype(String complaintype) {
		this.complaintype = complaintype;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getProveimage() {
		return proveimage;
	}
	public void setProveimage(String proveimage) {
		this.proveimage = proveimage;
	}
	public String getSellerid() {
		return sellerid;
	}
	public void setSellerid(String sellerid) {
		this.sellerid = sellerid;
	}
	public String getIsmine() {
		return ismine;
	}
	public void setIsmine(String ismine) {
		this.ismine = ismine;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getTargetplatfrom() {
		return targetplatfrom;
	}
	public void setTargetplatfrom(String targetplatfrom) {
		this.targetplatfrom = targetplatfrom;
	}
	public String getTargetsubtype() {
		return targetsubtype;
	}
	public void setTargetsubtype(String targetsubtype) {
		this.targetsubtype = targetsubtype;
	}
	public String getTargettype() {
		return targettype;
	}
	public void setTargettype(String targettype) {
		this.targettype = targettype;
	}
	public String getTasktype() {
		return tasktype;
	}
	public void setTasktype(String tasktype) {
		this.tasktype = tasktype;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	public String getOffsetid() {
		return offsetid;
	}
	public void setOffsetid(String offsetid) {
		this.offsetid = offsetid;
	}
	
}

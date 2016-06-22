package com.lxhrainy.core.common.oe;

public class BaseVO {

	private Integer page = 1;//当前页
	private Integer rows = 10;//行数
	private Integer totalCount = 0;
	private Integer totalPage = 0;

	public Integer getTotalPage() {
		return totalPage;
	}
	
	public int getPageStart() {
		if (page > 0) {
			return (page - 1) * rows;
		}
		return 0;
	}

	public int getPageEnd() {
		return page * rows;
	}

	public int getPage() {
		return page;
	}

	public int getRows() {
		return rows;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setPageStart(int pageStart) {
	}

	public Integer getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
		if(totalCount > 0){
			
			if(totalCount%rows == 0){
				this.totalPage = totalCount/rows;
			}else{
				this.totalPage = totalCount/rows + 1;
			}
			
		}
	}

}

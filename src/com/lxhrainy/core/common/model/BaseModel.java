package com.lxhrainy.core.common.model;

public class BaseModel implements Identifiable, java.io.Serializable{

	private static final long serialVersionUID = -3505763213610474959L;
	protected Integer id;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		final BaseModel other = (BaseModel) obj;
		if (id == null) {
			return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

}

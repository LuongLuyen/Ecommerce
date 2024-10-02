package com.javaspring.dto;

import java.util.ArrayList;
import java.util.List;

public class AbstractDto<T> {
	
	private List<T> listResult = new ArrayList<>();
	private Long id;
	private long[] ids;
	
	
	public List<T> getListResult() {
		return listResult;
	}
	public void setListResult(List<T> listResult) {
		this.listResult = listResult;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	public long[] getIds() {
		return ids;
	}
	public void setIds(long[] ids) {
		this.ids = ids;
	}
}

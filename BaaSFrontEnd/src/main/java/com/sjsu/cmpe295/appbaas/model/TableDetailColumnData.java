package com.sjsu.cmpe295.appbaas.model;

import org.codehaus.jackson.annotate.JsonProperty;

public class TableDetailColumnData {

	@JsonProperty("columnName")
	private String columnName;
	
	@JsonProperty("columnType")
	private String columnType;
	
	private String columnValue;
	
	@JsonProperty("pkFlag")
	private boolean pkFlag;

	@JsonProperty("columnName")
	public String getColumnName() {
		return columnName;
	}

	@JsonProperty("columnName")
	public void setColumnName(String columnName) {
		this.columnName = columnName;
	}

	@JsonProperty("columnType")
	public String getColumnType() {
		return columnType;
	}

	@JsonProperty("columnType")
	public void setColumnType(String columnType) {
		this.columnType = columnType;
	}

	@JsonProperty("pkFlag")
	public boolean isPkFlag() {
		return pkFlag;
	}

	@JsonProperty("pkFlag")
	public void setPkFlag(boolean pkFlag) {
		this.pkFlag = pkFlag;
	}

	public String getColumnValue() {
		return columnValue;
	}

	public void setColumnValue(String columnValue) {
		this.columnValue = columnValue;
	}
	
	
	
}

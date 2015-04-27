package com.sjsu.cmpe295.appbaas.model;

import java.util.List;

public class TableDetailModel {
	private String tableName;

	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	
	private List<TableDetailColumnData> columns;

	public List<TableDetailColumnData> getColumns() {
		return columns;
	}

	public void setColumns(List<TableDetailColumnData> columns) {
		this.columns = columns;
	}
	
	private List<TableDetailRowData> rows;

	public List<TableDetailRowData> getRows() {
		return rows;
	}

	public void setRows(List<TableDetailRowData> rows) {
		this.rows = rows;
	}

	@Override
	public String toString() {
		return "TableDetails [tableName=" + tableName + ", columns=" + columns
				+ ", rows=" + rows + "]";
	}
	
	
	
	
}

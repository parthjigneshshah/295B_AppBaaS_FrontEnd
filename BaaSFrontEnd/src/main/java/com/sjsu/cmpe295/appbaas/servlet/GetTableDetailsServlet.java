package com.sjsu.cmpe295.appbaas.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.sjsu.cmpe295.appbaas.model.TableDetailColumnData;
import com.sjsu.cmpe295.appbaas.model.TableDetailModel;
import com.sjsu.cmpe295.appbaas.model.TableDetailRowData;
import com.sjsu.cmpe295.appbaas.servicemanager.GetTableDetailsServiceManager;

/**
 * Servlet implementation class GetTableDetailsServlet
 */
public class GetTableDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetTableDetailsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		JSONObject jsonResponse = null;
		
		System.out.println("in do get"+ request.getParameter("action"));
		HttpSession session = request.getSession();
		String sessionToken = (String) session.getAttribute("sessionToken");
		System.out.println(sessionToken);
		String appKey = (String) session.getAttribute("appKey");
		System.out.println(appKey);
		String tableName = request.getParameter("action");
		System.out.println(tableName);
		GetTableDetailsServiceManager gtdsm = new GetTableDetailsServiceManager();
		jsonResponse = gtdsm.getTableDetails(sessionToken, appKey, tableName);
		
		System.out.println("table details: "+jsonResponse.toString());
		try {
			System.out.println(jsonResponse.getString("rows"));
		} catch (JSONException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		try {
			String code = jsonResponse.getString("code");
			
			System.out.println("code is: "+code);
			if(code.equals("200")){
				session.setAttribute("tableDetails", jsonResponse);
				TableDetailModel tableDetailsobj = new TableDetailModel();
			
					
					List<TableDetailColumnData> columnList = new ArrayList<TableDetailColumnData>();
					TableDetailColumnData columnData;
					List<TableDetailRowData> rowList = new ArrayList<TableDetailRowData>();
					TableDetailRowData rowData;
					JSONObject tableInfo = jsonResponse.getJSONObject("tableDetails");
					System.out.println("returned table detail "+tableInfo.toString() );
					
					JSONArray colArray = tableInfo.getJSONArray("columns");
					
					JSONObject tempObj = (JSONObject)jsonResponse.get("tableDetails");
					
					if(!tempObj.getString("rows").equals("null")){
						
						System.out.println("rows are there");
						JSONArray rowArray = tableInfo.getJSONArray("rows");
						
						String tableN = tableInfo.getString("tableName");
						
						
						tableDetailsobj.setTableName(tableN);
						
						for(int i=0;i<colArray.length();i++)
						{
							columnData = new TableDetailColumnData();
							JSONObject colObject = colArray.getJSONObject(i);
							columnData.setColumnName(colObject.getString("columnName"));
							columnData.setColumnType(colObject.getString("columnType"));
							columnData.setPkFlag(colObject.getBoolean("pkFlag"));
							columnList.add(columnData);
						}
						
						
						

						for(int i=0;i<rowArray.length();i++)
						{
							rowData = new TableDetailRowData();
							JSONObject rowObject = rowArray.getJSONObject(i);
							rowData.setColumnName(rowObject.getString("columnName"));
							rowData.setValue(rowObject.getString("value"));
							rowList.add(rowData);
						}
						
						tableDetailsobj.setColumns(columnList);
						tableDetailsobj.setRows(rowList);
						//RequestDispatcher rd = request.getRequestDispatcher("/jsps/pages-show-tables.jsp");
						System.out.println("table dtails: "+tableDetailsobj.toString());
						session.setAttribute("tableDetailsjsp",tableDetailsobj );
						response.sendRedirect("jsps/pages-show-tables.jsp");
					}
					else{
						
						//JSONArray rowArray = tableInfo.getJSONArray("rows");
						
						String tableN = tableInfo.getString("tableName");
						
						
						tableDetailsobj.setTableName(tableN);
						
						for(int i=0;i<colArray.length();i++)
						{
							columnData = new TableDetailColumnData();
							JSONObject colObject = colArray.getJSONObject(i);
							columnData.setColumnName(colObject.getString("columnName"));
							columnData.setColumnType(colObject.getString("columnType"));
							columnData.setPkFlag(colObject.getBoolean("pkFlag"));
							columnList.add(columnData);
						}
						
						
						

						/*for(int i=0;i<rowArray.length();i++)
						{
							rowData = new TableDetailRowData();
							JSONObject rowObject = rowArray.getJSONObject(i);
							rowData.setColumnName(rowObject.getString("columnName"));
							rowData.setValue(rowObject.getString("value"));
							rowList.add(rowData);
						}*/
						
						tableDetailsobj.setColumns(columnList);
						tableDetailsobj.setRows(rowList);
						//RequestDispatcher rd = request.getRequestDispatcher("/jsps/pages-show-tables.jsp");
						System.out.println("table dtails: "+tableDetailsobj.toString());
						session.setAttribute("tableDetailsjsp",tableDetailsobj );
						response.sendRedirect("jsps/pages-show-tables.jsp");
					}
					
			
			}
			
			else if(code.equals("1014")){
				
				String message = "You have no entry in table "+tableName+" please take appropriate action accordingly.";
				
				request.setAttribute("message", message);
				response.sendRedirect("jsps/pages-show-tables.jsp");
				
			}
			
			
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}

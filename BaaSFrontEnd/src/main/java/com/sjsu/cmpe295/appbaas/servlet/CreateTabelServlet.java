package com.sjsu.cmpe295.appbaas.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import com.sjsu.cmpe295.appbaas.servicemanager.CreateTableServiceManager;
import com.sun.jersey.api.client.RequestWriter;

/**
 * Servlet implementation class CreateTabelServlet
 */
public class CreateTabelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateTabelServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("null")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		JSONObject jsonResponse = null; 
		int counter = Integer.parseInt(request.getParameter("counter"));
		int pkColumn = Integer.parseInt(request.getParameter("check"));
		int colCounter = 0;
		String tableName = request.getParameter("tableName");
		
		System.out.println("no of columns are: "+counter);
		System.out.println("PK Col: " + pkColumn);
		HttpSession session = request.getSession();
		int pkPointer = 0;
		String sessionToken = (String) session.getAttribute("sessionToken");
		String appKey = (String) session.getAttribute("appKey");
		session.setAttribute("tableName", tableName);
		
		System.out.println("this is checked:"+request.getParameter("Name1"));
		
		String colNameArray[] = new String[counter];
		String colTypeArray[] = new String[counter];
		String pkArray[] = new String [counter];
		
		
		
		for(int i = 1; i <= counter; i++){
			String colName = request.getParameter("ColName"+i);
			String colType = request.getParameter("DataType"+i);
			String x = request.getParameter("PrimaryKey"+i);
			
			if(colName != null && colType != null){
				
				colCounter++;
				colNameArray[i-1] = colName;
				System.out.println(colNameArray[i-1]);
				
				colTypeArray[i-1] = colType;
				System.out.println(colTypeArray[i-1]);
				pkArray[i-1] = x;
				System.out.println("PRIMARYKEYaRRAY"+pkArray[i-1]);
				
			}
		}
		
		for(int r = 1; r <= pkArray.length; r++){
			
			if(pkArray[r-1] != null){
				pkPointer = r;
				break;
			}
			
		}
		
		System.out.println("primary key at columnNo"+pkPointer);
		System.out.println("length of col counter"+colNameArray.length);
		
		
		System.out.println("no of cols: "+colCounter);
		session.setAttribute("columnCounter", colCounter);
		session.setAttribute("tableName", tableName);
		
		CreateTableServiceManager ctsm = new CreateTableServiceManager();
		jsonResponse = ctsm.createTable(appKey, sessionToken, colNameArray,colTypeArray, pkPointer, tableName);
		
		
		response.sendRedirect("jsps/pages-success-table.jsp");
	

}
}

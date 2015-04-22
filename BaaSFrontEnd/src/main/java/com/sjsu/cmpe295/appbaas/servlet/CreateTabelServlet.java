package com.sjsu.cmpe295.appbaas.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int counter = Integer.parseInt(request.getParameter("counter"));
		String tableName = request.getParameter("tableName");
		System.out.println("no of columns are: "+counter);
		HttpSession session = request.getSession();
		
		
		
		String fieldArray[] = new String[counter];
		
		for(int i = 1; i <= counter; i++){
			
			fieldArray[i-1] = request.getParameter("ColName"+i);
			System.out.println("columnName: "+fieldArray[i-1]);
			session.setAttribute("columnName"+i, fieldArray[i-1]);
		}
		
		for(int j = 0; j < fieldArray.length; j++)
		System.out.println(fieldArray[j]);
		
		session.setAttribute("fieldCounter", counter);
		session.setAttribute("tableName", tableName);
		
		
		response.sendRedirect("jsps/pages-show-tables.jsp");
	}

}

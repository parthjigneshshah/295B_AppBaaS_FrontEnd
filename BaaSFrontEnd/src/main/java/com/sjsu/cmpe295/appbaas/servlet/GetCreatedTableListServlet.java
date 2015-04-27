package com.sjsu.cmpe295.appbaas.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import com.sjsu.cmpe295.appbaas.servicemanager.GetCreatedTableListServiceManager;

/**
 * Servlet implementation class GetCreatedTableListServlet
 */
public class GetCreatedTableListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetCreatedTableListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("in servlet list");
		JSONObject jsonResponse = null;
		HttpSession session = request.getSession();
		String sessionToken = (String) session.getAttribute("sessionToken");
		String appKey = (String) session.getAttribute("appKey");
		
		GetCreatedTableListServiceManager gctlsm = new GetCreatedTableListServiceManager();
		
		jsonResponse = gctlsm.getCreatedTableList(sessionToken, appKey);
		System.out.println("this is table List"+jsonResponse.toString());

		session.setAttribute("tableListResponse", jsonResponse);
		
		
		response.sendRedirect("jsps/pages-table-list.jsp");
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}

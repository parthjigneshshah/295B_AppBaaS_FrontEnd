package com.sjsu.cmpe295.appbaas.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;

import com.sjsu.cmpe295.appbaas.servicemanager.LogoutServiceManager;

/**
 * Servlet implementation class LogoutServlet
 */
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("in do get");
		JSONObject jsonResponse = null;
		HttpSession session = request.getSession();
		String sessionToken = (String) session.getAttribute("sessionToken");
		
		LogoutServiceManager lsm = new LogoutServiceManager();
		jsonResponse = lsm.logout(sessionToken);
		
		try {
			
			System.out.println("in try block");
			String code = jsonResponse.getString("code");
			
			if (code.equals("200")){
				
				session = request.getSession(false);
			    if (session != null) 
			    {	
			    	System.out.println("in logout servlet, invalidating session ");
			    	session.setAttribute("UserName", null);
			         session.invalidate();
			         System.out.println(request.getSession(false));

			    }
				response.sendRedirect("jsps/pages-login.jsp");
				
			}
			else{
				response.sendRedirect("jsps/pages-error.jsp");
			}
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		};
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("in do post");
			}

}

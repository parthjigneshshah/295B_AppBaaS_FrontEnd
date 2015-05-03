package com.sjsu.cmpe295.appbaas.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.sjsu.cmpe295.appbaas.servicemanager.*;

/**
 * Servlet implementation class RegistrationPageServlet
 */
public class RegistrationPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationPageServlet() {
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
		
		JSONObject jsonResponse = null;
		
		System.out.println("in servlet Post");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("emailAdd");
		String password = request.getParameter("password");
		RegistrationServiceManager rsm = new RegistrationServiceManager();
		jsonResponse = rsm.RegisterUser(firstName, lastName, email, password);
		
	try {
			if(jsonResponse!=null && jsonResponse.equals("null")){
				response.sendRedirect("jsps/pages-error.jsp");
			}
			if(jsonResponse!=null&&!jsonResponse.isNull("code")) {
				System.out.println(jsonResponse.toString());
				String statusCode =  jsonResponse.get("code").toString(); 
			
				if (statusCode.equals("200")){
					response.sendRedirect("jsps/pages-login-redirect.jsp");
				}
			}
			else{
			response.sendRedirect("jsps/pages-error.jsp");	
			}
		} catch (JSONException e) {
			// TODO Auto-generated catch block
		
		
	}

}
}

package com.sjsu.cmpe295.appbaas.servlet;

import java.io.IOException;



import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;

import com.sjsu.cmpe295.appbaas.servicemanager.*;

/**
 * Servlet implementation class LoginPageServlet
 */
public class LoginPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginPageServlet() {
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
		
		String uname = request.getParameter("userName");
		String password = request.getParameter("password");
		
		JSONObject jsonResponse = null;
		
		
		LoginServiceManager lsm = new LoginServiceManager();
		jsonResponse = lsm.loginUser(uname, password);		
		
try {
			System.out.println(jsonResponse.toString());
			String sessionToken = jsonResponse.getString("sessionToken").toString();
			System.out.println(sessionToken);
			
			HttpSession session = request.getSession();
			session.setAttribute("sessionToken", sessionToken);
			
			JSONObject responseObj =  (JSONObject) jsonResponse.get("responseObject");
			String statusCode = responseObj.get("code").toString();
			System.out.println("statusCosde"+statusCode);
			if (statusCode.equals("200")){
				
				response.sendRedirect("GetApplicationServlet");
				session.setAttribute("UserName", uname);
				session.setAttribute("password", password);
			}
			
			else if(statusCode.equals("1002")){
				
				String message = "Incorrect User name or password";
				session.setAttribute("loginErrorMsg", message);
				response.sendRedirect("jsps/pages-login.jsp");
				
			}
			else{
			response.sendRedirect("jsps/pages-error.jsp");	
			}
		} catch (JSONException e) {
			// TODO Auto-generated catch block
		
		
	}
		
		
	}

}

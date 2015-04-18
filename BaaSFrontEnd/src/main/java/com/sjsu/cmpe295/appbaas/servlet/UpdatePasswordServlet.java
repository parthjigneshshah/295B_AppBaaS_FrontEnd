package com.sjsu.cmpe295.appbaas.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;

import com.sjsu.cmpe295.appbaas.servicemanager.UpdateUserDetailServiceManager;

/**
 * Servlet implementation class UpdatePasswordServlet
 */
public class UpdatePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePasswordServlet() {
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
		
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		String sessionToken = (String) session.getAttribute("sessionToken");
		
		UpdateUserDetailServiceManager uudsm = new UpdateUserDetailServiceManager();
		jsonResponse = uudsm.updateUserDetail(password, sessionToken);
		
		try {
			String statusCode = jsonResponse.getString("code");
			if(statusCode.equals("200")){
				response.sendRedirect("jsps/pages-password-success.jsp");
			}
			
			else{response.sendRedirect("jsps/pages-error.jsp");}
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
}


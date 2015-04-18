package com.sjsu.cmpe295.appbaas.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;

import com.sjsu.cmpe295.appbaas.servicemanager.UserDetailServiceManager;

/**
 * Servlet implementation class UserDetailServlet
 */
public class UserDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		String sessionToken = (String) session.getAttribute("sessionToken");
		
		JSONObject jsonResponse = null;
		
		UserDetailServiceManager udsm = new UserDetailServiceManager();
		jsonResponse = udsm.getUserDetail(sessionToken);
		
		try{
			
			
			String statusCode = jsonResponse.get("code").toString();
			System.out.println("statusCosde"+statusCode);
			
			if(statusCode.equals("200")){
				
				JSONObject jsonUser = new JSONObject();
				
				jsonUser = jsonResponse.getJSONObject("user");
				System.out.println(jsonUser.toString());
				
				String email = jsonUser.getString("email");
				String password = jsonUser.getString("password");
				String first_name = jsonUser.getString("first_name");
				String last_name = jsonUser.getString("last_name");
				
				session.setAttribute("email", email);
				session.setAttribute("password", password);
				session.setAttribute("fName", first_name);
				session.setAttribute("lName", last_name);
				
				response.sendRedirect("jsps/pages-edit-profile.jsp");
				
			}
			
		}
		
		catch(JSONException e){
			e.getStackTrace();
		}
		
		System.out.println(jsonResponse.toString());
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}

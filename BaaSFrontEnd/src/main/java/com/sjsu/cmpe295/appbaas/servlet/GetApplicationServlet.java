package com.sjsu.cmpe295.appbaas.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.sjsu.cmpe295.appbaas.servicemanager.GetApplicationServiceManager;

/**
 * Servlet implementation class GetApplicationServlet
 */
public class GetApplicationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetApplicationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		JSONObject jsonResponse = null;
		
		
		System.out.println("get application in do get");
		HttpSession session = request.getSession();
		String sessionToken = (String) session.getAttribute("sessionToken");
		GetApplicationServiceManager gasm = new GetApplicationServiceManager();
		jsonResponse = gasm.getAllApplications(sessionToken);
		System.out.println(jsonResponse.toString());
		
		
			
		JSONArray appArray = new JSONArray();
		
		try {
			String code = jsonResponse.getString("code");
			if(code.equals("200")){
			appArray = jsonResponse.getJSONArray("applications");
			int no_of_app = appArray.length();
			for(int i = 0; i < no_of_app; i++ ){
				JSONObject app = new JSONObject();
				JSONArray appServices = new JSONArray();
				app = appArray.getJSONObject(i);
				appServices = app.getJSONArray("services");
				int no_of_services = appServices.length();
				System.out.println("no of services are :"+no_of_services);
					for(int j = 0; j < no_of_services; j++){
						
						JSONObject service = appServices.getJSONObject(j);
						
						System.out.println("this are the services"+service.toString());
						
						
					}
				System.out.println("applications are:"+app.toString());
				
			}
			
			System.out.println("this is app array"+appArray.toString());
			System.out.println("no of applications are :"+no_of_app);
			session.setAttribute("applicationsJson", jsonResponse);
			response.sendRedirect("jsps/pages-applications.jsp");
			}
			
			else if(code.equals("1008")){
				response.sendRedirect("jsps/pages-no-application.jsp");
			}
			else if(code.equals("1010")){
				response.sendRedirect("jsps/pages-no-application.jsp");
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
		
		System.out.println("get application in do post");
	}

}

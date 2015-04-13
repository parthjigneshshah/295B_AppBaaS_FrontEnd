package com.sjsu.cmpe295.appbaas.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.sjsu.cmpe295.appbaas.servicemanager.AppCreateServiceManager;

/*
 * Servlet implementation of class AppCreatePageServlet*/
public class AppCreatePageServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public AppCreatePageServlet() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		JSONObject jsonResponse = null;

		System.out.println("in servlet POST of AppCreatePageServlet");
		String appName = request.getParameter("appName");
		String appDesc= request.getParameter("appDesc");
				//passing the services in a String array
		String[] services= request.getParameterValues("services");
		String appVersion= request.getParameter("appVersion");
		String appType= request.getParameter("appType");
		AppCreateServiceManager acsm=new AppCreateServiceManager();
		jsonResponse=acsm.createApplication(appName, appDesc, services, appVersion, appType);
		
		try {
			String statusCode = jsonResponse.get("code").toString();
			if(statusCode.equals("200")){
				//Need to update this with exact "application creation" successful jsp page
				response.sendRedirect("jsps/pages-applications.jsp");
			}
			else{
				response.sendRedirect("jsps/pages-error.jsp");	
			}
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

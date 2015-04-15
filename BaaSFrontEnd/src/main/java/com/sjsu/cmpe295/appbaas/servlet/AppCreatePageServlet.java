package com.sjsu.cmpe295.appbaas.servlet;

import java.io.IOException;

import com.sjsu.cmpe295.appbaas.servicemanager.AppCreateServiceManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

/**
 * Servlet implementation class AppCreatePageServlet
 */
public class AppCreatePageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AppCreatePageServlet() {
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
	
		System.out.println("in the dopost");
		String action = request.getParameter("action");
		JSONObject jsonResponse = null;
		if(action.equals("createApplication")){
			
			System.out.println("in action if");
			
			String appName = request.getParameter("AppName");
			String appDesc = request.getParameter("AppDesc");
			String appVer = request.getParameter("AppVer");
			String appType = request.getParameter("AppType");
			String[] serviceNames = request.getParameterValues("ServiceName");
			
			AppCreateServiceManager acsm = new AppCreateServiceManager();
			jsonResponse = acsm.createApp(appName, appDesc, appVer, appType, serviceNames);
			
		}
		response.sendRedirect("jsps/pages-create-application.jsp");
	
	}

}

package com.sjsu.cmpe295.appbaas.servlet;

import java.io.IOException;

import com.sjsu.cmpe295.appbaas.servicemanager.AppCreateServiceManager;

import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
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
			
			HttpSession session = request.getSession();
			String token = (String) session.getAttribute("sessionToken");
			
			System.out.println("session token is: "+token);
			
			AppCreateServiceManager acsm = new AppCreateServiceManager();
			jsonResponse = acsm.createApp(appName, appDesc, appVer, appType, serviceNames, token);
			
			System.out.println("this is response:   "+jsonResponse.toString());
			
			try {
				
				JSONObject responseObj =  (JSONObject) jsonResponse.get("responseObject");
				String statusCode = responseObj.get("code").toString();
				String appKey = jsonResponse.getString("appKey");
				session.setAttribute("appKey", appKey);
				System.out.println("statusCosde"+statusCode);
				if (statusCode.equals("200")){
					
					response.sendRedirect("jsps/pages-success.jsp");
				}
				
				else{
				response.sendRedirect("jsps/pages-error.jsp");	
				}
			} catch (JSONException e) {
				// TODO Auto-generated catch block
			
			
		}
			
		}
		
		
	
	}

}

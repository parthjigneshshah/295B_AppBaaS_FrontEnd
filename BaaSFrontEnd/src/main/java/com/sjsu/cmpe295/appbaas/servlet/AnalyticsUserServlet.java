package com.sjsu.cmpe295.appbaas.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;

import com.sjsu.cmpe295.appbaas.servicemanager.AnalyticsServiceManager;

/**
 * Servlet implementation class AnalyticsUserServlet
 */
public class AnalyticsUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnalyticsUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		JSONObject jsonResponseUserAppAnalytics = null;
		HttpSession session =  request.getSession();
		String applicationKey = request.getParameter("action");
		String sessionToken = session.getAttribute("sessionToken").toString();
		System.out.println(sessionToken);
		System.out.println(applicationKey);
		
		AnalyticsServiceManager asm = new AnalyticsServiceManager();
		
		jsonResponseUserAppAnalytics = asm.getUserAppAnalytics(applicationKey, sessionToken);
		
		System.out.println(jsonResponseUserAppAnalytics.toString());
		
		ArrayList<String> countList = new ArrayList<String>();
		
		try {
			if(jsonResponseUserAppAnalytics.getString("code").equals("200")){
				
				countList.add(jsonResponseUserAppAnalytics.getString("activeUsers"));
				countList.add(jsonResponseUserAppAnalytics.getString("totalUsers"));
				countList.add(jsonResponseUserAppAnalytics.getString("neverLoggedUsers"));
				countList.add(jsonResponseUserAppAnalytics.getString("inActiveUsers"));
				
				for(int i = 0; i < countList.size(); i++){
					
					System.out.println(countList.get(i));
					
				}
				
				session.setAttribute("countUserArrayList", countList);
					
				response.sendRedirect("jsps/pages-user-analytics.jsp");
				
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
	}

}

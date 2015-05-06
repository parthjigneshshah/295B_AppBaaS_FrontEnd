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
 * Servlet implementation class AnalyticsServlet
 */
public class AnalyticsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnalyticsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	JSONObject jsonResponseDevCount = null;
	JSONObject jsonResponseAppTypeCount = null;
	
	HttpSession session =  request.getSession();
	
	
	AnalyticsServiceManager asm = new AnalyticsServiceManager();
	
	jsonResponseDevCount = asm.getAnalytics();
	jsonResponseAppTypeCount = asm.getAppAnalytics();
	
	System.out.println(jsonResponseDevCount.toString());
	System.out.println(jsonResponseAppTypeCount.toString());
	ArrayList<String> countList = new ArrayList<String>();
	ArrayList<String> appTypeCountList = new ArrayList<String>();
	try {
		if(jsonResponseDevCount.getString("code").equals("200")){
			
			countList.add(jsonResponseDevCount.getString("activeDevelopers"));
			countList.add(jsonResponseDevCount.getString("totalDevelopers"));
			countList.add(jsonResponseDevCount.getString("neverLoggedUsers"));
			countList.add(jsonResponseDevCount.getString("inActiveDevelopers"));
			
			for(int i = 0; i < countList.size(); i++){
				
				System.out.println(countList.get(i));
				
			}
		
		if(jsonResponseAppTypeCount.getString("code").equals("200")){
			
			appTypeCountList.add(jsonResponseAppTypeCount.getString("Engineering"));
			appTypeCountList.add(jsonResponseAppTypeCount.getString("News"));
			appTypeCountList.add(jsonResponseAppTypeCount.getString("ECommerce"));
			appTypeCountList.add(jsonResponseAppTypeCount.getString("Social"));
			
		}
			
	
		session.setAttribute("countArrayList", countList);
		session.setAttribute("appTypeCountList", appTypeCountList);	
		response.sendRedirect("jsps/pages-charts.jsp");
			
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

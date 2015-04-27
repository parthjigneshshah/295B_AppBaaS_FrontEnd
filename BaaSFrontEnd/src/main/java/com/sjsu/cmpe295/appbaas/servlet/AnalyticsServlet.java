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
	JSONObject jsonResponse = null;
	
	AnalyticsServiceManager asm = new AnalyticsServiceManager();
	
	jsonResponse = asm.getAnalytics();
	System.out.println(jsonResponse.toString());
	ArrayList<String> countList = new ArrayList<String>();
	try {
		if(jsonResponse.getString("code").equals("200")){
			
			countList.add(jsonResponse.getString("activeDevelopers"));
			countList.add(jsonResponse.getString("totalDevelopers"));
			countList.add(jsonResponse.getString("neverLoggedUsers"));
			countList.add(jsonResponse.getString("inActiveDevelopers"));
			
			for(int i = 0; i < countList.size(); i++){
				
				System.out.println(countList.get(i));
				
			}
			
		HttpSession session =  request.getSession();
		session.setAttribute("countArrayList", countList);
			
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

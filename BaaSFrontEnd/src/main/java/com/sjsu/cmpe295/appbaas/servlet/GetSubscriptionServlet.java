package com.sjsu.cmpe295.appbaas.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;

import com.sjsu.cmpe295.appbaas.servicemanager.SubscriptionServiceManager;
import com.sjsu.cmpe295.appbaas.servicemanager.SubscriptionStatusServiceManager;

/**
 * Servlet implementation class GetSubscriptionServlet
 */
public class GetSubscriptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetSubscriptionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		JSONObject jsonResponse = null;
		JSONObject jsonSubscriptionResponse = null;
		String subscriptionCode ="";
		SubscriptionStatusServiceManager sssm = new SubscriptionStatusServiceManager();
		
		HttpSession session  = request.getSession();
		String sessionToken = (String)session.getAttribute("sessionToken");
		String applicationKey = (String) session.getAttribute("appKey");
		
		SubscriptionServiceManager ssm = new SubscriptionServiceManager();
		jsonResponse = ssm.getSubscription(sessionToken, applicationKey);
		
		System.out.println(jsonResponse.toString());
		
		String code;
		try {
			code = (String) jsonResponse.getString("code");
			
			if(code.equals("200")){
				jsonSubscriptionResponse = sssm.getSubscriptionFlag(sessionToken);
				System.out.println(""+jsonSubscriptionResponse.toString());
				subscriptionCode = (String)jsonSubscriptionResponse.getString("code");
				session.setAttribute("subscriptionCode", subscriptionCode);
				response.sendRedirect("jsps/pages-success-subscription.jsp");
				
			}
			
			if(code.equals("1016")){
				response.sendRedirect("jsps/pages-success-subscription.jsp");
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

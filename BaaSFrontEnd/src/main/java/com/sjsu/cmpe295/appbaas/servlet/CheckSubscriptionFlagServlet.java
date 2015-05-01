package com.sjsu.cmpe295.appbaas.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;

import com.sjsu.cmpe295.appbaas.servicemanager.SubscriptionStatusServiceManager;

/**
 * Servlet implementation class CheckSubscriptionFlagServlet
 */
public class CheckSubscriptionFlagServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckSubscriptionFlagServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession();
		String sessionToken = session.getAttribute("sessionToken").toString();
		JSONObject jsonResponse = null;
		SubscriptionStatusServiceManager sssm = new SubscriptionStatusServiceManager();
		jsonResponse = sssm.getSubscriptionFlag(sessionToken);
		try {
			String subscriptionCode = jsonResponse.getString("code").toString();
			session.setAttribute("subscriptionCode", subscriptionCode);
			response.sendRedirect("GetApplicationServlet");
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

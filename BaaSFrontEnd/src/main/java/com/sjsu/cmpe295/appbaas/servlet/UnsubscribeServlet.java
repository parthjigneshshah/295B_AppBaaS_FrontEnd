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
import com.sjsu.cmpe295.appbaas.servicemanager.UnsubscriptionServiceManager;

/**
 * Servlet implementation class UnsubscribeServlet
 */
public class UnsubscribeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UnsubscribeServlet() {
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
		HttpSession session = request.getSession();
		String sessionToken = session.getAttribute("sessionToken").toString();
		UnsubscriptionServiceManager usm = new UnsubscriptionServiceManager();
		jsonResponse = usm.getUnSubscription(sessionToken);
		System.out.println(jsonResponse.toString());
		
		try {
			String code = jsonResponse.getString("code").toString();
			if(code.equals("200")){
				jsonSubscriptionResponse = sssm.getSubscriptionFlag(sessionToken);
				System.out.println(""+jsonSubscriptionResponse.toString());
				subscriptionCode = (String)jsonSubscriptionResponse.getString("code");
				session.setAttribute("subscriptionCode", subscriptionCode);
				response.sendRedirect("jsps/pages-success-unsubscription.jsp");
				
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

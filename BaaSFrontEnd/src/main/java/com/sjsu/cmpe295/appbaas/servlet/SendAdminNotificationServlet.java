package com.sjsu.cmpe295.appbaas.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;

import com.sjsu.cmpe295.appbaas.servicemanager.NotificationAdminServiceManager;
import com.sjsu.cmpe295.appbaas.servicemanager.NotificationServiceManager;

/**
 * Servlet implementation class SendAdminNotificationServlet
 */
public class SendAdminNotificationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendAdminNotificationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub	
		
		JSONObject jsonResponse = null;
		String notificationText = (String) request.getParameter("notificationText");
		System.out.println("notificationText");
		HttpSession session = request.getSession();
		String sessionToken = (String) session.getAttribute("sessionToken");
		String appKey = (String) session.getAttribute("appKey");
		
		NotificationAdminServiceManager nasm = new NotificationAdminServiceManager();
		jsonResponse = nasm.sendNotification(sessionToken, notificationText);
		System.out.println("this is response "+jsonResponse.toString());
		try {
			String code = jsonResponse.getString("code");
			if(code.equals("200")){
				
				response.sendRedirect("jsps/pages-success-notification.jsp");
				
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

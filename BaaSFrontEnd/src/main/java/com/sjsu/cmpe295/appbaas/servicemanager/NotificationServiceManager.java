package com.sjsu.cmpe295.appbaas.servicemanager;

import org.json.JSONException;
import org.json.JSONObject;

import com.demo.app.model.AppBaasClient;

public class NotificationServiceManager {

	
	JSONObject jsonResponse = null;
	JSONObject jsonRequest = new JSONObject();
	public NotificationServiceManager(){
		
	}
	
	@SuppressWarnings("finally")
	public JSONObject sendNotification(String sessionToken, String appKey, String notificationText){
		
		System.out.println(sessionToken +"   "+ appKey);
		
		AppBaasClient appClient = new AppBaasClient();
		
		try {					
			jsonRequest.put("notification", notificationText);
			appClient.HttpInit("POST","http://54.191.98.11:8080/AppBaasServiceFramework/services/rest/AlertManager/sendNotificationToAllUsers");
			appClient.addHeader("sessionToken",sessionToken);
			appClient.addHeader("applicationKey",appKey);
			System.out.println(jsonRequest.toString());
			jsonResponse = appClient.execute(jsonRequest.toString());
			System.out.println(jsonResponse.toString());
			return jsonResponse;
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			
			return jsonResponse;
		}
		
		
	
		
	}

}

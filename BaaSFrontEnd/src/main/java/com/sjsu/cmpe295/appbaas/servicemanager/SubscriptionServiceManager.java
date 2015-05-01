package com.sjsu.cmpe295.appbaas.servicemanager;

import org.json.JSONObject;

import com.demo.app.model.AppBaasClient;

public class SubscriptionServiceManager {
	
	JSONObject jsonResponse = null;
	
	public SubscriptionServiceManager(){
		
	}
	
	public JSONObject getSubscription(String sessionToken, String applicationKey){
		
		AppBaasClient appClient = new AppBaasClient();
		appClient.HttpInit("POST","http://54.191.98.11:8080/AppBaasServiceFramework/services/rest/AlertManager/subscribeAlerts");
		appClient.addHeader("sessionToken",sessionToken);
		appClient.addHeader("applicationKey", "FrameworkApp1430460991054News");
		jsonResponse = appClient.execute();
		
		return jsonResponse;
		
	}

}

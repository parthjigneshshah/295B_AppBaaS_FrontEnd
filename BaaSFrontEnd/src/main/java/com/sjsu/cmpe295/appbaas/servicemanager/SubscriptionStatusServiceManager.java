package com.sjsu.cmpe295.appbaas.servicemanager;

import org.json.JSONObject;

import com.demo.app.model.AppBaasClient;

public class SubscriptionStatusServiceManager {
	
	JSONObject jsonResponse = null;
	
	public SubscriptionStatusServiceManager(){
		
	}
	
	public JSONObject getSubscriptionFlag(String sessionToken){
		
		AppBaasClient appClient = new AppBaasClient();
		appClient.HttpInit("POST","http://54.191.98.11:8080/AppBaasServiceFramework/services/rest/AlertManager/checkSubscription");
		appClient.addHeader("sessionToken",sessionToken);
		appClient.addHeader("applicationKey", "FrameworkApp1430460991054News");
		jsonResponse = appClient.execute();
		
		return jsonResponse;
		
	}

}

package com.sjsu.cmpe295.appbaas.servicemanager;

import org.json.JSONException;
import org.json.JSONObject;

import com.demo.app.model.AppBaasClient;

public class UnsubscriptionServiceManager {
	
	JSONObject jsonResponse = null;
	
	
		
		public JSONObject getUnSubscription(String sessionToken){
			
			AppBaasClient appClient = new AppBaasClient();
			appClient.HttpInit("PUT","http://54.191.98.11:8080/AppBaasServiceFramework/services/rest/AlertManager/unsubscribeNotifications");
			appClient.addHeader("sessionToken",sessionToken);
			appClient.addHeader("applicationKey", "FrameworkApp1430460991054News");
			jsonResponse = appClient.execute();
			
			
			
			
			return jsonResponse;
			
		}
	}



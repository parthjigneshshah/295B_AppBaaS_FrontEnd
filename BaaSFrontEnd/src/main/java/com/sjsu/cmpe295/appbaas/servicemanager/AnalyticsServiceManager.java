package com.sjsu.cmpe295.appbaas.servicemanager;

import org.json.JSONObject;

import com.demo.app.model.AppBaasClient;

public class AnalyticsServiceManager {
	
	JSONObject jsonResponse = null;
	
	public AnalyticsServiceManager(){
		
		
	}
	
	public JSONObject getAnalytics(){
		
		AppBaasClient appClient = new AppBaasClient();
		
		appClient.HttpInit("GET","http://54.191.98.11:8080/AppBaasServiceFramework/services/rest/AnalyticsManager/getDevelopersCount");
		jsonResponse = appClient.execute();
		return jsonResponse;
		
	}

}

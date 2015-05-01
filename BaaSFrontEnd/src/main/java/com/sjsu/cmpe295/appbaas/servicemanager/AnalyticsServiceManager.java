package com.sjsu.cmpe295.appbaas.servicemanager;

import org.json.JSONObject;

import com.demo.app.model.AppBaasClient;

public class AnalyticsServiceManager {
	
	JSONObject jsonResponseDevCount = null;
	JSONObject jsonResponseAppTypeCount = null;
	
	
	public AnalyticsServiceManager(){
		
		
	}
	
	public JSONObject getAnalytics(){
		
		AppBaasClient appClient = new AppBaasClient();
		
		appClient.HttpInit("GET","http://54.191.98.11:8080/AppBaasServiceFramework/services/rest/AnalyticsManager/getDevelopersCount");
		jsonResponseDevCount = appClient.execute();
		return jsonResponseDevCount;
		
	}
	
	public JSONObject getAppAnalytics()
	{
		AppBaasClient appClient = new AppBaasClient();
		appClient.HttpInit("GET", "http://54.191.98.11:8080/AppBaasServiceFramework/services/rest/AnalyticsManager/getApplicationTypesCount");
		jsonResponseAppTypeCount = appClient.execute();
		return 	jsonResponseAppTypeCount;
	}

}

package com.sjsu.cmpe295.appbaas.servicemanager;

import org.json.JSONObject;

import com.demo.app.model.AppBaasClient;

public class GetApplicationServiceManager {
	
	JSONObject jsonResponse = null;
	
	public GetApplicationServiceManager(){}
	
	public JSONObject getAllApplications(String sessionToken){
		
		AppBaasClient appClient = new AppBaasClient();
		appClient.HttpInit("GET","http://54.191.98.11:8080/AppBaasServiceFramework/services/rest/AppManager/getAllApps");
		appClient.addHeader("sessionToken",sessionToken);
		jsonResponse = appClient.execute();
		
		return jsonResponse;
		
	}

}

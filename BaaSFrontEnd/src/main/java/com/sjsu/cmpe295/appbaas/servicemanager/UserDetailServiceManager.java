package com.sjsu.cmpe295.appbaas.servicemanager;

import org.json.JSONObject;

import com.demo.app.model.AppBaasClient;

public class UserDetailServiceManager {
	
	public UserDetailServiceManager(){
		
	}
	
	JSONObject jsonResponse = null;
	
	
	public JSONObject getUserDetail(String sessionToken){
		
		
		AppBaasClient appClient = new AppBaasClient();
		appClient.HttpInit("GET","http://54.191.98.11:8080/AppBaasServiceFramework/services/rest/UserManager/getUserDetailsById");
		appClient.addHeader("sessionToken",sessionToken);
		appClient.addHeader("applicationKey", "FrameworkApp1430460991054News");
		jsonResponse = appClient.execute();
		
		return jsonResponse;
		
		 
		
		
	}

}

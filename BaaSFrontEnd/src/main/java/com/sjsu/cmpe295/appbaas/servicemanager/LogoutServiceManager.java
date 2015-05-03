package com.sjsu.cmpe295.appbaas.servicemanager;

import org.json.JSONObject;

import com.demo.app.model.AppBaasClient;

public class LogoutServiceManager {
	
	
	JSONObject jsonResponse = null;
	
	public LogoutServiceManager(){
		
	}
	
	public JSONObject logout (String sessionToken){
		
		System.out.println("into logout");
		
		AppBaasClient appClient = new AppBaasClient();
		appClient.HttpInit("POST","http://54.191.98.11:8080/AppBaasServiceFramework/services/rest/UserManager/logout");
		appClient.addHeader("sessionToken",sessionToken);
		appClient.addHeader("applicationKey", "FrameworkApp1430460991054News");
		jsonResponse = appClient.execute();
		
		System.out.println("json response is:"+jsonResponse);
		
		return jsonResponse;
		
		
	}

}

package com.sjsu.cmpe295.appbaas.servicemanager;


import org.json.JSONException;
import org.json.JSONObject;

import com.demo.app.model.AppBaasClient;

public class AppCreateServiceManager {

	JSONObject jsonResponse=null;
	JSONObject jsonRequest= new JSONObject();

	public AppCreateServiceManager()
	{
		
	}
	
	@SuppressWarnings("finally")
	public JSONObject createApplication(String appName,String appDesc,String[] services,String appVersion,String appType){
	
		try {
				jsonRequest.put("appName", appName);
				jsonRequest.put("appDesc", appDesc);
				jsonRequest.put("services",services);
				jsonRequest.put("appVersion", appVersion);
				jsonRequest.put("appType", appType);
			AppBaasClient appClient= new AppBaasClient();
			appClient.HttpInit("POST", " http://54.191.98.11:8080/AppBaasServiceFramework/services/rest/AppManager/createApp");
			jsonResponse=appClient.execute(jsonRequest.toString());
			
			return jsonResponse;
			
			
		} catch (JSONException e) {
			System.out.println("In the catch block of AppCreateServiceManager");
			e.printStackTrace();
		}
		
		finally{
			return jsonResponse;
		}
		
}
}
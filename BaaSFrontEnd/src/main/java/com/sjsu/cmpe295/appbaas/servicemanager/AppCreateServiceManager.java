package com.sjsu.cmpe295.appbaas.servicemanager;

import javax.servlet.http.HttpSession;

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
	public JSONObject createApp(String appName, String appDesc, String AppVer, String appType, String serviceName[], String token){
		
		int serviceNo = serviceName.length;
		System.out.println(serviceNo);
		JSONObject[] services = new JSONObject[serviceNo];
		System.out.println(services.length);
		
		try{
		
		System.out.println("in the ascm object");
			
		jsonRequest.put("appName", appName);
		jsonRequest.put("appVersion", AppVer);
		jsonRequest.put("appType", appType);
		jsonRequest.put("appDesc", appDesc);
		
		for (int i = 0; i < serviceNo; i++){
			
				System.out.println("in for");
				String serviceN = serviceName[i];
				System.out.println(serviceN);
				services[i] = new JSONObject();
				services[i].put("service_name", serviceN);		
		}
		jsonRequest.put("services", services);

		System.out.println(jsonRequest.toString());
		
		AppBaasClient appClient = new AppBaasClient();
		appClient.HttpInit("POST","http://54.191.98.11:8080/AppBaasServiceFramework/services/rest/AppManager/createApp");
		appClient.addHeader("sessionToken",token);
		jsonResponse = appClient.execute(jsonRequest.toString());
		
		System.out.println(jsonResponse.toString());
		
		return jsonResponse;
				
		}
		catch(JSONException e){
			
			e.getStackTrace();
			
		}
		finally{
			return jsonResponse;
		}
	}
		
}

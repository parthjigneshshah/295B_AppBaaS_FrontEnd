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
	
	public JSONObject createApp(String appName, String appDesc, String AppVer, String appType, String serviceName[]){
		
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
		int i;
		for (i = 0; i < serviceNo; i++){
			
				System.out.println("in for");
				String serviceN = serviceName[i];
				System.out.println(serviceN);
				services[i].put("service_name", serviceN);		
		}
		jsonRequest.put("services", services);
		
		
		System.out.println(jsonRequest.toString());
		
		System.out.println("after printing json object");
		
		return jsonRequest;
		}
		catch(JSONException e){
			
			e.getStackTrace();
			
		}
		finally{
			return jsonRequest;
		}
	}
		
}

package com.sjsu.cmpe295.appbaas.servicemanager;

import org.json.JSONObject;

import com.demo.app.model.AppBaasClient;

public class GetTableDetailsServiceManager {

	JSONObject jsonResponse = null; 
	
	public GetTableDetailsServiceManager(){
		
	}
	
	public JSONObject getTableDetails(String sessionToken, String appKey, String tableName){
		
		 
		AppBaasClient appClient = new AppBaasClient();
		appClient.HttpInit("GET","http://54.191.98.11:8080/AppBaasServiceFramework/services/rest/ObjManager/getTableDetails/"+tableName);
		appClient.addHeader("sessionToken",sessionToken);
		appClient.addHeader("applicationKey",appKey);
		jsonResponse = appClient.execute();
		return jsonResponse;
		
	}
	
}

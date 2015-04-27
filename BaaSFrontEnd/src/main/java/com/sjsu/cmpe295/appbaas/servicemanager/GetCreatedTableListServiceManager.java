package com.sjsu.cmpe295.appbaas.servicemanager;

import org.json.JSONObject;

import com.demo.app.model.AppBaasClient;

public class GetCreatedTableListServiceManager {
	
	
	JSONObject jsonResponse = null;
	
	public GetCreatedTableListServiceManager(){
		
	}
	
	public JSONObject getCreatedTableList(String sessionToken, String appKey){
		
		AppBaasClient appClient = new AppBaasClient();
		appClient.HttpInit("GET","http://54.191.98.11:8080/AppBaasServiceFramework/services/rest/ObjManager/getAllTables");
		appClient.addHeader("sessionToken",sessionToken);
		appClient.addHeader("applicationKey",appKey);
		jsonResponse = appClient.execute();
		
		return jsonResponse;
		
	}

}

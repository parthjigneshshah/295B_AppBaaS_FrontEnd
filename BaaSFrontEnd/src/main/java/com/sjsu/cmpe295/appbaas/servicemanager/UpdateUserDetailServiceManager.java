package com.sjsu.cmpe295.appbaas.servicemanager;

import org.json.JSONException;
import org.json.JSONObject;

import com.demo.app.model.AppBaasClient;

public class UpdateUserDetailServiceManager {
	
	JSONObject jsonResponse = null;
	JSONObject jsonRequest = new JSONObject();
	
	public UpdateUserDetailServiceManager(){
		
	}
	
	@SuppressWarnings("finally")
	public JSONObject updateUserDetail(String password, String sessionToken){
		
		try{
			
			
			
		jsonRequest.put("password", password);
		AppBaasClient appClient = new AppBaasClient();
		appClient.HttpInit("PUT","http://54.191.98.11:8080/AppBaasServiceFramework/services/rest/UserManager/updateUser");
		appClient.addHeader("sessionToken",sessionToken);
		appClient.addHeader("applicationKey", "FrameworkApp1430460991054News");
		jsonResponse = appClient.execute(jsonRequest.toString());
		System.out.println("jsonResponse is: "+jsonResponse.toString());
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

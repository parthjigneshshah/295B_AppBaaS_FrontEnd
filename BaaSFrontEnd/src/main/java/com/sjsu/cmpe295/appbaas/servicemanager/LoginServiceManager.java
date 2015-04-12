package com.sjsu.cmpe295.appbaas.servicemanager;

import org.json.JSONException;
import org.json.JSONObject;

import com.demo.app.model.AppBaasClient;


/*import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;*/



@SuppressWarnings("unused")
public class LoginServiceManager {
	
	
	JSONObject jsonResponse = null;
	JSONObject jsonRequest = new JSONObject();
	
	public LoginServiceManager()
	{
		
	};
	
	@SuppressWarnings("finally")
	public JSONObject loginUser(String uname, String password){
		
		try{
		
				jsonRequest.put("user_ID", uname);
				jsonRequest.put("password", password);
			
			AppBaasClient appClient = new AppBaasClient();
			appClient.HttpInit("POST", "http://54.191.98.11:8080/AppBaasServiceFramework/services/rest/UserManager/login");
			jsonResponse = appClient.execute(jsonRequest.toString());
			
			return jsonResponse;
		
			
		
		}
		catch(Exception e){
			System.out.println("in catch block");
			e.printStackTrace();
		}
		
		finally{
			return jsonResponse;
		}
		
		
		
	}


}

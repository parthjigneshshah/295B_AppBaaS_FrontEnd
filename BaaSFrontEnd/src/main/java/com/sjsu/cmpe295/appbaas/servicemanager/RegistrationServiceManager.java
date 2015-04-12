package com.sjsu.cmpe295.appbaas.servicemanager;

import org.json.JSONException;
import org.json.JSONObject;

import com.demo.app.model.AppBaasClient;


/*import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;*/



@SuppressWarnings("unused")
public class RegistrationServiceManager {
	
	
	JSONObject jsonResponse = null;
	JSONObject jsonRequest = new JSONObject();
	
	public RegistrationServiceManager()
	{
		
	};
	
	@SuppressWarnings("finally")
	public JSONObject RegisterUser(String fname, String lName, String email, String password){
		
		try{
		
				jsonRequest.put("email", email);
				jsonRequest.put("first_name", fname);
				jsonRequest.put("last_name",lName);
				jsonRequest.put("password", password);
			
			AppBaasClient appClient = new AppBaasClient();
			appClient.HttpInit("POST", "http://54.191.98.11:8080/AppBaasServiceFramework/services/rest/UserManager/registerUser");
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

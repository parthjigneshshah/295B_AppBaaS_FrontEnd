package com.sjsu.cmpe295.appbaas.servicemanager;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.demo.app.model.AppBaasClient;

public class CreateTableServiceManager {
	
	
	JSONObject jsonRequest = new JSONObject();
	JSONObject jsonResponse = null;
	/*
		1) sessionToken 
        2) applicationKey

Request Body:


{
    "tableName": "FirstTabTrial",
    "columns": [
        {
            "pkFlag": "true",
            "columnType": "INT",
            "columnName": "ID"
        },
        {
            "columnType": "VARCHAR(30)",
            "columnName": "FN"
        }
    ]
}
	 * */
	public CreateTableServiceManager(){
		
	}
	
	public JSONObject createTable(String appKey, String sessionToken, String colName[], String colType[], int pkPointer, String tableName){
		
			int counter = colName.length;
			try {
				jsonRequest.put("tableName", tableName);
				JSONObject jsonColumnArray[] = new JSONObject[counter];
				
				for(int i = 0; i < counter; i++){
				 
					jsonColumnArray[i] = new JSONObject();
					if(pkPointer == i+1){
						jsonColumnArray[i].put("pkFlag", "true");
					}
					jsonColumnArray[i].put("columnType", colType[i]);
					jsonColumnArray[i].put("columnName", colName[i]);
					
				}
				
				
				
				jsonRequest.put("columns", jsonColumnArray);
				System.out.println(jsonRequest.toString());
				System.out.println("sessiontoken: "+sessionToken);
				System.out.println("appKey: "+appKey);
				AppBaasClient appClient = new AppBaasClient();
				appClient.HttpInit("POST","http://54.191.98.11:8080/AppBaasServiceFramework/services/rest/ObjManager/createTable");
				
				appClient.addHeader("sessionToken",sessionToken);
				appClient.addHeader("applicationKey",appKey);
				jsonResponse = appClient.execute(jsonRequest.toString());
				
				
				
				System.out.println(jsonResponse.toString());
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		
		return jsonResponse;

	}

}

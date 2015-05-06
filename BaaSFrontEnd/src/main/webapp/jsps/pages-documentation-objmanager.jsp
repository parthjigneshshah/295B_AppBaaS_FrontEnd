<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>        
        <%@include file = "metaAndCss.jsp" %>  
    </head>
    <body>
        <!-- START PAGE CONTAINER -->
        <div class="page-container">
            <!-- START PAGE SIDEBAR -->
               <%@ include file= "documentationSidebar.jsp" %>
            <!-- END PAGE SIDEBAR -->
            <!-- PAGE CONTENT -->
            <div class="page-content">
                
               <%@ include file= "header.jsp" %>
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
				       <div class="row">
                        <div class="col-md-12">
                            
                            
                                      
                                                            
                                <div class="panel panel-default tabs">                            
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li class="active"><a href="#tab-first" role="tab" data-toggle="tab">Create Table</a></li>
                                        <li><a href="#tab-second" role="tab" data-toggle="tab">Get All Tables</a></li>
                                        <li><a href="#tab-third" role="tab" data-toggle="tab">GetTable Details By Name</a></li>
                                       <li><a href="#tab-fourth" role="tab" data-toggle="tab">Create Row Object</a></li>
                                        
                                        <li><a href="#tab-fifth" role="tab" data-toggle="tab">Update Row Object</a></li>
                                       <li><a href="#tab-sixth" role="tab" data-toggle="tab">Delete Row Object</a></li>
                                    </ul>
                                    <div class="panel-body tab-content" style="font-size: 14px">
                                        <div class="tab-pane active" id="tab-first">
                                        <p>Method Type : POST</p>

										<p>Service : Create Table</p>
										
										<p>API : http://www.appbaaservices.om:8080/AppBaasServiceFramework/services/rest/ObjManager/createTable</p>
										
										<p>Header Parameters : ( sessionToken : appdemo.user@sjsu.edu#1430440615142 )</p>
										<p>Header Parameters:  (applicationKey : appDemoUserApp1430440634776Engineering)</p>
										
										<p>Request Body :</p>
										<p>
										{<br/>
										    "tableName": "appDemoTest",<br/>
										    "columns": [<br/>
										        {<br/>
										            "pkFlag": "true",<br/>
										            "columnType": "INT",<br/>
										            "columnName": "ID"<br/>
										        },<br/>
										        {<br/>
										            "columnType": "VARCHAR(30)",<br/>
										            "columnName": "FN"<br/>
										        }<br/>
										    ]<br/>
										}<br/>
										</p>
										<p>
										Response Body : 
										</p>
										<p>
										{<br/>
										    "code": "200",<br/>
										    "message": "Table Created Successfully."<br/>
										}<br/>
										</p>                                     
																				

                                        </div>
                                        <div class="tab-pane" id="tab-second">
										<p>Method Name : GET</p>

										<p>Service : Get All Tables</p>
										
										<p>API : http://www.appbaaservices.om:8080/AppBaasServiceFramework/services/rest/ObjManager/getAllTables</p>
										
										<p>Header Parameters : ( sessionToken : appdemo.user@sjsu.edu#1430440615142 )(applicationKey : appDemoUserApp1430440634776Engineering)</p>
										
										<p>Response Body :</p>
										<p>
										{<br/>
										    "code": "200",<br/>
										    "message": "Application Tables are found. Total 2 are found.",<br/>
										    "tableNames": [<br/>
										        "appDemoUserApp1430440634776Engineering_appDemoTest",<br/>
										        "appDemoUserApp1430440634776Engineering_users"<br/>
										    ]<br/>
										}<br/>
										</p>
										</div>                                        
                                        <div class="tab-pane" id="tab-third">
										
										<p>Method Type : GET</p>

										<p>Service : GetTable Details By Name</p>
										
										<p>API : http://www.appbaaservices.om:8080/AppBaasServiceFramework/services/rest/ObjManager/getTableDetails/{appDemoTest}</p>
										
										<p>Header Parameters : ( sessionToken : appdemo.user@sjsu.edu#1430440615142 )</p>
										<p>Header Parameters : (applicationKey : appDemoUserApp1430440634776Engineering)</p>
										<p>
										Response Body :
										</p>
										<p>
										{<br/>
										    "code": "200",<br/>
										    "message": "Table Information is fetched Successfully.",<br/>
										    "tableDetails": {<br/>
										        "tableName": "appDemoTest",<br/>
										        "columns": [<br/>
										            {<br/>
										                "columnName": "ID",<br/>
										                "columnType": "int(11)",<br/>
										                "pkFlag": true<br/>
										            },<br/>
										            {<br/>
										                "columnName": "FN",<br/>
										                "columnType": "varchar(30)",<br/>
										                "pkFlag": false<br/>
										            },<br/>
										            {<br/>
										                "columnName": "objectId",<br/>
										                "columnType": "varchar(30)",<br/>
										                "pkFlag": false<br/>
										            }<br/>
										        ],<br/>
										        "rows": [<br/>
										            {<br/>
										                "columnName": "ID",<br/>
										                "value": "1"<br/>
										            },<br/>
										            {<br/>
										                "columnName": "FN",<br/>
										                "value": "Parth"<br/>
										            },<br/>
										            {<br/>
										                "columnName": "objectId",<br/>
										                "value": "3fe59dbb1671d0c4"<br/>
										            }<br/>
										        ]<br/>
										    }<br/>
										}<br/>
										</p>
										
                                        </div>
                                        
                                        <div class="tab-pane" id="tab-fourth">
										
										<p>Method Type: POST</p>

										<p>Service: Create Row Object</p>
										
										<p>API : http://www.appbaaservices.om:8080/AppBaasServiceFramework/services/rest/ObjManager/createRowObject/{appDemoTest}</p>
										
										<p>Header Parameters : ( sessionToken : appdemo.user@sjsu.edu#1430440615142 )</p>
										<p>Header Parameters : (applicationKey : appDemoUserApp1430440634776Engineering)</p>
										<p>
										Request Body :
										</p>
										<p>
										{<br/>
										    "rows": [<br/>
										        {<br/>
										            "columnName": "FN",<br/>
										            "value": "Parth"<br/>
										        }<br/>
										    ]<br/>
										}<br/>
										</p>
										<p>
										Response Body :
										</p>
										<p>
										{<br/>
										    "code": "200",<br/>
										    "message": "Row Object Created Successfully."<br/>
										}
										<p>
										</div>
										 <div class="tab-pane" id="tab-fifth">
										<p>Method Type: PUT</p>

										<p>Service : Update Row Object</p>
										
										<p>API : http://www.appbaaservices.om:8080/AppBaasServiceFramework/services/rest/ObjManager/updateRowObject/{appDemoTest}/{3fe59dbb1671d0c4}</p>
										
										<p>Header Parameters : ( sessionToken : appdemo.user@sjsu.edu#1430440615142 )</p>
										<p>Header Parameters : (applicationKey : appDemoUserApp1430440634776Engineering)</p>
										<p>
										
										Request Body :
										</p>
										<p>
										{<br/>
										    "rows": [<br/>
										        {<br/>
										            "columnName": "FN",<br/>
										            "value": "ParthJigneshKumar"<br/>
										        }<br/>
										    ]<br/>
										}<br/>
										</p>
										<p>
										
										Response Body :
										</p>
										<p>
										{<br/>
										    "code": "200",<br/>
										    "message": "Update RowObject is performed Successfully."<br/>
										}<br/>
										</p>
										</div>
                                        
                                        <div class="tab-pane" id="tab-sixth">
										<p>Method Type: DELETE</p>

									 	<p>Service : Delete Row Object</p>
										
										<p>API : http://www.appbaaservices.om:8080/AppBaasServiceFramework/services/rest/ObjManager/deleteRowObject/{appDemoTest}/{3fe59dbb1671d0c4}</p>
										
										<p>Header Parameters : ( sessionToken : appdemo.user@sjsu.edu#1430440615142 )</p>
										<p>Header Parameters : (applicationKey : appDemoUserApp1430440634776Engineering)</p>
										<p>
										Response Body :
										</p>
										<p>
										{<br/>
										    "code": "200",<br/>
										    "message": "Delete RowObject is performed Successfully."<br/>
										}<br/>
										</p>
										</div>
                                         
                                        
                                        </div>
                                    
                                </div>                                
                            
                          
                        </div>
                    </div>

                </div>
                <!-- END PAGE CONTENT WRAPPER -->                
            </div>            
            <!-- END PAGE CONTENT -->
        </div>
        <!-- END PAGE CONTAINER -->

       <%@ include file = "MessageBoxAndPreloads.jsp" %>           
       <%@ include file = "scripts.jsp" %>     
    </body>
</html>



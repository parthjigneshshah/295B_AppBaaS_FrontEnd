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
					            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3 class="push-down-0">FAQ</h3>
                                </div>
                                <div class="panel-body faq">
                                    
                                    <div class="faq-item">
                                        <div class="faq-title"><span class="fa fa-angle-down"></span>Create Application :</div>
                                        <div class="faq-text">
                                          <!--  <h5>Aliquam at ipsum sapien</h5> -->
                                          
                                            <p>POST</p>
											<br/>
											<p>API : http://www.appbaaservices.om:8080/AppBaasServiceFramework/services/rest/AppManager/createApp</p>
											<br/>
											<p>Parameters : ( sessionToken : appdemo.user@sjsu.edu#1430440615142 )</p>
											<br/>
											<p>Request Body :</p>
											
											<p>
											
											{<br/>
    											"appName": "appDemoUserApp",<br/>
    											"appDesc": "appDemoUserAppDesc",<br/>
    											"services": [<br/>
        										{<br/>
            									"service_name": "UserManager"<br/>
        										},<br/>
        										{<br/>
            									"service_name": "AppManager"<br/>
        										}<br/>
    											],<br/>
    											"appVersion": "1",<br/>
    											"appType": "Engineering"<br/>
												}<br/>

											</p>
											<p>Response Body :</p>
											
											<p>
											
											{<br/>
    										"appKey": "appDemoUserApp1430440634776Engineering",<br/>
    										"responseObject": {<br/>
        									"code": "200",<br/>
        									"message": "Application Created Successfully."<br/>
    										}<br/>
											}
											</p>
											
                                        </div>
                                        
                                        
                                    </div>
                                      <div class="faq-item">
                                        <div class="faq-title"><span class="fa fa-angle-down"></span>Get ApplicationDetails By AppKey:</div>
                                        <div class="faq-text" >
                                          
                                          
                                            <p>GET</p>
											
											<p>API : http://www.appbaaservices.om:8080/AppBaasServiceFramework/services/rest/AppManager/getApplicationDetails/{appBaasKey}</p>
											<p>Path Param : (applicationKey : appDemoUserApp1430440634776Engineering)</p>
											<p>Parameters : ( sessionToken : appdemo.user@sjsu.edu#1430440615142 ) </p>
											
											
											<p>Response Body :</p>
											
											<p>
											
											Response Body :</p>
											<p>
											{<br/>
    										"code": "200",<br/>
    										"message": "Application Details Fetched Successfully.",<br/>
    										"appInfo": {<br/>
        									"appName": "appDemoUserApp",<br/>
        									"appVersion": "1",<br/>
        									"appType": "Engineering",<br/>
        									"appDesc": "appDemoUserAppDesc",<br/>
										        "services": [<br/>
            									{<br/>
                								"service_id": "1",<br/>
                								"service_name": "UserManager"<br/>
            									},<br/>
            									{<br/>		
                								"service_id": "2",<br/>
                								"service_name": "AppManager"<br/>
            									}<br/>
        										],<br/>
        										"appKey": "appDemoUserApp1430440634776Engineering"<br/>
    											}<br/>
												}<br/>
											</p>
                                        </div>
                                        
         					         </div>
                                
                                      <div class="faq-item">
                                        <div class="faq-title"><span class="fa fa-angle-down"></span>Get All Apps:</div>
                                        <div class="faq-text">
                                        	<p>GET</p>
                                            <p>
											API : http://www.appbaaservices.om:8080/AppBaasServiceFramework/services/rest/AppManager/getAllApps</p>
											<p>
											Parameters : ( sessionToken : appdemo.user@sjsu.edu#1430440615142 )</p>
											<p>
											Response Body :<br/> 

											<p>
												{<br/>
    											"code": "200",<br/>
    											"message": "Application Details are fetched.",<br/>
    											"applications": [<br/>
        										{<br/>
            									"appName": "appDemoUserApp",<br/>
            									"appVersion": "1",<br/>
            									"appType": "Engineering",<br/>
            									"appDesc": "appDemoUserAppDesc",<br/>
            									"services": [<br/>
                								{<br/>
                    								"service_id": "1",<br/>
                    								"service_name": "UserManager"<br/>
                								},<br/>
                								{<br/>
                    							"service_id": "2",<br/>
                    							"service_name": "AppManager"<br/>
                								}<br/>
            									],<br/>
            									"appKey": "appDemoUserApp1430440634776Engineering"<br/>
        										}<br/>
    											]<br/>	
												}<br/>
</p>
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

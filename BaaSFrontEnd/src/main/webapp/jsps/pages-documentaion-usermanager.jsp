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
                                        <li class="active"><a href="#tab-first" role="tab" data-toggle="tab">Register User:</a></li>
                                        <li><a href="#tab-second" role="tab" data-toggle="tab">Login</a></li>
                                        <li><a href="#tab-third" role="tab" data-toggle="tab">Get User Details By ID</a></li>
                                       <li><a href="#tab-fourth" role="tab" data-toggle="tab">Logout</a></li>
                                    </ul>
                                    <div class="panel-body tab-content" style="font-size: 14px">
                                        <div class="tab-pane active" id="tab-first">
										<p>Method Type: POST</p>
										
										<p>Service: Register</p>
										
										<p>API : http://www.appbaaservices.om:8080/AppBaasServiceFramework/services/rest/UserManager/registerUser</p>
										
										<p>Request Body :</p>
										<p>{<br/>
 										   		"email": "appdemo.user@sjsu.edu",<br/>
    									   		"first_name": "appDemo",<br/>
    											"last_name": "User",<br/>
    											"password": "appdemopass"<br/>
										}</p>
										<p>Response Body :</p>
										<p>
										{<br/>
										    "code": "200",<br/>
										    "message": "User Registered Successfully."<br/>
										}<br/>
										</p>

                                        </div>
                                        <div class="tab-pane" id="tab-second">
										<p>Method Type: POST</p>
										
										<p>Service: Login</p>
										
										<p>API : http://www.appbaaservices.om:8080/AppBaasServiceFramework/services/rest/UserManager/login</p>
										
										<p>Request Body :</p>
										<p>
										{<br/>
										    "user_ID": "appdemo.user@sjsu.edu",<br/>
										    "password": "appdemopass"<br/>
										}<br/>
										</p>
										<p>
										Response Body :
										</p>
										<p>
										{<br/>
										    "sessionToken": "appdemo.user@sjsu.edu#1430440352336",<br/>
										    "responseObject": {<br/>
										        "code": "200",<br/>
										        "message": "Login Successful."<br/>
										    }<br/>
										}  
										</p>   
                                        </div>                                        
                                        <div class="tab-pane" id="tab-third">
										<p>Method Type: GET</p>
										
										<p>Service : Get User Details By ID</p>
										
										<p>API : http://www.appbaaservices.om:8080/AppBaasServiceFramework/services/rest/UserManager/getUserDetailsById</p>
										
										<p>Header Parameters : ( sessionToken : appdemo.user@sjsu.edu#1430440352336 )</p>
										
										<p>
										Response Body :
										</p>
										
										<p>
										{<br/>
										    "code": "200",<br/>
										    "message": "User Details Fetched Successfully.",<br/>
										    "user": {<br/>
										        "email": "appdemo.user@sjsu.edu",<br/>
										        "password": "appdemopass",<br/>
										        "first_name": "appDemo",<br/>
										        "last_name": "User"<br/>
										    }<br/>
										}
										</p>
                                        </div>
                                        
                                        <div class="tab-pane" id="tab-fourth">
											<p>Method Type : POST</p>

											<p> Service: Logout </p>
											
											<p>API : http://www.appbaaservices.om:8080/AppBaasServiceFramework/services/rest/UserManager/logout</p>
											
											<p> Header Parameters : ( sessionToken : appdemo.user@sjsu.edu#1430440352336 )</p>
											<p>
											Response Body :<br/> 
											</p>
											<p>
											{<br/>
											    "code": "200",<br/>
											    "message": "Logged Out Successfully."<br/>
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



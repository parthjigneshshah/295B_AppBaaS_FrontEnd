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
                                        <div class="faq-title"><span class="fa fa-angle-down"></span>Register User:</div>
                                        <div class="faq-text">
                                          <!--  <h5>Aliquam at ipsum sapien</h5> -->
                                          
                                            <p>POST</p>
											
											<p>API : http://www.appbaaservices.om:8080/AppBaasServiceFramework/services/rest/UserManager/registerUser</p>
											
											<p>Header Param : (applicationKey : appDemoUserApp1430440634776Engineering)</p>
											
											<p>Request Body :</p>
											
											<p>
											
											{<br/>
    											"email": "appdemo.user@sjsu.edu",<br/>
    											"first_name": "appDemo",<br/>
    											"last_name": "User",<br/>
    											"password": "appdemopass"<br/>
												}
											
											</p>
											<p>Response Body :</p>
											
											<p>
											
											{<br/>
 												   "code": "200",<br/>
    												"message": "User Registered Successfully."<br/>
											}
											</p>
											
                                        </div>
                                        
                                        
                                    </div>
                                      <div class="faq-item">
                                        <div class="faq-title"><span class="fa fa-angle-down"></span>Login:</div>
                                        <div class="faq-text">
                                          
                                          
                                            <p>POST</p>
											
											<p>API : http://www.appbaaservices.om:8080/AppBaasServiceFramework/services/rest/UserManager/login</p>
											<p>Header Param : (applicationKey : appDemoUserApp1430440634776Engineering)</p>
											
											<p>Request Body :</p>
											
											<p>
											
											{<br/>
    											"user_ID": "appdemo.user@sjsu.edu",<br/>
    											"password": "appdemopass"<br/>
												}
											
											</p>
											<p>Response Body :</p>
											
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
                                        
         					         </div>
                                      <div class="faq-item">
                                        <div class="faq-title"><span class="fa fa-angle-down"></span>Get User Details By ID:</div>
                                        <div class="faq-text">
                                            <p>GET</p>
											
											<p>API : http://www.appbaaservices.om:8080/AppBaasServiceFramework/services/rest/UserManager/getUserDetailsById</p>
											<p>Header Param : (applicationKey : appDemoUserApp1430440634776Engineering)</p>
											<p>Parameters : ( sessionToken : appdemo.user@sjsu.edu#1430440352336 )</p>
											
											
											<p>Response Body :</p>
											
											<p>
											
											{<br/>
   												"code": "200",<br/>
    											"message": "User Details Fetched Successfully.",<br/>
    											"user": <br/>
    											{<br/>
        											"email": "appdemo.user@sjsu.edu",<br/>
        											"password": "appdemopass",<br/>
        											"first_name": "appDemo",<br/>
        											"last_name": "User"<br/>
    											}<br/>
											}<br/>
											</p>
                                        </div>
                                        
                                        
                                        
                                        
                                        </div>
                                      <div class="faq-item">
                                        <div class="faq-title"><span class="fa fa-angle-down"></span>Logout :</div>
                                        <div class="faq-text">
                                        	<p>POST</p>
                                            <p>
											API : http://www.appbaaservices.om:8080/AppBaasServiceFramework/services/rest/UserManager/logout</p>
											<p>Header Param : (applicationKey : appDemoUserApp1430440634776Engineering)</p>
											<p>
											Parameters : ( sessionToken : appdemo.user@sjsu.edu#1430440352336 )</p>
											
											<p>
											Response Body :<br/> 

											{<br/>
    										"code": "200",<br/>
    										"message": "Logged Out Successfully."<br/>
											}</p>
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

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
                                        <li class="active"><a href="#tab-first" role="tab" data-toggle="tab">Subscribe Alerts</a></li>
                                        <li><a href="#tab-second" role="tab" data-toggle="tab">Send Notification to All Users</a></li>
                                        <li><a href="#tab-third" role="tab" data-toggle="tab">Unsubscribe Alerts</a></li>
                                       
                                    </ul>
                                    <div class="panel-body tab-content" style="font-size: 14px">
                                        <div class="tab-pane active" id="tab-first">
                                           
                                           <p>Method Type : POST</p>
                                           <p>Header Parameter : ( sessionToken : appdemo.user@sjsu.edu#1430440615142 )</p>
                                           <p>Header Parameter : (applicationKey : appDemoUserApp1430440634776Engineering)</p>
                                           <p>API: http://www.appbaaservices.om:8080/AppBaasServiceFramework/services/rest/AlertManager/subscribeAlerts</p> 
                                            
                                        </div>
                                        <div class="tab-pane" id="tab-second">
										<p>Method Type: POST</p>
                                        <p>header Parameter : ( sessionToken : appdemo.user@sjsu.edu#1430440615142 )</p>
                                        <p>Header Parameter : (applicationKey : appDemoUserApp1430440634776Engineering)</p>
										<p>API : http://www.appbaaservices.om:8080/AppBaasServiceFramework/services/rest/AlertManager/sendNotificationToAllUsers</p>     
                                        </div>                                        
                                        <div class="tab-pane" id="tab-third">
                                        <p>Method Type: PUT</p>
                                        <p>header Parameter : ( sessionToken : appdemo.user@sjsu.edu#1430440615142 )</p>
                                        <p>Header Parameter : (applicationKey : appDemoUserApp1430440634776Engineering)</p>
										<p>API : http://www.appbaaservices.om:8080/AppBaasServiceFramework/services/rest/AlertManager/unsubscribeNotifications</p>
										
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

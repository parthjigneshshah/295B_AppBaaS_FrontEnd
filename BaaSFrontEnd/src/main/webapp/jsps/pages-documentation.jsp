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
                                        <li class="active"><a href="#tab-first" role="tab" data-toggle="tab">SDK CLient Guide</a></li>
                                        
                                    </ul>
                                    <div class="panel-body tab-content" style="font-size: 14px">
                                        <div class="tab-pane active" id="tab-first">
                                          <p>SDK CLIENT:</p>


											<p>GET</p>
											<br/>
											<p>
											AppBaasClient appClient = new AppBaasClient();<br/>
											appClient.HttpInit("GET", "http://www.appbaaservices.om:8080/AppBaasServiceFramework/services/rest/UserManager/getUserDetailsById");<br/>
											appClient.addHeader("sessionToken", "demoEc4.test@sjsu.edu#1429396233104");<br/>
											appClient.addHeader("applicationKey", "DemoEC4App21429396253012Engineering");<br/>
											</p>
											<p>
											JSONObject jsonResponse = appClient.execute();
											</p>
											<br/>
											<p>
											POST
											</p>
											<p>
											AppBaasClient appClient = new AppBaasClient();<br/>
											appClient.HttpInit("POST", "http://www.appbaaservices.om:8080/AppBaasServiceFramework/services/rest/UserManager/registerUser");<br/>
											appClient.addHeader("sessionToken", "demoEc4.test@sjsu.edu#1429396233104");<br/>
											appClient.addHeader("applicationKey", "DemoEC4App21429396253012Engineering");<br/>
											<p>
											<p>
											JSONObject jsonBody = new JSONObject();<br/>
											jsonBody.put("example1","example1");<br/>
											</p>
											<p>
											JSONObject jsonResponse = appClient.execute(jsonBody.toString());
											</p>
											<br/>
											<p>
											PUT (Includes Path Param in URL )
											<p>
											<p>
											AppBaasClient appClient = new AppBaasClient();<br/>
											appClient.HttpInit("POST", "http://www.appbaaservices.om:8080/AppBaasServiceFramework/services/rest/ObjManager/updateRowObject/{appDemoTest}/{3fe59dbb1671d0c4}");<br/>
											appClient.addHeader("sessionToken", "demoEc4.test@sjsu.edu#1429396233104");<br/>
											appClient.addHeader("applicationKey", "DemoEC4App21429396253012Engineering");<br/>
											</p>
											<p>
											JSONObject jsonBody = new JSONObject();<br/>
											jsonBody.put("example1","example1");<br/>
											</p>
											<p>
											JSONObject jsonResponse = appClient.execute(jsonBody.toString());
											</p>
											<br/>
											<p>
											DELETE
											</p>
											<p>
											AppBaasClient appClient = new AppBaasClient();<br/>
											appClient.HttpInit("POST", "http://www.appbaaservices.om:8080/AppBaasServiceFramework/services/rest/ObjManager/deleteUser/{userID}");<br/>
											appClient.addHeader("sessionToken", "demoEc4.test@sjsu.edu#1429396233104");<br/>
											appClient.addHeader("applicationKey", "DemoEC4App21429396253012Engineering");<br/>
											</p>
											<p>
											JSONObject jsonResponse = appClient.execute();
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

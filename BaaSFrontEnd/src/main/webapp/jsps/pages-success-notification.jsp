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
               <%@ include file= "sidebar.jsp" %>
            <!-- END PAGE SIDEBAR -->
            <!-- PAGE CONTENT -->
            <div class="page-content">
                
               <%@ include file= "header.jsp" %>
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
				
			 <div class="row">
                        <div class="col-md-12">

                            <div class="error-container">
                                <div class="error-code">Success!!!</div>
                                <div class="error-text">Your Notification has been sent</div>
                                <div class="error-subtext">Your notification has been sent to all subscribers for the application. Go back to notification page to send another application or navigate to your application for more options.</div>
                               <div class="error-actions">                                
                                    <div class="row">
                                        <div class="col-md-6">
                                            <button class="btn btn-info btn-block btn-lg" onClick="document.location.href = 'pages-notification.jsp';">Back to notification page</button>
                                        </div>
                                        <div class="col-md-6">
                                            <button class="btn btn-primary btn-block btn-lg" onClick="document.location.href = '../GetApplicationServlet;'">back to Applications</button>
                                        </div>
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

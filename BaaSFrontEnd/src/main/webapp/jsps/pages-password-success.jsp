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
                                <div class="error-text">Your password has been successfully updated.</div>
                                <div class="error-subtext">You have successfully updated your password. Go to your profile page for more information.</div>
                                <div class="error-actions">                                
                                    <div class="row" align="center">
                                        <div class="col-md-12">
                                            <button class="btn btn-info btn-block btn-lg" onClick="document.location.href = '../UserDetailServlet';">Back to Profile</button>
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

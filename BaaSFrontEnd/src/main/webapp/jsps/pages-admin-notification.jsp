<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "org.json.JSONException" %>
<%@ page import = "org.json.JSONObject" %>
<%@ page import = "org.json.JSONArray" %>

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
           			         <div class="panel panel-default">
                                <div class="panel-heading">
                              
                                </div>
                                <div class="panel-body">
                                  
                         <div class="content-frame-left">
                         <form action="../SendAdminNotificationServlet" class="form-horizontal" method="get">
                        <div class="form-group">
                            <h4>Send new notification:</h4>
                            <textarea class="form-control push-down-10" id="new_task" rows="4" placeholder="Your notification text here..." name = "notificationText"></textarea>                            
                            <button class="btn btn-primary" id="add_new_task"><span class="fa fa-edit"></span>Send</button>
                        </div>  
                        </form>                                              
                   
                        
                        
                   
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

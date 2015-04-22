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
                        <div class="col-md-6">
           			         <div class="panel panel-default">
                                <div class="panel-heading">
                              <%String tableName = (String)session.getAttribute("tableName"); %>
                              
                                    <h3 class="panel-title"><%= tableName %></h3>
                                </div>
                                <div class="panel-body">
                                   
                                    <div class="table-responsive">
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                               
                                                	
                                                	<th>
                                                	</th>
                                                	
                                                
                                                	                                                	
                                                	
                                                	
                                                	
                                                    
                                                </tr>
                                            </thead>
                                      
                                        </table> 
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

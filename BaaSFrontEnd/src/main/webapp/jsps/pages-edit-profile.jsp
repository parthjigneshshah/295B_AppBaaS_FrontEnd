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
                            
                            <form class="form-horizontal" >
                            <input type = "hidden" name = "action" value = "createApplication">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>User Profile</strong></h3>
                                    <ul class="panel-controls">
                                        <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>
                                    </ul>
                                </div>
                               
                                <div class="panel-body">                                                                        
                                    
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">First Name</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <input type="text" class="form-control" style = "color:#000000" name = "firstName" id = "firstName" value = <%= session.getAttribute("fName")  %> disabled="disabled"/>
                                            </div>                                                                                      
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Last Name</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <input type="text" class="form-control" style = "color:#000000" name = "lastName" id = "lastName" value = <%= session.getAttribute("lName")  %> disabled="disabled"/>
                                            </div>                                                                                      
                                        </div>
                                    </div>
                                   
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Email Id</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <input type="text" class="form-control" style = "color:#000000" name = "email" id = "email" value = <%= session.getAttribute("email") %> disabled="disabled"/>
                                            </div>                                                                                       
                                        </div>
                                    </div>
 
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label"> Password </label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <input type="password" class="form-control" style = "color:#000000" name = "password" id = "password" value = <%= session.getAttribute("password") %> disabled="disabled"/>
                                            	  
                                            </div>
                                              <a href = "pages-change-password.jsp" >Change Password</a>                                                                                      
                                        </div>
                                    </div>
                                    
                                    
                                    
                                    
                                    </div>

                                </div>
                                
                            </div>
                            </form>
                            
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

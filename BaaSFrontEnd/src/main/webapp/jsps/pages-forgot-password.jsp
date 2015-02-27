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
               <%@ include file= "HomePageSidebar.jsp" %>
            <!-- END PAGE SIDEBAR -->
            <!-- PAGE CONTENT -->
            <div class="page-content">
                
               <%@ include file= "HomePageHeader.jsp" %>
                                 
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                     <div class="row">
           				     <div class="col-md-12">

                            <div class="login-container login-v2">
            
                                <div class="login-box animated fadeInDown">
                                    <div class="login-body">
                                        <div class="login-title"><strong>Welcome</strong>, Please Enter your registered email address.</div>
                                        <form action="FirstPage.jsp" class="form-horizontal" method="post">
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <span class="fa fa-envelope"></span>
                                                    </div>
                                                    <input type="text" class="form-control" placeholder="Email"/>
                                                </div>
                                            </div>
                                        </div>
                                   
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <a href="#" class= "btn btn-link btn-block">Registration</a>
                                            </div>          
                                                          
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <button class="btn btn-primary btn-lg btn-block">Sign Up</button>
                                            </div>
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

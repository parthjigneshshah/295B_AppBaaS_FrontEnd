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
                                        <div class="login-title"><strong>Welcome</strong>, Please login.</div>
                                        <form action="pages-applications.jsp" class="form-horizontal" method="post">
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <span class="fa fa-user"></span>
                                                    </div>
                                                    <input type="text" class="form-control" placeholder="Username"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <div class="input-group">
                                                    <div class="input-group-addon">
                                                        <span class="fa fa-lock"></span>
                                                    </div>                                
                                                    <input type="password" class="form-control" placeholder="Password"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-6">
                                                <a href="#">Forgot your password?</a>
                                            </div>          
                                            <div class="col-md-6 text-right">
                                                <a href="pages-registration.jsp">Create an account</a>
                                            </div>              
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <button class="btn btn-primary btn-lg btn-block">Login</button>
                                            </div>
                                        </div>
                                        </form>
                                    </div>                                    
                                </div>

                            </div>

                        </div>
                    </div>
           >
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

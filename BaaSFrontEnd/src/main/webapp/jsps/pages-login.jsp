<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>        
        <%@include file = "metaAndCss.jsp" %>  
    </head>
    <body>
        <!-- START PAGE CONTAINER -->
      
           
            <!-- PAGE CONTENT -->
            <div class="page-content">
                
               <%@ include file= "HomePageHeader.jsp" %>
                                 
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                     <div class="registration-container registration-extended">            
            <div class="registration-box animated fadeInDown">
                <div class="registration-logo" align = "center">
                <img alt="" src="../img/Logo2.png">
                </div>
                <div class="registration-body" align="center">
                    
                    <div class="row" align="center">                        
                      
                       
                            
                           <div class="registration-title"><strong>Welcome</strong>, Please login</div>
                            <form action="pages-applications.jsp" class="form-horizontal" method="post">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" class="form-control" placeholder="Username"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="password" class="form-control" placeholder="Password"/>
                                </div>
                            </div>
                            <div class="form-group push-down-30">
                                <div class="col-md-6">
                                    <a href="pages-forgot-password.jsp" class="btn btn-link btn-block">Forgot your password?</a>
                                </div>
                                <div class="col-md-6">
                                    <button  class="btn btn-info btn-block">Log In</button>
                                </div>
                            </div>
                            </form>              
                            
                       
                    </div>
                    
                </div>
                
                <div class="registration-footer">
                    <div class="pull-left">
                        &copy; 2015 AppBass
                    </div>
                    <div class="pull-right">
                        <a href="#">About</a> |
                        <a href="#">Privacy</a> |
                        <a href="#">Contact Us</a>
                    </div>
                </div>
            </div>
            
        </div>
                    
                
                </div>
                <!-- END PAGE CONTENT WRAPPER -->                
            </div>            
            <!-- END PAGE CONTENT -->
        

       <%@ include file = "MessageBoxAndPreloads.jsp" %>           
       <%@ include file = "scripts.jsp" %>     
    </body>
</html>

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
                </div>
                <div class="registration-body" align="center">
                    
                    <div class="row" align="center">                        
                      
                       
                            
                            <div class="registration-title" align="center"><strong>Registration</strong>, use form below</div>
                           
                            <form action="../RegistrationPageServlet" class="form-horizontal" method="post">

                                <h4>Personal info</h4>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <input type="text" name = "firstName" id = "useName" class="form-control" placeholder="First Name"/>
                                    </div>
                                </div>
                                    <div class="form-group">
                                    <div class="col-md-12">
                                        <input type="text" name = "lastName" id = "lastName" class="form-control" placeholder="Surname"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <input type="text" class="form-control" name = "emailAdd" id = "emailAdd" placeholder="E-mail"/>
                                    </div>
                                </div>

                                <h4>Authentication</h4>                    
                                                      
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <input type="password" class="form-control" name = "password" id = "password" placeholder="Password"/>
                                    </div>
                                </div>                    
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <input type="password" class="form-control" name = "confirmPassword" id = "confirmPassword" placeholder="Re-Password"/>
                                    </div>
                                </div>             

                                <div class="form-group push-up-30">
                                    <div class="col-md-6">
                                        <a href="pages-login-inside.jsp" class="btn btn-link btn-block">Already have an account?</a>
                                    </div>
                                    <div class="col-md-6">
                                        <button class="btn btn-danger btn-block">Sign Up</button>
                                    </div>
                                </div>
                                
                            </form>                            
                            
                       
                    </div>
                    
                </div>
                
                <%@ include file = "footer.jsp" %>
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

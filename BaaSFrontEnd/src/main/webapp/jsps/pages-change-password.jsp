<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" class="body-full-height">
    <head>        
        <!-- META SECTION -->
        <title>AppBaaS</title>            
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        
        <link rel="icon" href="../favicon.ico" type="image/x-icon" />
        <!-- END META SECTION -->
        
        <!-- CSS INCLUDE -->        
        <link rel="stylesheet" type="text/css" id="theme" href="../css/theme-default.css"/>
        <!-- EOF CSS INCLUDE -->    
    </head>
    <body>
        
         
       <div class="login-container">
        
            <div class="login-box animated fadeInDown">
                <div class="login-logo"></div>
                <div class="login-body">
                    <div class="login-title"><strong>Forgot</strong> Password?</div>
                    <form action="../UpdatePasswordServlet" class="form-horizontal" method="post">
                    <h4>Your E-mail</h4>
                    <div class="form-group">
                        <div class="col-md-12">
                            <input type="password" name = "password" id = "password" class="form-control" placeholder="New Password"/>
                        </div>
                    </div>  
                    <div class="form-group">
                        <div class="col-md-12">
                            <input type="password" name = "confirmpassword" id = "confimpassword" class="form-control" placeholder="Confirm Password"/>
                        </div>
                    </div>  
                    
                    <div class="form-group push-up-20">
                        <div class="col-md-6">
                            <button class="btn btn-danger btn-block">Change Password</button>
                        </div>
                    </div>
                    </form>
                </div>
                <%@ include file= "footer.jsp" %>
            </div>
            
        </div>
        
    </body>
</html>







	
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" class="body-full-height">
    <head>        
        <!-- META SECTION -->
        <title>AppBaas</title>            
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        
        <link rel="icon" href="../favicon.ico" type="image/x-icon" />
        <!-- END META SECTION -->
        
      <link rel="stylesheet" type="text/css" id="theme" href="../css/theme-default.css"/>
        <!-- EOF CSS INCLUDE -->    
    </head>
    <body>
        
        <div class="login-container">
            <div class="login-box animated fadeInDown">
                <div class="login-logo"></div>
                 <%	String message = "";
                	System.out.println("message:"+message);
                %>
                <%
                if(session.getAttribute("loginErrorMsg") != null ){
                message = session.getAttribute("loginErrorMsg").toString();
                }
                %>
                <%if(message.length() > 0) {%>
                		<div class="login-title" style = "color:#ffffff; font-size: 14px;"><strong>Error</strong>,   <%=message%></div>
                <%} %>
                
                <div class="login-body">
                    <div class="login-title"><strong>Welcome</strong>, Please login</div>
                    <form action="../LoginPageServlet" class="form-horizontal" method="post">
                    <div class="form-group">
                    
                        <div class="col-md-12">
                            <input type="text" name="userName" id = "userName" class="form-control" placeholder="Username"/>
                        </div>
                    </div>	
                    <div class="form-group">
                        <div class="col-md-12">
                            <input type="password" name = "password" id = "password" class="form-control" placeholder="Password"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-6">
                            <a href="pages-forgot-password.jsp" class="btn btn-link btn-block">Forgot your password?</a>
                        </div>
                        <div class="col-md-6">
                            <button class="btn btn-info btn-block">Log In</button>
                        </div>
                    </div>
                    </form>
                </div>
                 <%@ include file = "footer.jsp" %>
               </div>
            
        </div>
        
    </body>
</html>








<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>        
        <%@include file = "metaAndCss.jsp" %>  
    </head>
    <body>
      
            
            <!-- PAGE CONTENT -->
            <div class="page-content">
                
               
                                 
                
               <div class="lockscreen-container">
            
            <div class="lockscreen-box animated fadeInDown">
                
                <div class="lsb-access">
                    <div class="lsb-box">
                        <div class="fa fa-lock"></div>
                        <div class="user animated fadeIn">
                            <img src="../assets/images/users/user2.jpg" alt="John Doe"/>
                            <div class="user_signin animated fadeIn">
                                <div class="fa fa-sign-in"></div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="lsb-form animated fadeInDown">
                    <form action="pages-applications.jsp" method="post" class="form-horizontal">
                        <div class="form-group sign-in animated fadeInDown">
                            <div class="col-md-12">
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <span class="fa fa-user"></span>
                                    </div>
                                    <input type="text" class="form-control" placeholder="Your login"/>
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
                        <input type="submit" class="hidden"/>
                    </form>
                </div>
                
            </div>
            
        </div>             
            </div>            
            <!-- END PAGE CONTENT -->
        

       <%@ include file = "MessageBoxAndPreloads.jsp" %>           
       <%@ include file = "scripts.jsp" %>     
    </body>
</html>

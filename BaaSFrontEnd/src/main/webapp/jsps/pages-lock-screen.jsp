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
                        <%
                						String message = "";
                						System.out.println("message:"+message);
                						
                	
               						 %>
                <%
                if(session.getAttribute("lockScreenMsg") != null ){
                	message = session.getAttribute("lockScreenMsg").toString();
                }
                %>
                <%
                	if(message.length() > 0) {%>
                		
                		<div class="login-title" style = "color:#ffffff; font-size: 14px;"><strong>Error</strong>,   <%=message%></div>
                		
                	<%}
                session.setAttribute("lockScreenMsg", null);
                %>
                <div class="lsb-access">
                    <div class="lsb-box">
                     
                        <div class="fa fa-lock"></div>
                        <div class="user animated fadeIn">
                            <img src="../assets/images/users/no-image.jpg" alt="John Doe"/>
                            <div class="user_signin animated fadeIn">
                                <div class="fa fa-sign-in"></div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="lsb-form animated fadeInDown">
                    <form action="../CheckLockScreenPasword" method="post" class="form-horizontal">
                   
                      
                        <div class="form-group">
                            <div class="col-md-12">
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <span class="fa fa-lock"></span>
                                    </div>
                                    <input type="password" class="form-control" placeholder="Password" id = "lockScreenPass" name = "lockScreenPass"/>
                                    
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

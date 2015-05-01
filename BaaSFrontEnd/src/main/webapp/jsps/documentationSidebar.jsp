<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>        
          
    </head>
    <body>
       
            
         <!-- START PAGE SIDEBAR -->
            <div class="page-sidebar">
                <!-- START X-NAVIGATION -->
                <ul class="x-navigation">
                    <li class="xn-logo">
                        <a href="../GetApplicationServlet"><img src = "../img/logo-small.png"></a>
                        <a href="#" class="x-navigation-control"></a>
                    </li>
                 
                   
                       
                        <% if(session.getAttribute("UserName") == null){
                        	System.out.println("null session");}
                        	
                        else {
                        	String userName = session.getAttribute("UserName").toString();%>
                        <li class="xn-profile">
                        <a href="../pages-profile.html" class="profile-mini">
                            <img src="../assets/images/users/no-image.jpg" alt="John Doe"/>
                        </a>
                        <div class="profile">
                        <div class="profile-image">
                        <a href="pages-sample.jsp">
                            <img src="../assets/images/users/no-image.jpg" alt="John Doe"/>
                        </a>
                        </div>
                        
                        <div class="profile-data">
                            <div class="profile-data-name"><%= userName %></div>
                           
                        </div>	
                        <div class="profile-controls">
                            <a href=# class="profile-control-left"><span class="fa fa-info"></span></a>
                            <a href=# class="profile-control-right"><span class="fa fa-envelope"></span></a>
                        </div>
                    </div>  
                    </li>    
                     <li><a href="../AnalyticsServlet"><span class="fa fa-user"></span> Dashboard</a></li>
                      <% }%>
                                                                            
                    
                   
                    <li>
                        <a href="pages-documentation.jsp"><span class="fa fa-files-o"></span> <span class="xn-text">User Manager</span></a>                        
                    </li>                    
                   <li>
                        <a href="pages-documentation.jsp"><span class="fa fa-files-o"></span> <span class="xn-text">Application Manager</span></a>                        
                    </li>  
                    <li>
                        <a href="pages-documentation.jsp"><span class="fa fa-files-o"></span> <span class="xn-text">Notification Manager</span></a>                        
                    </li>  
                    <li>
                        <a href="pages-documentation.jsp"><span class="fa fa-files-o"></span> <span class="xn-text">Object Manager</span></a>                        
                    </li>  
                   
                      

                                     
                
                    
                </ul>
                <!-- END X-NAVIGATION -->
            </div>
            <!-- END PAGE SIDEBAR -->      
    </body>
</html>

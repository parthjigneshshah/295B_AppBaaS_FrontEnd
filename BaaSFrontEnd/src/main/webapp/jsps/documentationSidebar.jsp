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
                  <li>
                        <a href="pages-documentaion-usermanager.jsp"><span class="fa fa-files-o"></span> <span class="xn-text">User Manager</span></a>                        
                    </li>                    
                   <li>
                        <a href="pages-documentaion-appmanager.jsp"><span class="fa fa-files-o"></span> <span class="xn-text">Application Manager</span></a>                        
                    </li>  
                    <li>
                        <a href="pages-documentation.jsp"><span class="fa fa-files-o"></span> <span class="xn-text">Notification Manager</span></a>                        
                    </li>  
                    <li>
                        <a href="pages-documentation.jsp"><span class="fa fa-files-o"></span> <span class="xn-text">Object Manager</span></a>                        
                    </li>  
                   
                       
                        <% if(session.getAttribute("UserName") == null){
                        	System.out.println("null session");}
                        	
                        else {
                        	String subScriptionCode = session.getAttribute("subscriptionCode").toString(); 
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
                     <li>
                        <a href="../GetApplicationServlet"><span class="fa fa-desktop"></span> <span class="xn-text">Applications</span></a>                        
                    </li>                
                    <li><a href="../UserDetailServlet"><span class="fa fa-pencil"></span> Edit Profile</a></li>
                    <li><a href="../AnalyticsServlet"><span class="fa fa-user"></span> Dashboard</a></li>               
                    <%String uName = session.getAttribute("UserName").toString(); %>
                    
                    <%
                    if(!uName.equals("adminuser@appbaas.com")){
                    if(subScriptionCode.equals("200")){ %>
                    <li><a href="../UnsubscribeServlet"><span class="fa fa-question"></span>UnSubscribe</a></li><% }
                    
                    else{%>
                    <li><a href="../GetSubscriptionServlet"><span class="fa fa-question"></span>Subscribe</a></li>
                    <%}
                    }%>
                    <%
                    
                    
                    if( uName.equals("adminuser@appbaas.com") ){%>
                    	
                    	 <li><a href="pages-notification.jsp"><span class="fa fa-envelope"></span>Send Notification</a></li>
                    	
                   <% }%>
                      <% }%>
                                                                            
                    
                   
                   
                   
                      

                                     
                
                    
                </ul>
                <!-- END X-NAVIGATION -->
            </div>
            <!-- END PAGE SIDEBAR -->      
    </body>
</html>

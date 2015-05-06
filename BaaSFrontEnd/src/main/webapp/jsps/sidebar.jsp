<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>        
          
    </head>
    <body>
       
            
         <!-- START PAGE SIDEBAR -->
         <%
        
         String subScriptionCode = session.getAttribute("subscriptionCode").toString(); %>
            <div class="page-sidebar">
                <!-- START X-NAVIGATION -->
                <ul class="x-navigation">
                    <li class="xn-logo">
                        <a href="pages-applications.jsp"><img src = "../img/logo-small.png"></a>
                        <a href="#" class="x-navigation-control"></a>
                    </li>
                    
                       <%
                       System.out.println("in sidebar");
                       System.out.println(request.getSession(false));
                       if(request.getSession(false) == null){
                    	   System.out.println("session is null");
                       }
                       %>
                    		<li class="xn-profile">
                        <a href="../pages-profile.html" class="profile-mini">
                            <img src="../assets/images/users/no-image.jpg" alt="John Doe"/>
                        </a>
                        <div class="profile">   
                            <div class="profile-image">
                            <a href="pages-applications.jsp">
                                <img src="../assets/images/users/no-image.jpg" alt="John Doe"/>
                            </a>
                            </div>
                            
                            <div class="profile-data">
                                <div class="profile-data-name"><%= session.getAttribute("UserName").toString() %></div>
                               
                            </div>	
                            <div class="profile-controls">
                                <a href=# class="profile-control-left"><span class="fa fa-info"></span></a>
                                <a href=# class="profile-control-right"><span class="fa fa-envelope"></span></a>
                            </div>
                        </div>                                                                        
                    </li>
                    <li>
                        <a href="../PdfDownloadServlet"><span class="fa fa-download"></span> <span class="xn-text">Download JAR</span></a>                        
                    </li>
                    <li>
                        <a href="../GetApplicationServlet"><span class="fa fa-desktop"></span> <span class="xn-text">Applications</span></a>                        
                    </li>                
                    <li><a href="../UserDetailServlet"><span class="fa fa-pencil"></span> Edit Profile</a></li>
                   
                    <%	String AnalyticsManagerPresent = "";
                	System.out.println("message:"+AnalyticsManagerPresent);
                %>
                    <%
                if(session.getAttribute("AnalyticsManagerPresent") != null ){
                	AnalyticsManagerPresent = session.getAttribute("AnalyticsManagerPresent").toString();
                }
                %>
                <%String uName = session.getAttribute("UserName").toString(); %>
                	   <%
                    if(uName.equals("adminuser@appbaas.com")){%>
                	   
                	   <li><a href="../AnalyticsServlet"><span class="fa fa-user"></span> Dashboard</a></li>
                	   <% } %>
                	      
                 
                                 
                    
                    
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
                        
                    
                   
                                   

                                     
                
                    
                </ul>
                <!-- END X-NAVIGATION -->
            </div>
            <!-- END PAGE SIDEBAR -->      
    </body>
</html>

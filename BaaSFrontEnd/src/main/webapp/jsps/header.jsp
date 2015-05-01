<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>        
           <title>AppBaas</title>
    </head>
    <body>
            <!-- START X-NAVIGATION VERTICAL -->
                <%if(session.getAttribute("UserName") == null){%>
                
                	
                	 <ul class="x-navigation x-navigation-horizontal x-navigation-panel">
                    
                                       
                    <!-- POWER OFF -->
                    <li class="xn-icon-button pull-right last">
                       <a href="pages-faq.jsp">AboutUs</a>
                                              
                    </li> 
                    <!-- END POWER OFF -->                    
					<!--  edit profile  -->                   
                     <li class="xn-icon-button pull-right">
                        <a href="pages-login.jsp"><span>Sign In</span></a>
                     </li>
                      <li class="xn-icon-button pull-right">
                        
                        <a href="pages-documentation.jsp"><span>Documentation</span></a>
                     </li>
                    <!-- end of edit profile -->
                    <!-- application form -->
                    
                    
                    <!-- end of application form -->
                    
                </ul>
                	
                	<%}
                else{
                	%>
               
                <ul class="x-navigation x-navigation-horizontal x-navigation-panel">
                    <!-- TOGGLE NAVIGATION -->
                    <li class="xn-icon-button">
                        <a href="#" class="x-navigation-minimize"><span class="fa fa-dedent"></span></a>
                    </li>
                    <!-- END TOGGLE NAVIGATION -->
                    
                    <!-- END SEARCH -->                    
                    <!-- POWER OFF -->
                    <li class="xn-icon-button pull-right last">
                        <a href="#"><span class="fa fa-power-off"></span></a>
                        <ul class="xn-drop-left animated zoomIn">
                            <li><a href="pages-lock-screen.jsp"><span class="fa fa-lock" style = "width:50px"></span> Lock Screen</a></li>
                            <li><a href="pages-login.jsp" class="mb-control" data-box="#mb-signout"><span class="fa fa-sign-out" style = "width:50px"></span> Sign Out</a></li>
                        </ul>                        
                    </li> 
                    <!-- END POWER OFF -->                    
					<!--  edit profile  -->                   
                     <li class="xn-icon-button pull-right">
                        <a href="../UserDetailServlet"><span>Edit Profile</span></a>
                        <a href="pages-documentation.jsp"><span>Documentation</span></a>
                     </li>
                    <!-- end of edit profile -->
                    <!-- application form -->
                    
                    
                    <!-- end of application form -->
                    
                </ul><%} %>
                <!-- END X-NAVIGATION VERTICAL -->                     

                               
                
              
        

        
    </body>
</html>

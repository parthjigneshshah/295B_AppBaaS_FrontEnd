<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>        
        <%@include file = "metaAndCss.jsp" %>  
    </head>
    <body>
        <!-- START PAGE CONTAINER -->
        <div class="page-container">
            <!-- START PAGE SIDEBAR -->
               <%@ include file= "sidebar.jsp" %>
            <!-- END PAGE SIDEBAR -->
            <!-- PAGE CONTENT -->
            <div class="page-content">
                
              <%@ include file = "header.jsp" %>
                                 
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
           	  <div class="row">
                        <div class="col-md-12">
                            
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <p>Create a new application by clicking the create application button below.</p>
                                    <form class="form-horizontal" action = "pages-create-application.jsp">
                                        <div class="form-group">
                                            
                                            <div class="col-md-4">
                                                <button class="btn btn-success btn-block"><span class="fa fa-plus"></span> Create new application</button>
                                            </div>
                                        </div>
                                    </form>                                    
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    
                       <div class="row">
                        <div class="col-md-3">
                            <!-- CONTACT ITEM -->
                            <div class="panel panel-default">
                                <div class="panel-body profile">
                                    <div class="profile-image">
                                        <img src="../assets/images/users/no-image.jpg" alt="Nadia Ali"/>
                                    </div>
                                    <div class="profile-data">
                                        <div class="profile-data-name">Application 1</div>
                                        <div class="profile-data-title">Catagory </div>
                                    </div>
                                    <div class="profile-controls">
                                        <a href="sample.jsp" class="profile-control-left"><span class="fa fa-info"></span></a>
                                       
                                    </div>
                                </div>                                
                                <div class="panel-body">                                    
                                    <div class="contact-info">
                                        <p><small>Mobile</small><br/>(555) 555-55-55</p>
                                        <p><small>Email</small><br/>nadiaali@domain.com</p>
                                        <p><small>Address</small><br/>123 45 Street San Francisco, CA, USA</p>                                   
                                    </div>
                                </div>                                
                            </div>
                            <!-- END CONTACT ITEM -->
                        </div>
                        <div class="col-md-3">
                            <!-- CONTACT ITEM -->
                            <div class="panel panel-default">
                                <div class="panel-body profile">
                                    <div class="profile-image">
                                        <img src="../assets/images/users/no-image.jpg" alt="Dmitry Ivaniuk"/>
                                    </div>
                                    <div class="profile-data">
                                        <div class="profile-data-name">Application 2</div>
                                        <div class="profile-data-title">Catagory </div>
                                    </div>
                                    <div class="profile-controls">
                                        <a href="sample.jsp" class="profile-control-left"><span class="fa fa-info"></span></a>
                                        
                                    </div>
                                </div>                                
                                <div class="panel-body">                                    
                                    <div class="contact-info">
                                        <p><small>Mobile</small><br/>(333) 333-33-22</p>
                                        <p><small>Email</small><br/>dmitry@domain.com</p>                                        
                                        <p><small>Address</small><br/>123 45 Street San Francisco, CA, USA</p>                                   
                                    </div>
                                </div>                                
                            </div>
                            <!-- END CONTACT ITEM -->
                        </div>
                                          
                    </div>
                     <div class="row">
                        <div class="col-md-12">
                            <ul class="pagination pagination-sm pull-right push-down-10 push-up-10">
                                <li class="disabled"><a href="#">«</a></li>
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>                                    
                                <li><a href="#">»</a></li>
                            </ul>                            
                        </div>
                    </div>
                </div>
                <!-- END PAGE CONTENT WRAPPER -->                
            </div>            
            <!-- END PAGE CONTENT -->
        </div>
        <!-- END PAGE CONTAINER -->

       <%@ include file = "MessageBoxAndPreloads.jsp" %>           
       <%@ include file = "scripts.jsp" %>     
    </body>
</html>

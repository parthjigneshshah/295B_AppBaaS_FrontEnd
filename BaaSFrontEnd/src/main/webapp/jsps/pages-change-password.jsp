<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>        
        <%@include file = "metaAndCss.jsp" %>  
    </head>
    
    <script type="text/javascript">
         
         function passVali(){
        	 
        	 
        	 
        	 var validator = $("#changepassword-form").validate({
        
        	 rules:  {

                 password: {
                	 required: true,
              		nowhitespace:true
                  },
                  confimpassword: {
                 required: true,
                 equalTo: "#password"
             }, 
                 },
         	
         		message: {
         			
         			confirmPassword:"password mismatch"
         			
         		}
        	 

        	 
         
         });
        
        	 $.validator.addMethod("nowhitespace", function(value, element) {
        		    return this.optional(element) || /^\S+$/i.test(value);
        		}, "No white space please");
         
         var result = validator.form();
         if(!result){
        	 console.log(result);
             return false; 
         }
         
         
         }</script>
    
    <body>
        <!-- START PAGE CONTAINER -->
        <div class="page-container">
            <!-- START PAGE SIDEBAR -->
               <%@ include file= "sidebar.jsp" %>
            <!-- END PAGE SIDEBAR -->
            <!-- PAGE CONTENT -->
            <div class="page-content">
                
               <%@ include file= "header.jsp" %>
                 <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                
                <div class="panel panel-primary animated zoomIn xn-drop-left">
                <div class="panel-heading">
                   <h3 class="panel-title"><strong>Change Password</strong></h3>                                                                
                    </div>
                            <div class="panel-body">
                                
                                <div class="login-container login-v2 login-inside">
            
                                    <div class="login-box animated fadeInDown">
                                        <div class="login-body">
                                             <form action="../UpdatePasswordServlet" class="form-horizontal" method="post" onsubmit="return passVali()" id = "changepassword-form">
                                             <div class="form-group">
                        <div class="col-md-12">
                            <input type="password" name = "password" id = "password" class="form-control" placeholder="New Password"/>
                        </div>
                    </div>  
                    <div class="form-group">
                        <div class="col-md-12">
                            <input type="password" name = "confimpassword" id = "confimpassword" class="form-control" placeholder="Confirm Password" />
                        </div>
                    </div>  
                    
                    <div class="form-group push-up-20">
                        <div class="col-md-6">
                            <button class="btn btn-danger btn-block">Change Password</button>
                        </div>
                    </div>
                                            </form>
                                        </div>                                        
                                    </div>

                                </div>
                                
                            </div>                                 
                        </div>  
                   
                    <!-- END LOGIN BLOCK --> 
                
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

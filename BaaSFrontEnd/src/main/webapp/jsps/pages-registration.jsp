<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>        
        <%@include file = "metaAndCss.jsp" %>  
        <script type="text/javascript" src="../js/plugins/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="../js/plugins/jquery/jquery-ui.min.js"></script>
         <script type="text/javascript" src="../js/plugins/jquery-validation/jquery.validate.js"></script>
         
         <script type="text/javascript">
         
         function passVali(){
        	 
        	 
        	 
        	 var validator = $("#register-form").validate({
        
        	 rules:  {
        		 	confirmPassword: {
                     required: true,
                    
                     equalTo: "#password"
                 }, 
                 
                 firstName: {
                		required: true,
                		nowhitespace:true
                 },
                 lastName: {
                	 required: true,
             		nowhitespace:true
                 },
                 password: {
                	 required: true,
              		nowhitespace:true
                  },
                  email:{
                	  required: true,
               		nowhitespace:true,
               		email:true
                  }
                  
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
        
    </head>
    <body>
        <!-- START PAGE CONTAINER -->
      
           
            <!-- PAGE CONTENT -->
            <div class="page-content">
                
               <%@ include file= "HomePageHeader.jsp" %>
                                 
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                <div class="registration-container registration-extended">            
            	<div class="registration-box animated fadeInDown">
                <div class="registration-logo" align = "center">
                </div>
                <div class="registration-body" align="center">
                    
                    <div class="row" align="center">                        
  		              <div class="registration-title" align="center"><strong>Registration</strong>, use form below</div>
                           
                            <form action="../RegistrationPageServlet" id = "register-form" class="form-horizontal" role = "form" method="post" name = "register-form" onsubmit="return passVali()">

                                <h4>Personal info</h4>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <input type="text" name = "firstName" id = "firstName" class="form-control" placeholder="First Name" required/>
                                    </div>
                                </div>
                                    <div class="form-group">
                                    <div class="col-md-12">
                                        <input type="text" name = "lastName" id = "lastName" class="form-control" placeholder="Surname" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <input type="email" class="form-control" name = "emailAdd" id = "emailAdd" placeholder="E-mail" required/>
                                    </div>
                                </div>

                                <h4>Authentication</h4>                    
                                                      
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <input type="password" class="form-control" name = "password" id = "password" placeholder="Password" required/>
                                    </div>
                                </div>                    
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <input type="password" class="form-control" name = "confirmPassword" id = "confirmPassword" placeholder="Re-Password" required/>
                                 	   </div>
                                </div>             

                                <div class="form-group push-up-30">
                                    <div class="col-md-6">
                                        <a href="pages-login.jsp" class="btn btn-link btn-block">Already have an account?</a>
                                    </div>
                                    <div class="col-md-6">
                                        <button class="btn btn-danger btn-block" id = "signUp" >Sign Up</button>
                                    </div>
                                </div>
                                
                            </form>                            
                            
                       
                    </div>
                    
                </div>
                
                <%@ include file = "footer.jsp" %>
            </div>
            
        </div>
                    
                
                </div>
                <!-- END PAGE CONTENT WRAPPER -->                
            </div>            
            <!-- END PAGE CONTENT -->
        

       <%@ include file = "MessageBoxAndPreloads.jsp" %>           
       <%@ include file = "scripts.jsp" %>     
    </body>
</html>

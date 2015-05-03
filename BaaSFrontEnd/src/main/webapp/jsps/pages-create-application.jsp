<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>        
        <%@include file = "metaAndCss.jsp" %>  
    
    <script type="text/javascript">
         
         function passVali(){
        	 
        	
        	 var validator = $("#createApp-form").validate({
        
        	 rules:  {
        		 	
        		 AppName: {
                		required: true,
                		nowhitespace:true
                 },
                 AppDesc: {
                	 required: true,
             		
                 },
                 AppVer: {
                	 required: true,
              		
                  },
                 
                 },
         	
         		
        	 

        	 
         
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
        <div class="page-container">
            <!-- START PAGE SIDEBAR -->
               <%@ include file= "sidebar.jsp" %>
            <!-- END PAGE SIDEBAR -->
            <!-- PAGE CONTENT -->
            <div class="page-content">
                
               <%@ include file= "header.jsp" %>
                                 
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
           		               <div class="row">
                        <div class="col-md-12">
                            
                            <form class="form-horizontal" action = "../AppCreatePageServlet" id = "createApp-form" method = "post" onsubmit="return passVali()" >
                            <input type = "hidden" name = "action" value = "createApplication">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Create Application</strong></h3>
                                    <ul class="panel-controls">
                                        <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>
                                    </ul>
                                </div>
                               
                                <div class="panel-body">                                                                        
                                    
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Application Name</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <input type="text" class="form-control" name = "AppName" id = "AppName" required/>
                                            </div>                                                                                      
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Application Description</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <input type="text" class="form-control" id ="AppDesc" name = "AppDesc" required/>
                                            </div>                                                                                        
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Application Version</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <input type="text" class="form-control" name = "AppVer" id = "AppVer" required/>
                                            </div>                                                                                       
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Application Type</label>
                                        <div class="col-md-6 col-xs-12">                                                                                            
                                            <select class="form-control select" name = "AppType" required>
                                                <option>Engineering</option>
                                                <option>Social</option>
                                                <option>ECommerce</option>
                                                <option>News</option>                                              
                                            </select>                                            
                                        </div>
                                    </div>
                                                                    
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Services</label>
                                        <div class="col-md-6 col-xs-12">                                                                                                                                        
                                            <label class="check"><input type="checkbox" name = "ServiceName" id = "userService" value = "UserManager"class="icheckbox" /> User Manager</label><br/>
                                            <label class="check"><input type="checkbox" name = "ServiceName" value ="AppManager" class="icheckbox" /> Application Manager</label><br/>
                                            <label class="check"><input type="checkbox" name = "ServiceName" value = "ObjManager" class="icheckbox" /> Object Manager</label><br/>
                                            <label class="check"><input type="checkbox" name = "ServiceName" value = "NotificationManager" class="icheckbox" /> Notification Manager</label>
                                        </div>
                                    </div>
                                     

                                </div>
                                <div class="panel-footer">
                                    <button class="btn btn-default">Clear Form</button>                                    
                                    <button class="btn btn-primary pull-right">Submit</button>
                                </div>
                            </div>
                            </form>
                            <script type="text/javascript">$("#createApp-form").validate();</script>
                            
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

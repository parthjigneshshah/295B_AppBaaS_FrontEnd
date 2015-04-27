<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>        
        <%@include file = "metaAndCss.jsp" %>
	        <script type="text/javascript" src="../js/plugins/jquery/jquery.min.js"></script>
	        <script type="text/javascript" src="../js/plugins/jquery/jquery-ui.min.js"></script>
	        <script type="text/javascript" src="../js/plugins/bootstrap/bootstrap.min.js"></script>
        <script>
        
        $(document).ready(function(){
        	var x = 0;
        	
        
        	$("#addColumn").click(function(){
        		x++;
        		document.getElementById("counter").value = x;
        		appendString ='<div class = "form-group"><div class="form-group"><label class="col-md-3 col-xs-12 control-label">Column Name</label><div class="col-md-6 col-xs-12"><div class="input-group"><span class="input-group-addon"><span class="fa fa-pencil"></span></span><input type="text" class="form-control" name="ColName'+x+'"/></div></div><label class="check"><input type="checkbox" name = "PrimaryKey'+x+'" id = "PrimaryKey'+x+'" value = "colName' + x +'" unchecked class="icheckbox" />Primary Key</label><br/></div><div class="form-group"><label class="col-md-3 col-xs-12 control-label">Data Type</label><div class="col-md-6 col-xs-12"><select class="form-control select" name = "DataType'+x+'"><option>INT</option><option>VARCHAR(30)</option></select></div><a href = "#" class = "removeField">Remove</a></div></div>' ;
        	 	$("#dropdown").append(appendString);
       
        	});
        	
        	 $("#dropdown").on("click",".removeField", function(e){ //user click on remove text
        		 $(this).parent('div').parent('div').remove();
        	    });
        	 
        	
        	 
        	 var no_of_checks = 0;
        	 $("#dropdown").on("click",".icheckbox",function(e){
        		 
        		 no_of_checks++;
        		 if(no_of_checks > 1){
        			 alert("Only one Primary key per table allowed");
        		 }
        		 else if(no_of_checks == 1){
        			 
        			 var pkCheck = $(this).attr("checked");
        			 document.getElementById("check").value = x;
        		 }
        		 
        		 

        	 })
        	 
        	 
         });
        
        
            
        
        
        
        
        
        
        </script>  
        
        
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
	                           
	                           <div class="panel panel-default">
	                           <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Create a Table</strong></h3>
                                    <div class="form-group" >    
	                                        <div class="col-md-6 col-xs-12">                                                                                            
	                                        <button class="btn btn-primary pull-right" id = "addColumn">Add A Column</button>                            
	                                        </div>
	                                    </div>
                                </div>
	                           
	                            </div>
                            <form class="form-horizontal" action = "../CreateTabelServlet" method = "post" >
                            <input type = "hidden" name = "action" value = "createTable">
                            
                                
                               
                                <div class="panel-body">                                                                        
                                <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Table Name</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <input type="text" class="form-control" name = "tableName" id = "TableName" value = "<%= request.getParameter("tableName") %>"/>
                                            </div>                                                                                      
                                        </div>
                                    </div>
                                <div id = "dropdown" class = "panel-body"></div>    
                                </div>
								<p id = hidden>
								
								</p>
                                <div class="panel-footer">
                                	<input type = "hidden" id = "counter" name = "counter" value="0">
                                	<input type = "hidden" id = "check" name = "check" value="">
                                    <button class="btn btn-default">Clear Form</button>                                    
        							
                                    <button class="btn btn-primary pull-right" id = "sessionCounter">Submit</button>
                                </div>
                             </form>
                             
                            
        
                                                   
            
                
                
            
    
    
        
                                                                                                    
            
                
                
                                                        
        
    
    
                            
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

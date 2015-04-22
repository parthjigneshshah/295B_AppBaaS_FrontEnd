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
        		
        	appendString = '<div class="form-group" ><label class="col-md-3 col-xs-12 control-label">Column Name</label><div class="col-md-6 col-xs-12"><div class="input-group"><span class="input-group-addon"><span class="fa fa-pencil"></span></span><input type="text" class="form-control" name ="ColName'+x+'"/></div></div></div><div class="form-group"><label class="col-md-3 col-xs-12 control-label">Data Type</label><div class="col-md-6 col-xs-12"><select class="form-control select" name ="DataType"><option>Varchar</option><option>Integer</option></select></div></div>';
        	 	$("#dropdown").append(appendString);
       
        	});
			
        
        	
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
	                                        <button class="btn btn-primary pull-right" id = "addColumn">Add Another Column</button>                            
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
                                                <input type="text" class="form-control" name = "tableName" id = "TableName"/>
                                            </div>                                                                                      
                                        </div>
                                    </div>
                                <div id = "dropdown"></div>    
                                </div>
                                
                                <div class="panel-footer">
                                	<input type = "hidden" id = "counter" name = "counter" value="0">
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

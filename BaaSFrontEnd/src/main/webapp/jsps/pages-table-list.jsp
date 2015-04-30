<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "org.json.JSONException" %>
<%@ page import = "org.json.JSONObject" %>
<%@ page import = "org.json.JSONArray" %>

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
                
               <%@ include file= "header.jsp" %>
                                 
                
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                <div class="row">
                        <div class="col-md-12">
           			         <div class="panel panel-default">
                                <div class="panel-heading">
                              
                                </div>
                                <div class="panel-body">
                                  
                         <div class="content-frame-left">
                         <form action="pages-create-table.jsp" class="form-horizontal" method="get">
                        <div class="form-group">
                            <h4>Add a new table:</h4>
                            <div class="form-group">
                                        
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <input type="text" class="form-control" name = "tableName" id = "TableName" placeholder = "Enter a table Name...(Can not Contain white spaces)"/>
                                            </div>                                                                                      
                                        </div>
                                    </div>                            
                            <button class="btn btn-primary" id="add_new_task"><span class="fa fa-edit"></span> Add</button>
                        </div>  
                        </form>                                              
                        <div class="form-group" style = "margin-top: 30px;"> 
                            <h4>Table Names:</h4>
                            <div class="list-group border-bottom">
                        		<%
                				JSONObject tableListResponse = (JSONObject) session.getAttribute("tableListResponse");             
					try {
						JSONArray tableList = tableListResponse.getJSONArray("tableNames");
		                int tableListLength = tableList.length();
						System.out.println("total length"+tableListLength);
						
						for(int i = 0; i < tableListLength; i++){
							
							String tableName = tableList.getString(i);
							String userTableName = tableName.substring(tableName.indexOf("_")+1);
							System.out.println("table names are"+ userTableName);
						%>  
						
											 <a href="
                          					 <c:url value="../GetTableDetailsServlet">
       										 <c:param name="action" value="<%=tableList.getString(i)%>"/>
        									 </c:url>" class="list-group-item"><%=tableList.getString(i)%></a>    
						
						<% 
						}
						
					}
					catch(JSONException e){
						
						e.getStackTrace();
						
					}
					
					
               			 %>
                            </div>
                        </div>
                        
                        
                   
                                </div>
                                
                            </div>
                            </div>
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

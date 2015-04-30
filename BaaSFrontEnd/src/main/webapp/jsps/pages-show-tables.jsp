<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<%@include file="metaAndCss.jsp"%>

<%@page import="com.sjsu.cmpe295.appbaas.model.TableDetailModel"%>
<%@page
	import="com.sjsu.cmpe295.appbaas.servicemanager.GetTableDetailsServiceManager"%>

<%@page import="java.util.List"%>
<%
	TableDetailModel tabObj = (TableDetailModel) session
			.getAttribute("tableDetailsjsp");
%>
</head>
<body>
	<!-- START PAGE CONTAINER -->
	<div class="page-container">
		<!-- START PAGE SIDEBAR -->
		<%@ include file="sidebar.jsp"%>
		<!-- END PAGE SIDEBAR -->
		<!-- PAGE CONTENT -->
		<div class="page-content">

			<%@ include file="header.jsp"%>


			<!-- PAGE CONTENT WRAPPER -->
			<div class="page-content-wrap">
				<div class="row">
					<div class="col-md-6">
						<div class="panel panel-default">
							<div class="panel-heading">
								<%
									String tableName = tabObj.getTableName().substring(
											tabObj.getTableName().indexOf("_") + 1);
									String objKey = "";
								%>

								<h3 class="panel-title"><%=tableName%></h3>
							</div>
							<div class="panel-body">

								<div class="table-responsive">
									<table class="table table-bordered">
										<%
											int columnSize = tabObj.getColumns().size();
										%>
										<%
											for (int j = 0; j < tabObj.getColumns().size(); j++) {
										%>
										<th><%=tabObj.getColumns().get(j).getColumnName()%></th>
										<%
											}
										%>
										<th> Action </th>
										<%
											for (int k = 0; k < tabObj.getRows().size(); k += columnSize) {
										%>
										<tr>
											<%
												for (int l = 0; l < columnSize; l++) {
											%>
											<td><%=tabObj.getRows().get(k + l).getValue()%><%System.out.println(k+l); %></td>
											<%
 											}
 										%>
 										<td>
 										 <a href="
                          					 <c:url value="">
       										 <c:param name="action" value="<%=tabObj.getRows().get(k + (columnSize-1)).getValue()%>"/>
       										 </c:url>">Update</a>
 										</td>
										</tr>						
										<%
											}
										%>


									</table>
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

	<%@ include file="MessageBoxAndPreloads.jsp"%>
	<%@ include file="scripts.jsp"%>
</body>
</html>

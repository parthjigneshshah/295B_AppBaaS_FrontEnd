<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>        
        <%@include file = "metaAndCss.jsp" %>  
        <script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="../js/fusioncharts.charts.js"></script>
		<script type="text/javascript" src="../js/fusioncharts.js"></script>
	<%@page import="com.sjsu.cmpe295.appbaas.servlet.AnalyticsServlet" %>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.io.*,java.util.*" %>
<%ArrayList<String> countList;
countList = (ArrayList<String>)session.getAttribute("countArrayList");
System.out.println(countList.get(1));
%>
<script type="text/javascript">
FusionCharts.ready(function () {
    var revenueChart = new FusionCharts({
        type: 'doughnut2d',
        renderAt: 'chart-container',
        width: '450',
        height: '450',
        dataFormat: 'json',
        dataSource: {
            "chart": {
                
                "numberPrefix": "$",
                "paletteColors": "#0075c2,#1aaf5d,#f2c500,#f45b00,#8e0000",
                "bgColor": "#ffffff",
                "showBorder": "0",
                "use3DLighting": "0",
                "showShadow": "0",
                "enableSmartLabels": "0",
                "startingAngle": "310",
                "showLabels": "0",
                "showPercentValues": "1",
                "showLegend": "1",
                "legendShadow": "0",
                "legendBorderAlpha": "0",
                "defaultCenterLabel": "Total revenue: $64.08K",
                "centerLabel": "Revenue from $label: $value",
                "centerLabelBold": "1",
                "showTooltip": "0",
                "decimals": "0",
                "captionFontSize": "14",
                "subcaptionFontSize": "14",
                "subcaptionFontBold": "0"
            },
            "data": [
                {
                    "label": "activeDevelopers",
                    "value": <%=countList.get(0)%>
                }, 
                {
                    "label": "totalDevelopers",
                    "value": <%=countList.get(1)%>
                },
                {
                    "label": "neverLoggedUsers",
                    "value": <%=countList.get(2)%>
                }, 
                {
                    "label": "inActiveDevelopers",
                    "value": <%=countList.get(3)%>
                }
            ]
        }
    }).render();
});
</script>
<script type="text/javascript">
<%response.setIntHeader("Refresh",30); %>
FusionCharts.ready(function () {
    var revenueChart = new FusionCharts({
        type: 'column3d',
        renderAt: 'chart-container2',
        width: '500',
        height: '300',
        dataFormat: 'json',
        dataSource: {
            "chart": {
               "xAxisName": "Types of Services",
                "yAxisName": "Total Count",
                "paletteColors": "#0075c2",
                "valueFontColor": "#ffffff",
                "baseFont": "Helvetica Neue,Arial",
                "captionFontSize": "14",
                "subcaptionFontSize": "14",
                "subcaptionFontBold": "0",
                "placeValuesInside": "1",
                "rotateValues": "1",
                "showShadow": "0",
                "divlineColor": "#999999",               
                "divLineIsDashed": "1",
                "divlineThickness": "1",
                "divLineDashLen": "1",
                "divLineGapLen": "1",
                "canvasBgColor": "#ffffff"
            },

            "data": [
                     {
                         "label": "UserManeger",
                         "value": <%=countList.get(0)%>
                     }, 
                     {
                         "label": "ObjectManager",
                         "value": <%=countList.get(1)%>
                     },
                     {
                         "label": "NotificationManager",
                         "value": <%=countList.get(2)%>
                     }, 
                     {
                         "label": "AnalyticsManager",
                         "value": <%=countList.get(3)%>
                     }
                 ]
        }
    });
    revenueChart.render();
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
                        <div class="col-md-6">

                            <!-- START LINE CHART -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Services Registered by App Developers</h3>                                
                                </div>
                                <div class="panel-body">
                                 <div id="chart-container"></div>
                                </div>
                            </div>
                            <!-- END LINE CHART -->

                        </div>
                        <div class="col-md-6">

                            <!-- START Area CHART -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">User Registration For Different Services</h3>                                
                                </div>
                                <div class="panel-body">
                                  <div id="chart-container2" style = "height: 450px"></div>
                                </div>
                            </div>
                            <!-- END Area CHART -->                        

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

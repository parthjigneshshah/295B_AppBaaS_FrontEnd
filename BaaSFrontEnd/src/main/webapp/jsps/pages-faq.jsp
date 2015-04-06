<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>        
        <%@include file = "metaAndCss.jsp" %>  
        <style type="text/css"></style>
	<style>
  #map-canvas{
	width:200px;
	height:400px;
	background-color:#CC;
	
  }
  </style>
   <script src="https://maps.googleapis.com/maps/api/js"></script>
  <script>
	function initialize(){
	var mapCanvas= document.getElementById('map-canvas');
	var map= new google.maps.Map(mapCanvas);
	   var mapOptions = {
      center: new google.maps.LatLng(37.335413, -121.881072),
      zoom: 15,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    }
	var map= new google.maps.Map(mapCanvas,mapOptions);
	}
	  	google.maps.event.addDomListener(window, 'load', initialize);

  </script>
    </head>
    <body>
        <!-- START PAGE CONTAINER -->
        <div class="page-container" style = "background: none repeat scroll 0 0 #f5f5f5;">
         <%@ include file= "header.jsp" %>
            <!-- START PAGE SIDEBAR -->
             
            <!-- END PAGE SIDEBAR -->
            <!-- PAGE CONTENT -->
            <div class="page-content" style = "margin:60px">
                
              
                                 
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                     <div class="row">
                        <div class="col-md-8">
                         <div class="col-md-8">
                 			           <div class="panel panel-default">
                 			            <div class="panel-heading">
                                    <h3 class="panel-title">About Us</h3>
                                </div>
                                <div class="panel-body" align = "center">
                                    
                                </div>
                               </div>
                              
                                
                               </div>
                                <div class="col-md-4">
                 			           <div class="panel panel-default">
                 			            <div class="panel-heading">
                                    <h3 class="panel-title">Location</h3>
                                </div>
                                <div class="panel-body" align = "center">
                                   
                                    <div class="faq-title">
                                     <span class="fa fa-map-marker"> </span> 
                                  	<p>
                                  	<strong>Address</strong></p>
                                  	<p> 1 Washington Square, <br/> San Jose, <br/> CA - 95112.<br/></p>
                                  	
                                     </div>
                                     <div id="map-canvas" align = "center"></div>
                                     
                                </div>
                               </div>
                              
                                
                               </div>
                                
                             
                                          
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3 class="push-down-0">General Quesions</h3>
                                </div>
                                <div class="panel-body faq">
                                    
                                    <div class="faq-item">
                                        <div class="faq-title"><span class="fa fa-angle-down"></span>How to aliquam at ipsum sapien?</div>
                                        <div class="faq-text">
                                            <h5>Aliquam at ipsum sapien</h5>
                                            <p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec adipiscing vehicula tortor dapibus adipiscing.</p>
                                            <p>Nullam quis quam massa. Donec vitae metus tortor. Vestibulum vel diam orci. Etiam sollicitudin venenatis justo ut posuere. Etiam facilisis est ut ligula ornare accumsan. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>
                                        </div>
                                    </div>
                                    
                                    <div class="faq-item">
                                        <div class="faq-title"><span class="fa fa-angle-down"></span>Nunc pellentesque sagittis pulvinar?</div>
                                        <div class="faq-text">
                                            <h5>Pellentesque sagittis pulvinar</h5>
                                            <p>Nunc pellentesque sagittis pulvinar. Donec et bibendum dolor. Praesent commodo facilisis dui, vitae euismod ipsum aliquam gravida. Nulla aliquet fringilla velit sit amet dignissim. Sed justo ex, mattis sed venenatis sit amet, varius at urna. Donec erat nunc, tempus id tortor vel, consequat pulvinar nisl. Donec sed felis in erat malesuada tincidunt pulvinar in lorem.</p>
                                            <p>Etiam rutrum, leo ut molestie hendrerit, quam elit semper nunc, eget ullamcorper sem ligula a nisl. Phasellus aliquam efficitur elit sed ullamcorper. Quisque porttitor ac turpis quis sodales.</p>
                                            <h5>Hendrerit luctus</h5>
                                            <p>Nulla dapibus turpis ornare est hendrerit luctus. Nam id turpis sapien. Quisque non fermentum nisl. In sagittis nibh non dolor condimentum sodales.</p>
                                        </div>
                                    </div>
                                    
                                    <div class="faq-item">
                                        <div class="faq-title"><span class="fa fa-angle-down"></span>Donec libero nisl, hendrerit vel tempus at?</div>
                                        <div class="faq-text">
                                            <h5>Cras ac odio faucibus tortor pretium</h5>
                                            <p>Cras ac odio faucibus tortor pretium tristique in id nisl. Donec libero nisl, hendrerit vel tempus at, posuere vel urna. Nam sed consectetur lectus. Sed sit amet risus dolor. Duis accumsan lorem ac quam egestas pretium.</p>
                                            <p>Curabitur finibus nisl ac aliquet mattis. Aliquam convallis bibendum lorem sed lobortis. Cras aliquam urna sed luctus tincidunt.</p>
                                            <h5>Nulla ullamcorper</h5>
                                            <p>In diam turpis, tristique nec cursus in, blandit vel elit. Nulla ullamcorper, ex in ultrices fringilla, nisi sapien hendrerit dolor, in suscipit mauris turpis id erat.</p>
                                            <p>Nunc facilisis odio vitae eros rutrum, eget rutrum nulla rhoncus. Etiam laoreet pretium ex ut gravida. In venenatis turpis sit amet volutpat bibendum.</p>
                                        </div>
                                    </div>
                                    
                                    <div class="faq-item">
                                        <div class="faq-title"><span class="fa fa-angle-down"></span>Vestibulum vel diam orci?</div>
                                        <div class="faq-text">
                                            <h5>Aliquam at ipsum sapien</h5>
                                            <p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec adipiscing vehicula tortor dapibus adipiscing.</p>
                                            <p>Nullam quis quam massa. Donec vitae metus tortor. Vestibulum vel diam orci. Etiam sollicitudin venenatis justo ut posuere. Etiam facilisis est ut ligula ornare accumsan. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>
                                        </div>
                                    </div>
                                    
                                    <div class="faq-item">
                                        <div class="faq-title"><span class="fa fa-angle-down"></span>Nam id turpis sapien?</div>
                                        <div class="faq-text">
                                            <h5>Pellentesque sagittis pulvinar</h5>
                                            <p>Nunc pellentesque sagittis pulvinar. Donec et bibendum dolor. Praesent commodo facilisis dui, vitae euismod ipsum aliquam gravida. Nulla aliquet fringilla velit sit amet dignissim. Sed justo ex, mattis sed venenatis sit amet, varius at urna. Donec erat nunc, tempus id tortor vel, consequat pulvinar nisl. Donec sed felis in erat malesuada tincidunt pulvinar in lorem.</p>
                                            <p>Etiam rutrum, leo ut molestie hendrerit, quam elit semper nunc, eget ullamcorper sem ligula a nisl. Phasellus aliquam efficitur elit sed ullamcorper. Quisque porttitor ac turpis quis sodales.</p>
                                            <h5>Hendrerit luctus</h5>
                                            <p>Nulla dapibus turpis ornare est hendrerit luctus. Nam id turpis sapien. Quisque non fermentum nisl. In sagittis nibh non dolor condimentum sodales.</p>
                                        </div>
                                    </div>
                                    
                                    <div class="faq-item">
                                        <div class="faq-title"><span class="fa fa-angle-down"></span>Nulla ullamcorper, ex in ultrices fringilla?</div>
                                        <div class="faq-text">
                                            <h5>Cras ac odio faucibus tortor pretium</h5>
                                            <p>Cras ac odio faucibus tortor pretium tristique in id nisl. Donec libero nisl, hendrerit vel tempus at, posuere vel urna. Nam sed consectetur lectus. Sed sit amet risus dolor. Duis accumsan lorem ac quam egestas pretium.</p>
                                            <p>Curabitur finibus nisl ac aliquet mattis. Aliquam convallis bibendum lorem sed lobortis. Cras aliquam urna sed luctus tincidunt.</p>
                                            <h5>Nulla ullamcorper</h5>
                                            <p>In diam turpis, tristique nec cursus in, blandit vel elit. Nulla ullamcorper, ex in ultrices fringilla, nisi sapien hendrerit dolor, in suscipit mauris turpis id erat.</p>
                                            <p>Nunc facilisis odio vitae eros rutrum, eget rutrum nulla rhoncus. Etiam laoreet pretium ex ut gravida. In venenatis turpis sit amet volutpat bibendum.</p>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            
              
                            
                        </div>                        
                        <div class="col-md-4">
                            
                            <div class="panel panel-primary">
                                <div class="panel-body">
                                    <h3>Search</h3>
                                    <form id="faqForm">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="faqSearchKeyword" placeholder="Search..."/>
                                            <div class="input-group-btn">
                                                <button class="btn btn-primary" id="faqSearch">Search</button>
                                            </div>
                                        </div>
                                    </form>
                                    <div class="push-up-10"><strong>Search Result:</strong> <span id="faqSearchResult">Please fill keyword field</span></div>
                                    <div class="push-up-10">
                                        <button class="btn btn-primary" id="faqRemoveHighlights">Remove Highlights</button>
                                        <div class="pull-right">
                                            <button class="btn btn-default" id="faqOpenAll"><span class="fa fa-angle-down"></span> Open All</button>
                                            <button class="btn btn-default" id="faqCloseAll"><span class="fa fa-angle-up"></span> Close All</button>
                                        </div>                                       
                                    </div>                                    
                                </div>
                            </div>
                            
                            <div class="panel panel-primary">
                                <div class="panel-body">
                                    <h3>Contact</h3>
                                    <p>Feel free to contact us for any issues you might have with our products.</p>
                                    <div class="form-group">
                                        <label>E-mail</label>
                                        <input type="email" class="form-control" placeholder="youremail@domain.com">
                                    </div>
                                    <div class="form-group">
                                        <label>Subject</label>
                                        <input type="email" class="form-control" placeholder="Message subject">
                                    </div>                                
                                    <div class="form-group">
                                        <label>Message</label>
                                        <textarea class="form-control" placeholder="Your message" rows="3"></textarea>
                                    </div>                                
                                </div>
                                <div class="panel-footer">
                                    <button class="btn btn-default"><span class="fa fa-paperclip"></span> Add attachment</button>
                                    <button class="btn btn-success pull-right"><span class="fa fa-envelope-o"></span> Send</button>
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

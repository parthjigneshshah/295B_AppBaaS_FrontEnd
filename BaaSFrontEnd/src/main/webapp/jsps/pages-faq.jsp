<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>        
        <%@include file = "metaAndCss.jsp" %>  
        <style type="text/css"></style>
	<style>
  #map-canvas{
	width:450px;
	height:500px;
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
         <%@ include file= "HomePageHeader.jsp" %>
            <!-- START PAGE SIDEBAR -->
             
            <!-- END PAGE SIDEBAR -->
            <!-- PAGE CONTENT -->
            <div class="page-content" style = "margin:60px">
                
              
                                 
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                     <div class="row">
                        <div class="col-md-12">
                         <div class="col-md-7">
                 			           <div class="panel panel-default">
                 			            <div class="panel-heading">
                                    <h3 class="panel-title">About Us</h3>
                                </div>
                                <div class="panel-body" align = "left">
                                    <h4>
                                    AppBaas as a perfect cloud based solution for backend of your applications:
                                    </h4>
                                    <p> 
                                    Application Backend as a service provides a complete solution for the backend implementation with most of the commonly used backend services. It gives you the ability of rapid development of applications to meet your user needs. 
                                     </p>
                                     <p>
                                     Our cloud based Solution makes the scaling of your application very easy. AppBaas also includes analytics dashboard which gives you an insight about your users and also where the traffic is coming from.
                                     <br/>
                                     </p>
                                    <h4> SDK </h4> 
                                    <p>
                                    AppBaas also includes a SDK for you to access and develop your own custom functionalities, the SDK comes with proper documentation for a developer to use. 
                                     </p>
                                    <br/>
                                    <br/>
                                    <br/>
                                    
                                    <p>
                                    
                                    Contact us: <br/>
                                    developer@appbaas.com <br/>
                                    1 Washington Square, <br/> San Jose, CA - 95112.
                                    </p>
                                </div>
                               </div>
                                                          
                               </div>
                                <div class="col-md-5">
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
                                    <h3 class="push-down-0">FAQ</h3>
                                </div>
                                <div class="panel-body faq">
                                    
                                    <div class="faq-item">
                                        <div class="faq-title"><span class="fa fa-angle-down"></span>What is considered an API request?</div>
                                        <div class="faq-text">
                                          <!--  <h5>Aliquam at ipsum sapien</h5> -->
                                          
                                            <p>
                                            
                                            Anytime you make a network call to AppBaas on behalf of your app using one of the AppBaas SDKs or REST API, it counts as an API request. This does include things like queries, saves, logins, amongst other kinds of requests. It also includes requests to send push notifications, although this is seen as a single request regardless of how many recipients are targeted. Serving AppBaas files counts as an API request, including static assets served from AppBaas Hosting. Analytics requests do have a special exemption. You can send us your analytics events any time without being limited by your app's request limit.
                                            </p>
                                        </div>
                                        
                                        
                                    </div>
                                      <div class="faq-item">
                                        <div class="faq-title"><span class="fa fa-angle-down"></span>How frequently can I increase/decrease my request limit?</div>
                                        <div class="faq-text">
                                          
                                          
                                            <p>
                                            You can increase/decrease your request/limit as frequently as you would like within a given month. We will prorate your charges on an hourly basis.
                                            </p>
                                        </div>
                                        
                                        
                                        
                                        
                                         </div>
                                      <div class="faq-item">
                                        <div class="faq-title"><span class="fa fa-angle-down"></span>Do you offer autoscaling?</div>
                                        <div class="faq-text">
                                            <p>
												No. We do not adjust your app's request limit automatically.    
											</p>
                                        </div>
                                        
                                        
                                        
                                        
                                        </div>
                                      <div class="faq-item">
                                        <div class="faq-title"><span class="fa fa-angle-down"></span>What happens if I increase my request limit and my app does not exceed this limit?</div>
                                        <div class="faq-text">
                                            <p>
											When you increase your request limit, you're provisioning additional capacity ahead of time. Your account will be billed according to the request limit that has been set, regardless of how many requests your app made.											
											</p>
                                        </div>
                                        
                                        
                                        
                                        
                                        
                                        <!-- 
                                        
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
                                    -->
                                </div>
                            </div>
                            
              
                            
                        </div>                        
                        <div class="col-md-4">
                            
                    <!--         <div class="panel panel-primary">
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
                            </div> -->
                            
                         <!--   <div class="panel panel-primary">
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
                            </div> -->
                            
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

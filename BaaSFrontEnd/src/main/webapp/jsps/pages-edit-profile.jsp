<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>        
        <%@include file = "metaAndCss.jsp" %>  
    </head>
    <body>
        <!-- START PAGE CONTAINER -->
        <div class="page-container">
            <!-- START PAGE SIDEBAR -->
           <%@include file = "sidebar.jsp"  %>
            <!-- END PAGE SIDEBAR -->
            <!-- PAGE CONTENT -->
            <div class="page-content">
                
               <%@ include file= "header.jsp" %>
                                 
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                     <div class="row">
                        <div class="col-md-12">
                            <div class="alert alert-warning" role="alert">
                                <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                                <strong>Important!</strong> Main feature of this page is "Change photo" function. Press button "Change photo" and try to use this awesome feature.
                            </div>                            
                        </div>
                    </div>     
                    
                    <div class="row">                        
                        <div class="col-md-3 col-sm-4 col-xs-5">
                            
                            <form action="#" class="form-horizontal">
                            <div class="panel panel-default">                                
                                <div class="panel-body">
                                    <h3><span class="fa fa-user"></span> John Doe</h3>
                                    <p>Web Developer / Administrator</p>
                                    <div class="text-center" id="user_image">
                                        <img src="../assets/images/users/user2.jpg" class="img-thumbnail"/>
                                    </div>                                    
                                </div>
                                <div class="panel-body form-group-separated">
                                    
                                    <div class="form-group">                                        
                                        <div class="col-md-12 col-xs-12">
                                            <a href="#" class="btn btn-primary btn-block btn-rounded" data-toggle="modal" data-target="#modal_change_photo">Change Photo</a>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-5 control-label">#ID</label>
                                        <div class="col-md-9 col-xs-7">
                                            <input type="text" value="5221" class="form-control" disabled/>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-5 control-label">Login</label>
                                        <div class="col-md-9 col-xs-7">
                                            <input type="text" value="johndoe" class="form-control"/>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-5 control-label">E-mail</label>
                                        <div class="col-md-9 col-xs-7">
                                            <input type="text" value="johndoe@domain.com" class="form-control"/>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">                                        
                                        <div class="col-md-12 col-xs-12">
                                            <a href="#" class="btn btn-danger btn-block btn-rounded" data-toggle="modal" data-target="#modal_change_password">Change password</a>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            </form>
                            
                        </div>
                        <div class="col-md-6 col-sm-8 col-xs-7">
                            
                            <form action="#" class="form-horizontal">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3><span class="fa fa-pencil"></span> Profile</h3>
                                    <p>This information lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer faucibus, est quis molestie tincidunt, elit arcu faucibus erat.</p>
                                </div>
                                <div class="panel-body form-group-separated">
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-5 control-label">First Name</label>
                                        <div class="col-md-9 col-xs-7">
                                            <input type="text" value="John" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-5 control-label">Last Name</label>
                                        <div class="col-md-9 col-xs-7">
                                            <input type="text" value="Doe" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-5 control-label">Location</label>
                                        <div class="col-md-9 col-xs-7">
                                            <input type="text" value="London, UK" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-5 control-label">About me</label>
                                        <div class="col-md-9 col-xs-7">
                                            <textarea class="form-control" rows="5">I'm realy great web developer. Godlike with internet...</textarea>
                                        </div>
                                    </div>                                          
                                    <div class="form-group">
                                        <div class="col-md-12 col-xs-5">
                                            <button class="btn btn-primary btn-rounded pull-right">Save</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </form>
                            
                            <div class="panel panel-default tabs">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#tab1" data-toggle="tab">Contacts</a></li>
                                    <li><a href="#tab2" data-toggle="tab">Send Message</a></li>                                    
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane panel-body active" id="tab1">                                                                                
                                        
                                        <div class="list-group list-group-contacts border-bottom">
                                            <a href="#" class="list-group-item">            
                                                <div class="list-group-status status-online"></div>
                                                <img src="assets/images/users/user3.jpg" class="pull-left" alt="Nadia Ali">
                                                <span class="contacts-title">Nadia Ali</span>
                                                <p>Singer-Songwriter</p>                                    
                                                <div class="list-group-controls">
                                                    <button class="btn btn-primary btn-rounded"><span class="fa fa-pencil"></span></button>
                                                </div>                                    
                                            </a>                                                                
                                            <a href="#" class="list-group-item">                   
                                                <div class="list-group-status status-online"></div>
                                                <img src="assets/images/users/user.jpg" class="pull-left" alt="Dmitry Ivaniuk">
                                                <span class="contacts-title">Dmitry Ivaniuk</span>
                                                <p>Web Developer/Designer</p>                                    
                                                <div class="list-group-controls">
                                                    <button class="btn btn-primary btn-rounded"><span class="fa fa-pencil"></span></button>
                                                </div>                                    
                                            </a>
                                            <a href="#" class="list-group-item">                   
                                                <div class="list-group-status status-away"></div>
                                                <img src="../assets/images/users/user2.jpg" class="pull-left" alt="John Doe">
                                                <span class="contacts-title">John Doe</span>
                                                <p>UI/UX Designer</p>                     
                                                <div class="list-group-controls">
                                                    <button class="btn btn-primary btn-rounded"><span class="fa fa-pencil"></span></button>
                                                </div>
                                            </a>                                
                                        </div>
                                        
                                    </div>
                                    <div class="tab-pane panel-body" id="tab2">                                        
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
                                    
                                </div>
                                
                            </div>

                        </div>
                        
                        <div class="col-md-3">
                            <div class="panel panel-default form-horizontal">
                                <div class="panel-body">
                                    <h3><span class="fa fa-info-circle"></span> Quick Info</h3>
                                    <p>Some quick info about this user</p>
                                </div>
                                <div class="panel-body form-group-separated">                                    
                                    <div class="form-group">
                                        <label class="col-md-4 col-xs-5 control-label">Last visit</label>
                                        <div class="col-md-8 col-xs-7 line-height-30">12:46 27.11.2015</div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 col-xs-5 control-label">Registration</label>
                                        <div class="col-md-8 col-xs-7 line-height-30">01:15 21.11.2015</div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 col-xs-5 control-label">Groups</label>
                                        <div class="col-md-8 col-xs-7">administrators, managers, team-leaders, developers</div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 col-xs-5 control-label">Birthday</label>
                                        <div class="col-md-8 col-xs-7 line-height-30">14.02.1989</div>
                                    </div>
                                </div>
                                
                            </div>
                            
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3><span class="fa fa-cog"></span> Settings</h3>
                                    <p>Sample of settings block</p>
                                </div>
                                <div class="panel-body form-horizontal form-group-separated">                                    
                                    <div class="form-group">
                                        <label class="col-md-6 col-xs-6 control-label">Notifications</label>
                                        <div class="col-md-6 col-xs-6">
                                            <label class="switch">
                                                <input type="checkbox" checked value="1"/>
                                                <span></span>
                                            </label>
                                        </div>
                                    </div>                                    
                                    <div class="form-group">
                                        <label class="col-md-6 col-xs-6 control-label">Mailing</label>
                                        <div class="col-md-6 col-xs-6">
                                            <label class="switch">
                                                <input type="checkbox" checked value="1"/>
                                                <span></span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-6 col-xs-6 control-label">Priority</label>
                                        <div class="col-md-6 col-xs-6">
                                            <label class="switch">
                                                <input type="checkbox" value="0"/>
                                                <span></span>
                                            </label>
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

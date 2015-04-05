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
                
                <!-- START X-NAVIGATION VERTICAL -->
               
                <%@ include file= "header.jsp" %>
                
                <!-- PAGE TITLE -->
                <div class="page-title">                    
                    <h2><span class="fa fa-arrow-circle-o-left"></span> Form Wizards</h2>
                </div>
                <!-- END PAGE TITLE -->                
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">                
                
                    <div class="row">
                        <div class="col-md-12">



                            

                            <!-- START WIZARD WITH VALIDATION -->
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3>Submit an Application Form</h3>                                
                                    <form action="javascript:alert('Validated!');" role="form" class="form-horizontal" id="wizard-validation">
                                    <div class="wizard show-submit wizard-validation">
                                        <ul>
                                            <li>
                                                <a href="#step-1">
                                                    <span class="stepNumber">1</span>
                                                    <span class="stepDesc">Application Detail<br /><small>Information</small></span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#step-2">
                                                    <span class="stepNumber">2</span>
                                                    <span class="stepDesc">Service Selection<br /><small>Services offered</small></span>
                                                </a>
                                            </li>  
                                            <li>
                                                <a href="#step-3">
                                                    <span class="stepNumber">3</span>
                                                    <span class="stepDesc">Application Review<br /><small>Review</small></span>
                                                </a>
                                            </li>
                                                                            
                                        </ul>

                                        <div id="step-1">   

                                           <div class="form-group">
                                                <label class="col-md-2 control-label">Application Name</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" name="applicationname" placeholder="Application Name"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                            <label class="col-md-2 control-label">Application Type</label>
                                            <div class="col-md-10">
                                            <select class="form-control" name ="typeOfApp">
                                                <option> Select </option>
                                                <option> Social Media </option>
                                                <option> Blog </option>
                                                <option> News </option>
                                                
                                                
                                            </select>
                                            </div>
                                        </div>
                                   
                                            <div class="form-group">
                                                <label class="col-md-2 control-label">Application Version</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" name="applicationversion" placeholder="Your application vesrion"/>
                                                </div>                                        
                                            </div>          

                                        </div>

                                        <div id="step-2">

                                            <div class="form-group">
                                               
                                               <div class="col-md-10">                                    
                                            <label class="check"><input type="checkbox" class="icheckbox"/> User Management</label>
                                        </div>
                                            </div>
                                            <div class="form-group">
                                               
                                               <div class="col-md-10">                                    
                                            <label class="check"><input type="checkbox" class="icheckbox"/> Data management </label>
                                        </div>
                                            </div>
                                            <div class="form-group">
                                               
                                               <div class="col-md-10">                                    
                                            <label class="check"><input type="checkbox" class="icheckbox"/> Object Management </label>
                                        </div>
                                            </div>
                                            <div class="form-group">
                                               
                                               <div class="col-md-10">                                    
                                            <label class="check"><input type="checkbox" class="icheckbox"/> Analytics Display</label>
                                        </div>
                                            </div>
                                       
                                                                                          

                                        </div>          
                                      <div id="step-3">

                                            <div class="form-group">
                                                <label class="col-md-2 control-label">Name</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" name="name" placeholder="Name"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-2 control-label">E-mail</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" name="email" placeholder="Your email"/>
                                                </div>
                                            </div>                                    
                                            <div class="form-group">
                                                <label class="col-md-2 control-label">Address</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" name="adress" placeholder="Your adress"/>
                                                </div>                                        
                                            </div>                                                     

                                        </div>            
                                                                                                                                                
                                    </div>
                                    </form>
                                </div>
                            </div>                        
                            <!-- END WIZARD WITH VALIDATION -->

                        </div>

                    </div>
                    
                </div>
                <!-- PAGE CONTENT WRAPPER -->                                
            </div>            
            <!-- END PAGE CONTENT -->
        </div>
        <!-- END PAGE CONTAINER -->
        
        <%@ include file = "MessageBoxAndPreloads.jsp" %>           
       <%@ include file = "scripts.jsp" %>  
    </body>
</html>







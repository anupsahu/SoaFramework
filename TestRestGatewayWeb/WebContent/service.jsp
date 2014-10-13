<jsp:include page="header.jsp" />
<%@ taglib prefix="s" uri="/struts-tags"%>
        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header" id="service"><s:property value="service" /></h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
						<div class="row">
				<div class="col-lg-6 sm-6" align="center">
					
						<div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">   
                                <div class="col-xs-12 text-center">
                                    <div class="huge"><s:property value="service" /></div>
                                    <div>Status: Running</div>
                                </div>
                            </div>
                        </div>
                    </div>
					<div align="center" class="panel-button">
						<button class="btn btn-primary btn-lg btn-success" type="button" id='modal-launcher' data-toggle="modal" data-target="#login-modal">Suspend</button>
					</div>
				
				</div>	
				<div class="col-lg-6 sm-6">
					<div class="panel panel-default">
                        <div class="panel-heading">
                            Stats for the day
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
							 <div class="flot-chart">
                                <div class="flot-chart-content" id="flot-pie-chart"></div>
                            </div>                   
                        </div>
                        <!-- /.panel-body -->
                    </div>	
					
				</div>
                    <!-- /.panel -->
                
			</div>
			<div class="row">
			 <div class="col-lg-6 sm-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Throughput
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
								
                           		 <div id="line-example"></div>
                    
                        </div>
                        <!-- /.panel-body -->
                    </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
			<div class="col-lg-6 sm-6">
				<div class="panel panel-default">
                        <div class="panel-heading">
                            Traffic
                        </div>
                        
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            	<div id="morris-bar-chart"></div>
						
                        </div>
                        <!-- /.panel-body -->
                    </div>
				</div>
			<!--/.panel --> 

		</div>
        </div>
        <!-- /#page-wrapper -->
        
        <!-- Popup code begins -->
        
        <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
    	<div class="modal-content">
      		<div class="modal-header login_modal_header">
        		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        		<h2 class="modal-title" id="myModalLabel">Authorization Required</h2>
      		</div>
      		<div class="modal-body login-modal">
      			<p>Please enter your Secret Code:</p>
      			<br/>
      			<div class="clearfix"></div>
      			<div id='social-icons-conatainer'>
	        		<div class='modal-body'>
		
		            	<div class="form-group">
		            	  	<input type="password" id="login-pass" placeholder="Password" value="" class="form-control login-field">
		              		<i class="fa fa-lock login-field-icon"></i>
		            	</div>
		
		            	<a href="#" class="btn btn-success modal-login-btn">Proceed</a>
	        		</div>
	        	
	        	</div>																												
        		<div class="clearfix"></div>
        		
      		</div>
    	</div>
  	</div>
</div>
        
        <!-- Popup ends -->
        
        <!-- Spinner -->
			<div id="spinner" class="modal_spinner"></div>

    </div>
    <!-- /#wrapper -->

    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="js/plugins/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/sb-admin-2.js"></script>
	
	<!-- Flot Charts JavaScript -->
    <script src="js/plugins/flot/excanvas.min.js"></script>
    <script src="js/plugins/flot/jquery.flot.js"></script>
    <script src="js/plugins/flot/jquery.flot.pie.js"></script>
    <script src="js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="js/plugins/flot/jquery.flot.tooltip.min.js"></script>
	
	<!-- Morris Charts JavaScript -->
	<script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
	<script src="js/plugins/morris/service_data.js"></script>
	
	<script src="js/vendor/modernizr-2.6.2.min.js"></script>

</body>

</html>


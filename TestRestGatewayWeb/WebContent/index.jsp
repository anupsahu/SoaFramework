<jsp:include page="header.jsp" />
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Dashboard</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">   
                                <div class="col-xs-12 text-center">
                                    <div class="huge">Collection<br/>Resource</div>
                                    <div>Status: Running</div>
                                </div>
                            </div>
                        </div>
                        <a href="service.action?service=Collection Resource">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-12 text-center">
                                    <div class="huge">Sharing<br/>Options</div>
                                    <div>Status: Running</div>
                                </div>
                            </div>
                        </div>
                        <a href="service.action?service=Sharing Options">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-12 text-center">
                                    <div class="huge">Data<br/>Usage</div>
                                    <div>Status: Stopped</div>
                                </div>
                            </div>
                        </div>
                        <a href="service.action?service=Data Usage">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-12 text-center">
                                    <div class="huge">Sharing<br/>Groups</div>
                                    <div>Status: Failed</div>
                                </div>
                            </div>
                        </div>
                        <a href="service.action?service=Sharing Groups">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
       <!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
					<h1 class="page-header">Stats</h1>
			</div>
		</div>
	   <div class="row">
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
			<div class="col-lg-6 sm-6">
				<div class="panel panel-default">
                        <div class="panel-heading">
                            Service Usage
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
			<!--/.panel --> 
			
			<!-- Spinner -->
			<div id="spinner" class="modal_spinner"></div>
		</div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
	
    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="js/plugins/metisMenu/metisMenu.min.js"></script>
    
    <!-- Flot Charts JavaScript -->
    <script src="js/plugins/flot/excanvas.min.js"></script>
    <script src="js/plugins/flot/jquery.flot.js"></script>
    <script src="js/plugins/flot/jquery.flot.pie.js"></script>
    <script src="js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="js/plugins/flot/jquery.flot.tooltip.min.js"></script>

    <!-- Morris Charts JavaScript -->
	<script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
	<script src="js/plugins/morris/index_data.js"></script>
	
	

    <!-- Custom Theme JavaScript -->
    <script src="js/sb-admin-2.js"></script>
    
    
</body>

</html>

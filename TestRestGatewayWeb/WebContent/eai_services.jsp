<jsp:include page="header.jsp" />
        <div id="page-wrapper">
            <div class="row">
            
            <div class="tree well">
    <ul>
        <li>
            <span><i class="icon-folder-open"></i> EAI Services</span>
            <ul>
                <li>
                	<span><i class="icon-minus-sign"></i> Rest Gateway Services</span> 
                    <ul>
                        <li>
	                        <span><i class="icon-leaf"></i> Collection Resource</span> 
                        </li>
                        <li>
	                        <span><i class="icon-leaf"></i> Sharing Options</span>>
                        </li>
                        <li>
	                        <span><i class="icon-leaf"></i> Data Usage</span> 
                        </li>
                        <li>
	                        <span><i class="icon-leaf"></i> Sharing Groups</span> 
                        </li>
                    </ul>
                </li>
                <li>
                	<span><i class="icon-minus-sign"></i> SBS</span>
                    <ul>
                        <li>
	                        <span><i class="icon-leaf"></i>urn:o2:accounts:accountSummary</span> 
                        </li>
                        <li>
                        	<span><i class="icon-leaf"></i>urn:o2:accounts:bills</span> 
                                </li>
                                <li>
	                                <span><i class="icon-leaf"></i>urn:o2:accounts:bills:billSummary</span> 
                                </li>
                                <li>
	                                <span><i class="icon-leaf"></i>urn:o2:accounts:bills:billSummary:appliedBillCharges:productUsage</span> 
                                </li>
                        <li>
	                        <span><i class="icon-leaf"></i>urn:o2:accounts:bills:billSummary:eventSourceSummary</span> 
                        </li>
                         <li>
	                        <span><i class="icon-leaf"></i>urn:o2:accounts:recentCharges:productUsage</span> 
                        </li>
                         <li>
	                        <span><i class="icon-leaf"></i>urn:o2:accounts:recentCharges:productUsage:productUsageDetail:eventSource</span> 
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li>
            
</div>
     
     <!-- Spinner -->
			<div id="spinner" class="modal_spinner"></div>       
            
            </div>
         </div>
         
    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="js/plugins/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/sb-admin-2.js"></script>
    
    <script>
    
    $(function () {
    $('.tree li:has(ul)').addClass('parent_li').find(' > span').attr('title', 'Collapse this branch');
    $('.tree li.parent_li > span').on('click', function (e) {
        var children = $(this).parent('li.parent_li').find(' > ul > li');
        if (children.is(":visible")) {
            children.hide('fast');
            $(this).attr('title', 'Expand this branch').find(' > i').addClass('icon-plus-sign').removeClass('icon-minus-sign');
        } else {
            children.show('fast');
            $(this).attr('title', 'Collapse this branch').find(' > i').addClass('icon-minus-sign').removeClass('icon-plus-sign');
        }
        e.stopPropagation();
    });
});
    
    </script>
    
    
</body>

</html>
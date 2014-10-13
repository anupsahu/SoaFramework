
//Flot Pie Chart
$(function() {
    var data =0;
    
    $.ajax( {
		cache: false,
		url : 'pieStats.action',
		type : "GET",
		dataType : "json",
		global: false,
		async:false,
		success : function(response) {		
			data=response.data;	
			
		},
		error : function(response) {
			
		}
	});	
 
    var plotObj = $.plot($("#flot-pie-chart"), data, {
        series: {
            pie: {
                show: true
            }
        },
        grid: {
            hoverable: true
        },
        tooltip: true,
        tooltipOpts: {
            content: "%p.0%, %s", // show percentages, rounding to 2 decimal places
            shifts: {
                x: 20,
                y: 0
            },
            defaultTheme: false
        }
    });

});






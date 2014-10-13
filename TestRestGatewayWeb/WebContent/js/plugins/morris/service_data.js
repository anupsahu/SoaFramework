/*
 * Play with this code and it'll update in the panel opposite.
 *
 * Why not try some of the options above?
 */
var serviceBarData=0;
var serviceLineData=0;
var servicePieData=0;
		
$.ajax( {
	
	cache: false,
	url : 'serviceStats.action',
	data: { service: document.getElementById("service").innerHTML },
	type : "GET",
	dataType : "json",
	global: false,
	async:false,
	success : function(response) {		
		serviceBarData=response.serviceBarData.data;
		serviceLineData=response.serviceLineData.data;
		servicePieData=response.servicePieData.data;
	},
	error : function(response) {

	}
});	

Morris.Bar({
  element: 'morris-bar-chart',
  data: serviceBarData,
  xkey: 'y',
  ykeys: ['a', 'b'],
  labels: ['Success', 'Failure']
});


Morris.Line({
  element: 'line-example',
  data: serviceLineData,
  xkey: 'y',
  ykeys: ['a'],
  labels: ['Throughput']
});

$(function() {
   
    var plotObj = $.plot($("#flot-pie-chart"), servicePieData, {
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
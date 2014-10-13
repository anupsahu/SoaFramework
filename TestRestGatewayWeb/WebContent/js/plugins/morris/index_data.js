/*
 * Play with this code and it'll update in the panel opposite.
 *
 * Why not try some of the options above?
 */
var barData=0;
var pieData=0;
		$.ajax({
			cache: false,
			url : 'indexStats.action',
			type : "GET",
			dataType : "json",
			global: false,
			async:false,
			success : function(response) {		
				barData=response.barData.data;
				pieData=response.pieData.data;
			},
			error : function(response) {

			}
		});	
		
Morris.Bar({
  element: 'morris-bar-chart',
  data: barData,
  xkey: 'y',
  ykeys: ['a', 'b'],
  labels: ['Success', 'Failure']
});

$(function() {
    
    var plotObj = $.plot($("#flot-pie-chart"), pieData, {
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


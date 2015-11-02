<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	    <title>Creative - Bootstrap Admin Template</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		
		<!-- IMPORT DE ARQUIVOS CSS -->
		
		<!-- Bootstrap CSS -->    
   		<asset:stylesheet src="bootstrap.min.css"/>
	    <!-- bootstrap theme -->
	    <asset:stylesheet src="bootstrap-theme.css"/>
	    <!--external css-->
	    <!-- font icon -->
	    <asset:stylesheet src="elegant-icons-style.css"/>
	    <asset:stylesheet src="font-awesome.css"/>
	    <!-- full calendar css-->
	    <asset:stylesheet src="fullcalendar/bootstrap-fullcalendar.css"/>
	    <asset:stylesheet src="fullcalendar/fullcalendar.css"/>
	    <!-- easy pie chart-->
	    <asset:stylesheet src="jquery.easy-pie-chart.css"/>
	    <!-- owl carousel -->
	    <asset:stylesheet src="owl.carousel.css"/>
	    <asset:stylesheet src="jquery-jvectormap-1.2.2.css"/>
	    <!-- Custom styles -->
	    <asset:stylesheet src="fullcalendar.css"/>
		<asset:stylesheet src="widgets.css"/>
		<asset:stylesheet src="style.css"/>
		<asset:stylesheet src="style-responsive.css"/>
		<asset:stylesheet src="xcharts.min.css"/>
		<asset:stylesheet src="jquery-ui-1.10.4.min.css"/>
		<g:layoutHead/>
	</head>
	<body>
		<section id="container" class="">
			<g:render template="shared/header" />
			<g:render template="shared/navbar" />
			<g:layoutBody/>
		</section>
		
		<!-- IMPORT DE JAVASCRIPTS -->
		
		<asset:javascript src="jquery.js" />
		<asset:javascript src="jquery-ui-1.10.4.min.js" />
		<asset:javascript src="jquery-1.8.3.min.js" />
		<asset:javascript src="jquery-ui-1.9.2.custom.min.js" />
	    <!-- bootstrap -->
	    <asset:javascript src="bootstrap.js" />
	    <!-- nice scroll -->
	    <asset:javascript src="jquery.scrollTo.min.js" />
	    <asset:javascript src="jquery.nicescroll.js" />
	    <!-- charts scripts -->
	    <asset:javascript src="jquery.knob.js" />
	    <asset:javascript src="jquery.sparkline.js" />
	    <asset:javascript src="jquery.easy-pie-chart.js" />
	    <asset:javascript src="owl.carousel.js" />
	    <!-- jQuery full calendar -->
	    <asset:javascript src="fullcalendar.min.js" />
	    <asset:javascript src="fullcalendar/fullcalendar.js" />
	    <!--script for this page only-->
	    <asset:javascript src="calendar-custom.js" />
	    <asset:javascript src="jquery.rateit.min.js" />
	    <!-- custom select -->
	    <asset:javascript src="jquery.customSelect.min.js" />
	    <asset:javascript src="Chart.js" />
	    <!--custome script for all page-->
	    <asset:javascript src="scripts.js" />
	    <!-- custom script for this page-->
	    <asset:javascript src="sparkline-chart.js" />
	    <asset:javascript src="easy-pie-chart.js" />
	    <asset:javascript src="jquery-jvectormap-1.2.2.min.js" />
	    <asset:javascript src="jquery-jvectormap-world-mill-en.js" />
	    <asset:javascript src="xcharts.min.js" />
	    <asset:javascript src="jquery.autosize.min.js" />
	    <asset:javascript src="jquery.placeholder.min.js" />
	    <asset:javascript src="gdp-data.js" />
	    <asset:javascript src="morris.min.js" />
	    <asset:javascript src="sparklines.js" />
	    <asset:javascript src="charts.js" />
	    <asset:javascript src="jquery.slimscroll.min.js" />
		<script>
			//knob
			$(function() {
				$(".knob").knob({
					'draw' : function() {
						$(this.i).val(this.cv + '%')
					}
				})
			});
	
			//carousel
			$(document).ready(function() {
				$("#owl-slider").owlCarousel({
					navigation : true,
					slideSpeed : 300,
					paginationSpeed : 400,
					singleItem : true
	
				});
			});
	
			//custom select box
	
			$(function() {
				$('select.styled').customSelect();
			});
	
			/* ---------- Map ---------- */
			$(function() {
				$('#map').vectorMap({
					map : 'world_mill_en',
					series : {
						regions : [ {
							values : gdpData,
							scale : [ '#000', '#000' ],
							normalizeFunction : 'polynomial'
						} ]
					},
					backgroundColor : '#eef3f7',
					onLabelShow : function(e, el, code) {
						el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
					}
				});
			});
		</script>
	</body>
</html>

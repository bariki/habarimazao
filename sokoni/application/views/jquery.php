<script type="text/javascript" src="<?php echo base_url(); ?>theme/js/jquery.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>theme/js/jquery-ui-1.8.21.custom.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>theme/js/jquery.Tooltip.js"></script>
<script type="text/javascript">
	
	$(document).ready(function() {

		$('#b1').dTooltip({
			  angle: 180, 
			  content: ' + kupanda kwa bei<br/> - kushuka kwa bei',
			  cssClass: 'dtooltipOpacity',
			  arrowSize: 20,
			  hideDelay: 300
		});
		$('#b2').dTooltip({
			  angle: 180, 
			  content: ' + kupanda kwa bei<br/> - kushuka kwa bei',
			  cssClass: 'dtooltipOpacity',
			  arrowSize: 20,
			  hideDelay: 300
		});
		$('#b3').dTooltip({
			  angle: 180, 
			  content:' + kupanda kwa bei<br/> - kushuka kwa bei',
			  cssClass: 'dtooltipOpacity',
			  arrowSize: 20,
			  hideDelay: 300
		});
		$('#b4').dTooltip({
			  angle: 180, 
			  content:' + kupanda kwa bei<br/> - kushuka kwa bei',
			  cssClass: 'dtooltipOpacity',
			  arrowSize: 20,
			  hideDelay: 300
		});
		$('#b5').dTooltip({
			  angle: 180, 
			  content:' + kupanda kwa bei<br/> - kushuka kwa bei',
			  cssClass: 'dtooltipOpacity',
			  arrowSize: 20,
			  hideDelay: 300
		});
		$('#b6').dTooltip({
			  angle: 180, 
			  content:' + kupanda kwa bei<br/> - kushuka kwa bei',
			  cssClass: 'dtooltipOpacity',
			  arrowSize: 20,
			  hideDelay: 300
		});


		$('#lang').dTooltip({
			  angle: 90, 
			  content: 'Samahani, Mfumo wa kubadilisha Lugha, bado uko katika matengenezo',
			  cssClass: 'dtooltipOpacity',
			  arrowSize: 10,
			  // hideDelay: 1000
		});

		var tooltip = $('#sticky_box').dTooltip({
			angle: 180, 
			content: 'Sogeza mshale katika kibox cha kikundi cha mazao',
		  	cssClass: 'dtooltipOpacity',
			arrowSize: 10,
			// hideEvent: null
		});

		$('#close_tooltip').click(function() {
		  tooltip.remove();
		});

		
	});
</script>

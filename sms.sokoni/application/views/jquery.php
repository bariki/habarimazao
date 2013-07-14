<script type="text/javascript" src="<?php echo base_url(); ?>theme/js/jquery.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>theme/js/jquery-ui-1.8.21.custom.min.js"></script>
<script type="text/javascript">
	
	$(document).ready(function() {
		$('.box_help').click(function() {
			console.log("item clicked");
			$( "#dialog" ).dialog( "open" );
		});

		$(function() {
	    $( "#dialog" ).dialog({
	      autoOpen: false,
	      show: {
	        effect: "blind",
	        duration: 1000
	      },
	      hide: {
	        effect: "explode",
	        duration: 1000
	      }
	    });
 
	    $( "#opener" ).click(function() {
	      $( "#dialog" ).dialog( "open" );
	    });
	  });
		
	});

	

</script>

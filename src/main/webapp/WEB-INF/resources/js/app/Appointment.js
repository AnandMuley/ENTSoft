$(document).ready(function(){
	
	
	var items = '#{searchResults.appointments}';
	
	$('.details-icon').click(function(){
		var id = $(this).attr('title');
		var details = $('#appointmentDetails'+id).html();
		console.log('TITE: '+details);
		$('#appointmentDetails').html(details);
	});
	
});
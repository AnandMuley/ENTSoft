$(document).ready(function(){
	
	$('.editBtn').click(function(event){
		var patId = parseInt(event.target.id.substr(4));
		$('#pid').val(patId);
		$('#editPatientFrm').submit();
	});
	
	$('.deleteBtn').click(function(event){
		var patId = parseInt(event.target.id.substr(3));
		$('#pid').val(patId);
		$('#editPatientFrm').attr('action','delete');
		$('#editPatientFrm').submit();
	});
	
	$('.opdpaper').click(function(event){
		var patId = parseInt(event.target.id.substr(12));
		$('#pid').val(patId);
		$('#editPatientFrm').attr('action','../opdpaper');
		$('#editPatientFrm').submit();
	});
	
});
/**
 * 
 */
$(document).ready(function(){
    $('.iDATA').blur(function() {
    /*	alert("inside blur");*/
		var data = $(this).val();
		if((data.length < 6) || (data.length > 50))
			$(this).addClass('warning');
		else $(this).removeClass('warning');
	})
});
/**
 * 
 */

function loadOrder() {
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			document.getElementById("idContent").innerHTML = this.responseText;
		}
	};
	alert("load");
	xhttp.open("GET", "order_registration.jsp", true);
	xhttp.send();
}

$(document).ready(function() {
	$("#course_list").click(function() {
		var page = "course_list";
		$.get('http://localhost:8080/FAMS1/CourseController', {
			page : page
		}, function(responseText) {
			$("#idContent").html(responseText);
		});

	});

	$("#course_add").click(function() {
		var page = "course_add";
		$.get('http://localhost:8080/FAMS1/CourseController', {
			page : page
		}, function(responseText) {
			$("#idContent").html(responseText);
		});

	});
});

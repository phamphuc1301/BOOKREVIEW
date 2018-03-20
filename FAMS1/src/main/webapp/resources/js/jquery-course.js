/**
 * 
 */
$(document).ready(function() {
	$("#save").click(function() {
		var courseCode = $("#course_code").val();
		var courseTitle = $("#course_title").val();
		var duration = $("#duration").val();
		var descriptions = $("#descriptions").val();
		alert(courseTitle);
		$.post('http://localhost:8080/FAMS1/CourseController', {
			courseCode : courseCode,
			courseTitle : courseTitle,
			duration : duration,
			descriptions : descriptions
		}, function(responseText) {
			$("#idContent").html(responseText);
		});
	});
	
	
	
	$("#edit").click(function(){
		var courseCode =document.getElementsByName("course_code")[0].value;
		var result = confirm("Do you want to delete this course?");
		if(result) alert("Delete done");
	});
});

function editFunc(courseCode){
	$.post('http://localhost:8080/FAMS1/EditCourseController', {
		courseCode : courseCode
	},function(responseText) {
		$("#idContent").html(responseText);
	});
	/*
	 * 
	 */
}
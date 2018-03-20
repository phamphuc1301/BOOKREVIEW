<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FAMS</title>
<!--  -->
<script src="<%=request.getContextPath()%>/resources/js/jquery-3.2.1.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/jquery-index.js"></script>
<!--Import css  -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/styleIndex.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/sCommonME.css">

</head>
<body>
	<div class="dINAL">
		<div class="dINHE">
			<jsp:include page="includes/common_header.jsp"/>
		</div>
		<div class="dINCO">
			<div class="dINLE">
				<div class="dMECO">
					<div class="dMELI1">Clazz Management</div>
					<div class="dMELI2">
						<a href="" id="clazz_list"><span>&#8594;</span> Clazz Information</a>
					</div>
					<div class="dMELI2">
                        <a href="#" id="clazz_add"><span>&#8594;</span> Add Clazz</a>
                    </div>
					<div class="dMELI1">Trainee Management</div>
					<div class="dMELI2">
						<a href="#" onclick="loadOrder();"><span>&#8594;</span> Trainee Pool</a>
					</div>
					<div class="dMELI2">
                        <a href="#"><span>&#8594;</span> Upload GPA</a>
                    </div>
                    <div class="dMELI2">
                        <a href="#"><span>&#8594;</span> Checkpoint</a>
                    </div>
					<div class="dMELI2">
                        <a href="#"><span>&#8594;</span> Add Trainee</a>
                    </div>
					<div class="dMELI1">Course Management</div>
					<div class="dMELI2">
                        <a href=""><span>&#8594;</span>Course List</a>
                    </div>
					<div class="dMELI2">
						<a href=""><span>&#8594;</span> Add Course</a>
					</div>
					<div class="dMELI1">Trainer Management</div>
					<div class="dMELI2">
						<a href=""><span>&#8594;</span> Trainer Pool</a>
					</div>
					<div class="dMELI2">
                        <a href=""><span>&#8594;</span> Add Trainer</a>
                    </div>
				</div>
			</div>
			<div id="idContent" class="dINRI">
				<jsp:include page="includes/Introduction.jsp"></jsp:include>
			</div>
		</div>
		<div class="fINFO">
			<jsp:include page="includes/common_footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>
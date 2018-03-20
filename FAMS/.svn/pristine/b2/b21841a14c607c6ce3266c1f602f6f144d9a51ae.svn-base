<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
<title>Sign-Up</title>
<style type="text/css">
body {
	background-color: #001a33;
}

#fixed-div {
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	height: 80px;
	background-color: #fff;
	vertical-align: middle;
	line-height: 80px;
	text-align: center;
	box-shadow: 1px 2px #888, -10px -10px #f4f4f4, 0px 0px 5px 5px #cc6600;
}

.wapper {
	margin: auto;
	height: 700px;
	width: 40%;
	border: 1px solid #ebebe0;
	margin-top: 100px;
	/* 	margin: 100px 300px 0px 300px; */
	background-color: #fff;
}

.dLABLE1 {
	text-indent: 10px;
	font-size: 20px;
	font-weight: bold;
	margin: 20px 0px 0px 10px;
	height: 50px;
	border: 0px solid;
}

.dLABLE2 {
	text-align: center;
	font-family: Candana;
	margin: 0px 40px 0px 40px;
	height: 100px;
	border: 0px solid;
}

.dFIELD {
	height: 50%;
}

p:nth-child(1) {
	font-size: 25px;
	color: #6b6b47;
}

p:nth-child(2) {
	font-size: 13px;
	color: #6b6b47;
	/*    margin: 20px 60px 20px 60px; */
}

table {
	width: 80%;
	margin: auto;
	margin-top: 10px;
	border: 0px solid;
	height: 100%;
}

input {
	width: 100%;
	height: 90%;
	text-indent: 3px;
	border-style: none;
	border: 1px solid #d6d6c2;
	border-radius: 3px;
}

td {
	padding: 5px;
}

#hID1 {
	margin: 10px 20px 20px 20px;
}

#pID1 {
	width: 100%;
	text-align: center;
	margin-top: 20px;
	color: #6b6b47;
}

.dFOOTER {
	margin-top: 10px;
	width: 100%;
	text-align: center;
}
.iSIGNIN{
    width: 50%; margin-top: 20px; height: 70%; background-color: #3399ff; border-style: none; border-radius: 2px;                     
}
.dSIGNIN{
    text-align: center; height: 25%;
}
.fSIGNIN{
    width: 100%;
    height: 80%
}
</style>
<script type="text/javascript">
function validate(){
    var first_name = document.signup_form.firstName.value;
    var last_name = document.signup_form.lastName.value;
    var email = document.signup_form.emailAddress.value;
    var pass = document.signup_form.password.value;
    var re_password = document.signup_form.confirm_pass.value;
    var message = "";
    /* check length */
    if((first_name == "") || first_name.length == 0){
        message += "The first name is not empty!";
        document.getElementsByName("firstName")[0].style.borderColor = "RED";
        
    }
  /*   else{
        document.getElementById("firstNameId").className = "sIFN";
    } */
    if((last_name=="") || (last_name.length == 0)){
        message += "The last name is not empty!";
        document.getElementsByName("lastName")[0].style.borderColor = "RED";
        
    }
    
    if(message!=""){
        alert(message);
        return false;
    }
        
        return true;

    
    
    /* || (lastName=="") ||(email) */
    
    /*check pass  */
    
    /* check email */
}

</script>
</head>
<body>

	<div id="fixed-div">
		<img alt="FPT Software" src="res\fsoft.png"
			style="width: 5%; height: 100%;">
	</div>
	<div class="wapper">
		<div class="dLABLE1">SIGN UP</div>
		<div class="dLABLE2">
			<p>Create Your Student Account</p>
			<p>Your student account is your portal to all things CTC:
				your classroom, projects, forums, career resources, and more!</p>
		</div>
		<div class="dFIELD">
		  <form action="" method="post" name="signup_form" onsubmit="return validate()" class="fSIGNIN">
			<table>
				<tr>
					<td>
					   <input type="text" name="firstName" placeholder="First Name*">
					<td><input type="text" name="lastName" placeholder="Last Name*"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="text" name="emailAddress" placeholder="Email Name*"></td>
				</tr>
				<tr>
					<td><input type="password" name="password" placeholder="Password*"></td>
					<td><input type="password" name="confirm_pass" placeholder="Confirm Password"></td>
				</tr>
				<tr>
					<td colspan="2" class="dSIGNIN">
					   <input type="submit" value="SIGN UP" class="iSIGNIN">
					</td>
				<tr>
			</table>
		  </form>
			<hr id="hID1">
			<p id="pID1">or sign up with one of these services</p>
			<div class="dFOOTER">
				<a href="#"><img alt="Facebook" src="res\Facebook2.png"></a>
				<a href="#"><img alt="Google" src="res\Google2.jpg"></a>
			</div>
		</div>
	</div>
</body>
</html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
    content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
<title>Sign-in</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/login.css">
</head>
<body>

    <div id="fixed-div">
        <img alt="FPT Software" src="<%=request.getContextPath()%>/resources/res/fsoft.png" style="width: 5%; height: 100%;">
    </div>
    <div class="wapper">
        <div class="dLABLE1">SIGN IN</div>
        <div class="dLABLE2">
            <p>Log Into Your Account</p>
            <p>Your student account is your portal to all things CTC: your classroom, projects, forums, career resources, and more!</p>
        </div>
        <div class="dFIELD">
          <form action="<%=request.getContextPath()%>/appLogin"  method="post" name="signin_form" class="fSIGNIN">
            <table>
                <tr>
                    <td><input type="text" name="username" placeholder="User Name*" class="iDATA"></td>
                </tr>
                <tr>
                    <td><input type="password" name="password" placeholder="Password*" class="iDATA" ></td>
                </tr>
                <tr>
                    <td class="dREM"><input type="checkbox" name="remember">Remember me</td>
                </tr>
                <tr>
                    <td class="dFORGOT"><a href="" class="aFORGOT">Forgot your password?</a></td>
                </tr>
                <tr>
                    <td class="dSIGNIN">
                       <input type="submit" value="SIGN IN" class="iSIGNIN">
                    </td>
                <tr>
                
                
            </table>
          </form>
          <p><%=request.getContextPath()%></p>
            <hr id="hID1">
            <p id="pID1">or sign in with one of these services</p>
            <div class="dFOOTER">
                <a href="#"><img alt="Facebook" src="<%=request.getContextPath()%>/resources/res/Facebook2.png"></a>
                <a href="#"><img alt="Google" src="<%=request.getContextPath()%>/resources/res/Google2.jpg"></a>
            </div>
        </div>
    </div>
</body>
</html>
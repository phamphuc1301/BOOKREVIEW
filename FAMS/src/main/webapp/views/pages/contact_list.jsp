<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
    integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
    crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
<script
    src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
    integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
    crossorigin="anonymous"></script>
<script
    src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
    integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
    crossorigin="anonymous"></script>
    
<style type="text/css">
    .table3{
        width: 60%;
    }
</style>
<link   rel="stylesheet" type="text/css"
        href="${pageContext.request.contextPath}/resources/css/styleIndex.css">
        
<link   rel="stylesheet" type="text/css"
        href="${pageContext.request.contextPath}/resources/CSS/sCommonME.css">
</head>
<body>
<div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3>User List</h3>
                <hr>
                <table class="table3">
                    <thead>
                        <tr>
                            <td>First Name</td>
                            <td>Last name</td>
                            <td>Email</td>
                            <td></td>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${list_of_account}" var="account">
                        <tr>
                            <td>${account.firstName}</td>
                            <td>${account.lastName}</td>
                            <td>${account.emailAddress}</td>
                            <td> <a href="#myModal" data-toggle="modal">Click to trigger modal</a>
                            </td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- Modal -->
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog modal-lg">
                <form action="userForm" name="fPopup2" method="post">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">×</button>
                            <h4 class="modal-title">Modal Header</h4>
                        </div>
                        <div class="modal-body" id="myContent">
                        <table class="oTable">
                            <tr>
                                <td>User No <span style="color: red">*</span>
                                </td>
                                <td><input type="text" name="userNo"
                                    placeholder="User No" class="oTEXT1"></td>
                            </tr>
                            <tr>
                                <td>User Name <span style="color: red">*</span>
                                </td>
                                <td><input type="text" name="userName" class="oTEXT1">
                                </td>
                            </tr>
                        </table>
                    </div>
                        <div class="modal-footer">
                            <s:submit action="addOrder2" value="Add" label="Add"></s:submit>
                            <input type="submit" class="btn btn-default" value="Save">
                            <button type="button" class="btn btn-default"
                                data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
body {
    background: #3d516b;
}
form {
    width: 740px;
    height : 600px;
    padding: 60px 25px 80px;
    margin: 150px auto;
    background: #f8d348;
    display: flex;
    flex-direction: column;
    flex-wrap: wrap;
}
input {
	width: 250px;
    font-size: 16px;
    border: 0;
    border-radius: 5px;
    outline: 0;
    padding: 10px 15px;
    margin-top: 15px;
}
.v1{
	border-left: 2px solid #3A1D1D;
	padding: 10px 20px;
	margin: 0px 20px;
	height: 550px;
}
</style>
<title>insert</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://lab.alexcican.com/set_cookies/cookie.js"
	type="text/javascript"></script>
</head>
<body>
<form action="insert.do" method="post">
<h1>회원가입</h1>
ID: <input name="id" style="display: inline;"><button style=" border:5px; border-radius : 5px; display:inline; width: 280px; padding :10px 15px; margin-top: 15px; color: white; background-color: #3A1D1D">아이디 중복 체크</button><span></span><br>
Password: <input type="password" name="pw1"><br>
Password(확인): <input type="password" name="pw2"><br>
이름: <input name="name"><br>






<input type="submit" value="가입" style="width: 280px; color: white; background-color: #3A1D1D">
<div class="v1"></div>
</form>
</body>
</html>
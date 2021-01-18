<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	tr{
		display: block;
		float: left;
	}
	th,td
</style>

<title>회원 정보 수정화면</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
${dto.name}님의 정보 수정화면
<hr>
<table>
	<tr>
		<th>목록</th>
		<th>PROFILEIMGNAME</th>
		<th>NAME</th>
		<th>GENDER</th>
		<th>ID</th>
		<th>PASSWORD</th>
		<th>EMAIL</th>
		<th>PHONENUMBER</th>
		<th>ADDRESS</th>
		<th>RIGHTS</th>
	</tr>
	<tr>
		<td>
		<td>${dto.profileImgName}</td>
		<td>${dto.name}</td>
		<td>${dto.gender}</td>
		<td>${dto.id}</td>
		<td>${dto.password}</td>
		<td>${dto.email}</td>
		<td>${dto.phoneNumber}</td>
		<td>${dto.address}</td>
		<td>${dto.rights}</td>
	</tr>


</table>


</body>
</html>
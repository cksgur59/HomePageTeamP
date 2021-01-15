<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<style type="text/css">
.table{
width: 1500px;
height: 100px;
border: 2px solid black;
margin:10px;
padding:5px;
text-align: center;
border-collapse: collapse;
}
th, td {
    border: 1px solid #444444;
    padding: 10px;
  }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

	<h2>회원 목록</h2>
	<hr>
<div style="width: 1530px; height: 300px; overflow: auto; border: 2px solid black; margin: 5px; padding: 5px;">
<table class="table">
<thead>
	<tr>
	<th>PROFILEIMGNAME</th>
	<th>NAME</th>
	<th>GENDER</th>
	<th>ID</th>
	<th>PASSWORD</th>
	<th>EMAIL</th>
	<th>PHONENUMBER</th>
	<th>ADDRESS</th>
	<th>RIGHTS</th>
	<th>정보수정</th>
	</tr>
</thead>
<tbody class="tb">
<c:forEach items="${list }" var = "dto">
<tr>
<td>${dto.profileImgName}</td>
<td>${dto.name}</td>
<td>${dto.gender}</td>
<td>${dto.id}</td>
<td>${dto.password}</td>
<td>${dto.email}</td>
<td>${dto.phoneNumber}</td>
<td>${dto.address}</td>
<td>${dto.rights}</td>
<td onclick="location.href='updateMember.do?id=${dto.id}'"><button>수정</button></td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글 수정</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<style type="text/css">
	body{
		background-color: #bbdefb;
	}
</style>
<body>
<h1>게시판 글 수정</h1>

<form action="update.do" method="post">
	글번호: <input name="num" value="${dto.num}" readonly><br>
	제  목: <input name="title" value="${dto.title}"><br>
	작성자: <input type="hidden" name="author" value="${login.id}">${login.id}<br>
	내  용: <br>
	<textarea rows="70" cols="50" name="content">${dto.content}</textarea><br>
	<input type="submit" value="수정">

</form>
</body>
</html>
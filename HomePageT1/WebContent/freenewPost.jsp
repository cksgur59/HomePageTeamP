<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<style type="text/css">
	body{
		background-color: #bbdefb;
	}
</style>
<body>
<h1>자유게시판 글쓰기</h1>

<form action="freenewPost.do" method="post">
글쓴이: <input type="hidden" name="author" value="${login.id}">${login.id} <br>
제  목: <input name="title"><br>
내  용: <br>
<textarea rows="70" cols="50" name="content"></textarea>
<input type="submit" value="작성">
</form>

</body>
</html>
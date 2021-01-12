<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>임시 메인</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
 <c:choose>
      	<c:when test="${login != null }">
      	${login.name} 님, 환영합니다. <br>
	 	<a href='logout.do'>로그아웃</a>
      	</c:when>
      	<c:otherwise>
      	<a href='loginui.do'>로그인</a>
      	</c:otherwise>
      </c:choose>
</body>
</html>
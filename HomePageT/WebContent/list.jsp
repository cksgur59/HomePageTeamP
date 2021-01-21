<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<style type="text/css">
	body {
    	background: #ffd700 ;
	}
	
	.itsme {
		font-weight: bolder;
		color: blue;
	}
	
	a {
		text-decoration: none;
	}
	
	table {
		width: 100%;
		border-collapse: collapse;
	}
	
	tbody {		
		text-align: center;
	}
	
</style>
</head>
<body>
<<<<<<< HEAD:HomePageT/WebContent/list.jsp
<<<<<<< HEAD
<form action="newPostui.do">
=======

<form action="newPostui2.do">
>>>>>>> 622429231e1940fda33bab1f04af7f45cc6892c4:HomePageT1/WebContent/list.jsp
	<input type="submit" value="글작성">
</form>
<br>
<form action="main.do">
	<input type="submit" value="메인">
</form>
<h1>자유게시판</h1>
=======
<a href="newPostui.do">글작성</a>

<h1>공지사항</h1>
>>>>>>> 6a7c1ae5e1933205c1180dff36764d38c2b52851

<table>
	<thead>
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>조회수</th>
			<th>작성일</th>
			
		</tr>
	</thead>
	
	<tbody>
		<c:forEach items="${to.list}" var="dto">
			<tr>
				<td>${dto.num}</td>
				<td>
					<c:forEach begin="1" end="${dto.repindent}">
						&nbsp;&nbsp;
					</c:forEach>
					
					<a href="read2.do?num=${dto.num}">
						${dto.title}
					</a>
				</td>
				<td>${dto.author}</td>
				<td>${dto.readcnt}</td>
				<td>${dto.writeday}</td>
			</tr>
			
		</c:forEach>
	
	</tbody>

</table>
<div>
	<jsp:include page="page2.jsp"/>
</div>

<form action="search2.do">
<select name="searchoption">
	<option value="author">작성자</option>
	<option value="title">제목</option>
	<option value="content">내용</option>
	<option value="title_content">제목+내용</option>
</select>
<input name="searchkeyword">
<input type="submit" value="검색">

</form>

</body>
</html>
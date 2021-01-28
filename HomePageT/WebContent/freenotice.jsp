<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<style type="text/css">
	div#mm {
    width: 1200px;
    height : 600px;
    padding: 60px 25px 80px;
    margin: 150px auto;
    background: #f8d348;
    display: flex;
    flex-direction: column;
    flex-wrap: wrap;
}
	body {
    	background: #3d516b ;
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
<div id="mm">

<h1>자유게시판</h1>

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
					
					<a href="read.do?num=${dto.num}">
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
	<jsp:include page="page.jsp"/>
</div>

<form action="search.do">
<select name="searchoption">
	<option value="author">작성자</option>
	<option value="title">제목</option>
	<option value="content">내용</option>
</select>
<input name="searchkeyword">
<input type="submit" value="검색">
</form>
<br>
<br>
<br>
<form action="freenewPostui.do">

	<input type="submit" value="글작성">
</form>
<br>
<form action="main.do">
	<input type="submit" value="메인">
</form>
</div>
</body>
</html>
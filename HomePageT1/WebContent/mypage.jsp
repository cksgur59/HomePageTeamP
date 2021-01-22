<%@page import="kr.co.DB.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>임시 마이페이지</title>
<link href="mypage.css" rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<c:if test="${login == null }">
		<script type="text/javascript">
			location.href = "login.jsp";
		</script>
	</c:if>
	<c:if test="${login != null}">
		<button onclick="location.href='main.do'">
			메인으로
		</button>
	</c:if>
	
	<div id="board">
		<div id="wapper">
			<!-- 헤더 시작 -->
			<div id="maintop">EZEN PROGRAMING CLASS</div>
			<h4>DEVELOPER - 이찬혁, 김승훈, 윤승수</h4>
			
			<header>
				<ul>
					<li><a href="notice.do?curpage=1">공지사항</a></li>
					<li>업데이트</li>
					<li><a href="list.do?curpage=1">자유게시판</a></li>
					<li><a href="qna.do?curpage=1">묻고답하기</a></li>
					<li>스크린샷</li>
					<li>자료실</li>
					<li>고객센터</li>
				</ul>
			</header>
		</div>
		
		<div id="mypage">
			<h2>${login.name}님의 기본정보</h2>
			<ul>
				<li>이름 : ${login.name}</li>
				<li>이메일: ${login.email}</li>
				<li>전화번호 : ${login.phoneNumber}</li>
				<li>주소 : ${login.address}</li>
				<li>성별 : ${login.gender}</li>
				<li>권한 : ${login.rights}</li>
			</ul>
			<button id="alter" onclick="location.href='pagealter.do'">수정하기</button>
		</div>
		
		<div id="mynotice">
			<h2>내가 쓴 글</h2>
			<ul>
				<li><c:forEach items="${to.list}" var="dto">
						<c:if test="${login.id eq dto.author}">
							<tr>
								<td>${dto.num}</td>
								<td><c:forEach begin="1" end="${dto.repindent}">
						&nbsp;&nbsp;
					</c:forEach> <a href="read.do?num=${dto.num}"> ${dto.title} </a></td>
								<td>${dto.author}</td>
								<td>${dto.readcnt}</td>
								<td>${dto.writeday}</td>
								<br>
							</tr>
						</c:if>
					</c:forEach></li>
			</ul>
		</div>
	</div>

	${login.id} ${login.password} ${login.name}
		${login.email} ${login.phoneNumber} ${login.address} ${login.gender}
		${login.profileImgName} ${login.rights}
</body>
</html>
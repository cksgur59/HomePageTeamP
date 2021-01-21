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
	<c:if test="${login != null}">
		<button><a href="mypage.do">마이페이지(${login.id})</a></button>
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
			<h3>${login.name}님의 마이페이지</h3>
		</div>
	</div>

	${login.id} ${login.password} ${login.name}
		${login.email} ${login.phoneNumber} ${login.address} ${login.gender}
		${login.profileImgName} ${login.rights}
</body>
</html>
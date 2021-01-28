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
<title>임시 프로필수정페이지</title>
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
					<li><a href="notice.do">공지사항</li>
					<li>업데이트</li>
					<li><a href="freenotice.do">자유게시판</a></li>
					<li>스크린샷</li>
					<li>자료실</li>
					<li>고객센터</li>
				</ul>
			</header>
		</div>

		<div id="mypage">
			<h2>${login.name}님의 기본정보</h2>
			<form action="mypage.do" method="post">
				<ul>
					<li>이름 : <input name="name" value="${login.name}" readonly></input></li>
					<li>이메일 : <input name="email" value="${login.email}"></input></li>
					<li>전화번호 : <input name="phoneNumber" value="${login.phoneNumber}" type="tel"></input></li>
					<li>주소 : <input name="address" value="${login.address}"></input></li>
					<li>성별 : <input name="gender" value="m" type="radio">male
							  <input name="gender" value="f" type="radio">female</li>
					<li>권한 : ${login.rights}</li>
				</ul>
				<input type="submit" value="수정완료" style="margin-left: 70px"></input>
				<button onclick="location.href='mypage.do'">취소</button>
			</form>
		</div>

		<div id="mynotice">
			<h2>내가 쓴 글</h2>
		</div>
	</div>

	${login.id} ${login.password} ${login.name} ${login.email}
	${login.phoneNumber} ${login.address} ${login.gender}
	${login.profileImgName} ${login.rights}
</body>
</html>
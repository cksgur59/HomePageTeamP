<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>임시 메인</title>
<link href="main.css" rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<c:if test="${login == null }">
		<script type="text/javascript">
      	location.href = "login.jsp";
      	</script>
	</c:if>
	<button onclick="logout_confirm()">로그아웃</button>

	<script type="text/javascript">
      	function logout_confirm(){
      		var answer=confirm("정말 로그아웃 하시겠습니까?");
      		
      		if(answer==true){
      			location.href = "logout.do";
      		}
      	}
      	
      </script>
	<div id="board">

		<div id="wapper">


			<!-- 헤더 시작 -->
			<div id="maintop">EZEN PROGRAMING CLASS</div>
			<h4>DEVELOPER - 이찬혁, 김승훈, 윤승수</h4>

			<header>
				<ul>
					<li>공지사항</li>
					<li>자유게시판</li>
					<li>묻고답하기</li>
				</ul>
			</header>


			<!-- 좌측 네비 -->
			<div id="board1">

				<nav>
					<p>다른 커뮤니티</p>
					<ul>
						<li><a href="https://github.com/">깃허브</a></li>
						<li><a href="https://www.eclipse.org/">이클립스</a></li>
						<li><a href="https://www.oracle.com/kr/index.html">오라클</a></li>
						<li><a href="http://tomcat.apache.org/">톰캣 아파치</a></li>
						<li><a href="https://gall.dcinside.com/">dc인사이드</a></li>
					</ul>
				</nav>


				<!-- 컨텐츠(최신 게시글 노출) -->
				<!-- section -->
				<section>
					<p>최신글</p>
					<!-- article -->
					<article>
						<li>최신글을 넣어주세요.1</li>
						<li>최신글을 넣어주세요.2</li>
						<li>최신글을 넣어주세요.3</li>
					</article>
				</section>


				<!-- aside 우측사이드-->
				<aside>
					<p>미정</p>
					<ul>
						<li>미정</li>
						<li>미정</li>
						<li>미정</li>
					</ul>
				</aside>
			</div>

			<!-- footer -->
			<footer>
				<ul>
					<li>하단부1</li>
					<li>하단부2</li>
					<li>하단부3</li>
					<li>하단부4</li>
				</ul>
			</footer>

		</div>
	</div>

	<!-- 임시 관리자 페이지 이동 시작-->
	<c:if test="${login.rights =='admin'}">
		<button onclick="go_adminPage()">관리자 페이지</button>
	</c:if>
	<script type="text/javascript">
function go_adminPage(){
location.href = "adminPage.do";
}
</script>
	<!-- 임시 관리자 페이지 이동 끝 -->

</body>
</html>
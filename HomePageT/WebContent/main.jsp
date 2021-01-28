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
<style type="text/css">
li{
	cursor: pointer;
}
</style>
<link href="main.css" rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	
	<!-- 임시 관리자 페이지 이동 끝 -->

	<div id="board">

		<div id="wapper">
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
      <!-- 임시 관리자 페이지 이동 시작-->
	<c:if test="${login.rights =='admin'}">
		
		<button onclick="go_adminPage()">관리자 페이지</button>
	</c:if>
	<c:if test="${login != null}">
		<button><a href="mypage.do?id=${login.id}">마이페이지</a></button>
	</c:if>
	<script type="text/javascript">
function go_adminPage(){
location.href = "adminPage.do";
}
</script>

			<!-- 헤더 시작 -->
			<div id="maintop">EZEN PROGRAMING CLASS</div>
			<h4>DEVELOPER - 이찬혁, 김승훈, 윤승수</h4>

			<header>
				<ul>
					<li value="linotice">공지사항</li>
					<li value="liupdate">업데이트</li>
					<li value="freenotice">자유게시판</li>
					<li>스크린샷</li>
					<li>자료실</li>
					<li>고객센터</li>
				</ul>
				<script type="text/javascript">
					$("li[value='linotice']").click(function(){
						location.href = "notice.do";
					});
					$("li[value='freenotice']").click(function(){
						location.href = "freenotice.do";
					});
				</script>
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
					<p>공지사항</p>
					<!-- article -->
					<article>
						<c:if test="${notilist1.title != null}">
						<a href="read.do?num=${notilist1.num}">1. ${notilist1.title}</a><br>
						</c:if>
						<c:if test="${notilist2.title != null}">
						<a href="read.do?num=${notilist2.num}">2. ${notilist2.title}</a><br>
						</c:if>
						<c:if test="${notilist3.title != null}">
						<a href="read.do?num=${notilist3.num}">3. ${notilist3.title}</a><br>
						</c:if>
					</article>
				</section>


				<!-- aside 우측사이드-->
				<aside>
					<p>우측사이드</p>
					<ul>
						<li>우측사이드1</li>
						<li>우측사이드2</li>
						<li>우측사이드3</li>
					</ul>
				</aside>
			</div>
			
				<section id="free">
					<p>자유게시판</p>
					<!-- article -->
					<article>
						<c:if test="${freenoti1.title != null}">
						<a href="read.do?num=${freenoti1.num}">1. ${freenoti1.title}</a><br>
						</c:if>
						<c:if test="${freenoti2.title != null}">
						<a href="read.do?num=${freenoti2.num}">2. ${freenoti2.title}</a><br>
						</c:if>
						<c:if test="${freenoti3.title != null}">
						<a href="read.do?num=${freenoti3.num}">3. ${freenoti3.title}</a><br>
						</c:if>
					</article>
				</section>

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
</body>
</html>
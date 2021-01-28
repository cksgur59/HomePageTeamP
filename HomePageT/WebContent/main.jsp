<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인</title>
<style type="text/css">
body {
    background: #3d516b;
}
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


			<!-- 헤더 시작 -->
			<div id="maintop">EZEN PROGRAMING CLASS</div>
			

			<header>
				<ul>
					<li value="linotice">공지사항</li>
					<li value="mypagego">마이페이지</li>
					<li value="freenotice">자유게시판</li>
				</ul>
				<script type="text/javascript">
					$("li[value='linotice']").click(function(){
						location.href = "notice.do";
					});
					$("li[value='freenotice']").click(function(){
						location.href = "freenotice.do";
					});
					$("li[value='mypagego']").click(function(){
						location.href = "mypage.do?id=${login.id}";
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
					<li value="logoutgo">로그아웃</li>
					<c:if test="${login.rights =='admin'}">
					<li value="admingo">관리자페이지</li>	
					</c:if>
					
				</ul>
				<script type="text/javascript">
					$("li[value='logoutgo']").click(function(){
						var answer=confirm("정말 로그아웃 하시겠습니까?");
			      		
			      		if(answer==true){
			      			location.href = "logout.do";
			      		}
					});
					$("li[value='admingo']").click(function(){
						location.href = "adminPage.do";
					});
				</script>
			</footer>
		</div>
	</div>
</body>
</html>
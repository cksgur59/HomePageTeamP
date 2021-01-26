<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	table{
	width: 650px;
	height: 650px;
	border: 2px solid black;
	margin:10px;
	padding:5px;
	text-align: center;
	border-collapse: collapse;
	}
	tr{
		display: block;
		float: left;
	}
	th,td{
	height: 30px;
	display:block;
    text-align: center;
	border: 1px solid #444444;
    padding: 10px;
	}
	
	#file{
	display: none;
	}
</style>

<title>회원 정보 수정화면</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
${dto.name}님의 정보 수정화면
<hr>
<table>
	<tr style="width: 200px;"> 
		<th style="height: 30px;">목록</th>
		<th style="height: 130px;"><br><br>PROFILEIMGNAME</th>
		<th>NAME</th>
		<th>GENDER</th>
		<th>ID</th>
		<th>PASSWORD</th>
		<th>EMAIL</th>
		<th>PHONENUMBER</th>
		<th style="height: 60px;">ADDRESS</th>
		<th>RIGHTS</th>
	</tr>
	<tr style="width: 350px;">
		<th style="height: 30px;">현재</th>
		<td style="height: 130px;">${dto.profileImgName}</td>
		<td>${dto.name}</td>
		<td>${dto.gender}</td>
		<td>${dto.id}</td>
		<td>${dto.password}</td>
		<td>${dto.email}</td>
		<td>${dto.phoneNumber}</td>
		<td style="height: 60px;">${dto.address}</td>
		<td>${dto.rights}</td>
	</tr>
	<tr style="width: 96px;">
		<th style="height: 30px;">수정</th>
		<td style="height: 130px;">
			 <form action="mupload" method="post" enctype="multipart/form-data">
   				 <br><input type="file" name="file"><br>
   		         <br><input type="submit" value="업로드">
			 </form>
		 </td>
		<!-- <br><form action="memberimgupload" method="post" enctype="multipart/form-data">
		<input type="file" id="file" name="file" onchange="imguploadinput(this)">
		<button type="button" id="btn-upload">사진선택</button><br><br>
		<input type="submit" value="수정">	 
		</form>-->
		<td><button name = "name">수정</button></td>
		<td><button name = "gender">수정</button></td>
		<td><button name = "id">수정</button></td>
		<td><button name = "password">수정</button></td>
		<td><button name = "email">수정</button></td>
		<td><button name = "phoneNumber">수정</button></td>
		<td style="height: 60px;"><button name = "address">수정</button></td>
	</tr>


</table>
<input name="idval" type="hidden" value="${dto.id}">
<input name="gender" type="hidden" value="${dto.gender }">
<script type="text/javascript">

$(function () {
	$('#btn-upload').click(function(event){
		event.preventDefault();
		$('#file').click();
	});
});

function imguploadinput(obj){
	alert(obj.value);
}

$(document).ready(function(){
	var id = $("input[name='idval']").val();
	var gender = $("input[name='gender']").val();
	
	$("button[name='profileImgName']").click(function(event) {
		event.preventDefault();
		alert("미구현");
	});

	
 $("button[name='name']").click(function(event) {
	event.preventDefault();
	var valv = prompt("새로운 이름을 입력해 주세요.");
	selectv = "name";
	checking(selectv, valv , id);
});
 
 $("button[name='gender']").click(function(event) {
		event.preventDefault();
		var an;
		var valv
		an = confirm("성별을 바꾸시겠습니까?");
		console.log(an);
		console.log(gender);
		if(an){
			if(gender=="m"){
				valv = "w";
			}else{
				valv = "m";
			}
		}
		else{
			return;
		}
		console.log(valv);
		selectv = "gender";
		checking(selectv, valv , id);
	});
 
 $("button[name='id']").click(function(event) {
		event.preventDefault();
		var valv = prompt("새로운 ID를 입력해 주세요.");
		selectv = "id";
		checkingid(selectv, valv , id);
	});
 $("button[name='password']").click(function(event) {
		event.preventDefault();
		var valv = prompt("새로운 password를 입력해 주세요.");
		selectv = "password";
		checking(selectv, valv , id);
	});
 $("button[name='email']").click(function(event) {
		event.preventDefault();
		var valv = prompt("새로운 email를 입력해 주세요.");
		selectv = "email";
		checking(selectv, valv , id);
	});
 $("button[name='phoneNumber']").click(function(event) {
		event.preventDefault();
		var valv = prompt("새로운 핸드폰 번호를 입력해 주세요.");
		selectv = "phoneNumber";
		checking(selectv, valv , id);
	});
 $("button[name='address']").click(function(event) {
		event.preventDefault();
		var valv = prompt("새로운 주소를 입력해 주세요.");
		selectv = "address";
		checking(selectv, valv , id);
	});
 
function checking(selectv, valv , id ) {
	$.ajax({
		type: 'get',
        url: 'UpdateCheck',
        data: {
        	selectv : selectv,
        	valv : valv,
        	id : id
        },
        dataType: 'text',
        success: function(updateCheckMsg) {
        	console.log(updateCheckMsg);
        	if(updateCheckMsg=="성공"){
        	alert(updateCheckMsg);
        	window.location.reload();
        	}
        },
        
        error: function(request, status, error) {
           console.log(error);
           alert(updateCheckMsg);
        },
	});
}
function checkingid(selectv, valv , id ) {
	$.ajax({
		type: 'get',
        url: 'UpdateCheck',
        data: {
        	selectv : selectv,
        	valv : valv,
        	id : id
        },
        dataType: 'text',
        success: function(updateCheckMsg) {
        	console.log(updateCheckMsg);
        	if(updateCheckMsg=="성공"){
        	alert(updateCheckMsg);
        	idchange(valv);
        	}
        },
        
        error: function(request, status, error) {
           console.log(error);
           alert(updateCheckMsg);
        },
	});
}
});
function idchange(valv){
	console.log(valv);
	location.href = "updateMember.do?id="+valv;
}

</script>

</body>
</html>
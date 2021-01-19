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
		<th style="height: 130px;">PROFILEIMGNAME</th>
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
	<tr>
		<th>수정</th>
		<td><button name = "profileImgName">수정</button></td>
		<td><button name = "name">수정</button></td>
		<td><button name = "gender">수정</button></td>
		<td><button name = "id">수정</button></td>
		<td><button name = "password">수정</button></td>
		<td><button name = "email">수정</button></td>
		<td><button name = "phoneNumber">수정</button></td>
		<td><button name = "address">수정</button></td>
	</tr>


</table>
<input name="idval" type="hidden" value="${dto.id}">
<input name="gender" type="hidden" value="${dto.gender }">
<script type="text/javascript">
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
});
</script>

</body>
</html>
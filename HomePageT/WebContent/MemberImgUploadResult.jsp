<<<<<<< HEAD:HomePageT/WebContent/MemberImgUploadResult.jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드 상태 화면</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

<h1>파일 업로드 상태 화면</h1>

ID: ${id} <br>
첨부파일: <a href="download?filename=${fileName}">${orgFileName}</a>

</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<h1>파일 업로드</h1>
<form action="mupload" method="post" enctype="multipart/form-data">
   ID: <input name="id"><br>
   첨부파일: <input type="file" name="file"><br>
   <input type="submit" value="업로드">
</form>
</body>
>>>>>>> 5293be76080a0b637da66e52a6bbd8348bc37c2c:HomePageT1/WebContent/inin.jsp
</html>
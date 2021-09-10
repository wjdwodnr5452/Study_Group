<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

<%-- validation 실패시 --%>
<c:if test="${not empty ERR }">
	<script>
		alert("등록 실패 " + "${ERR}");
	</script>	
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글작성</title>
</head>

<body>
<h2>작성페이지</h2>
<form name="frm" action="writeOk.do" method="post" onsubmit="return chkSubmit()">
이름:
<input type="text" name="name" value="${w.name }"/><br>
종류:
<input type="text" name="kind" value="${w.kind }"/><br>
가격:
<input type="number" name="price" value="${w.price }"/><br>
<br><br>
<input type="submit" value="등록"/>
</form>
<br>
<button type="button" onclick="location.href = 'list.do'">목록으로</button>
</body>
</html>






















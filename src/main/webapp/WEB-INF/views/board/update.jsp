<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<c:if test="${not empty ERR }"> 
	<script>
		alert("등록 실패 " + "${ERR}");
	</script>
</c:if>   
<c:choose>
	<c:when test="${empty list || fn:length(list) == 0 }">
		<script>
			alert("해당 정보가 삭제되거나 없습니다");
			history.back();
		</script>
	</c:when>
	
	<c:otherwise>

    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>수정-${list[0].name }</title>
</head>


<body>
<h2>수정</h2>
<form name="frm" action="updateOk.do" method="post" onsubmit="return chkSubmit()">
<input type="hidden" name="uib" value="${list[0].uid }"/>
이름:<input type="text" name="name" value="${list[0].name }"/><span style="color:red">${ERROR.name }</span><br>
종류:
<input type="text" name="kind" value="${list[0].kind }"/><span style="color:red">${ERROR.kind }</span><br>
가격:
<input type="number" name="price" value="${list[0].price }"/><span style="color:red">${ERROR.price }</span><br>
<br>
<input type="submit" value="수정"/>
</form>
<button onclick="history.back();">이전으로</button>
<button onclick="location.href='list.do'">목록보기</button>
<br>
</body>
</html>

	</c:otherwise>
</c:choose>

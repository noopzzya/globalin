<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="mvcmem.model.*" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" http-equiv="Refresh" content="5;url=member.mdo?cmd=login">
<title>회원탈퇴</title>
</head>

<body>

<c:set var="result" value="${result}"/>

<div align="center">

<c:if test="${result eq 0}">
	<script type="text/javascript">
	alert("비밀번호가 틀렸습니다.");
	history.go(-1);
	</script>
</c:if>

<font size="5" face="궁서체">
<b>회원정보가 삭제되었습니다.</b><br><br>
안녕히 가세요.
다음에 또 뵙기를 기대하겠습니다.
5초 후 Login Page로 이동합니다.
</font>
</div>

</body>
</html>
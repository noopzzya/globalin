<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<link href="ect_style.css" rel="stylesheet" type="text/css">

<script type="text/javascript">
function begin() {
	document.myForm.pass.focus();
}

function checkIt(){
	if(!document.myForm.pass.value){
		alert("비밀번호를 입력하지 않았습니다.");
		document.myForm.pass.focus();
		return false;
	}
}
</script>
</head>
<body onloa="begin()">

<form action="member.do?cmd=deleteProc" name="myForm" method="post" onsubmit="return checkIt()">

<div class="loginDiv">회원탈퇴</div><br>

<div class="loginDivForm">
	
		<div>
			<input type="text" name="pass" value="" placeholder="비밀번호를 입력해주세요">
		</div>
		
		
		<div>
			<input class="bt3" type="submit" value="회원탈퇴">
			<input class="bt3" type="button" value="취소" onclick="javascript:window.location.href='member.do?cmd=login'">
		</div>

</div>

</form>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
<script type="text/javascript">
	function HyphenAddtel(telNumberInput) {
		const telNumber = telNumberInput.value;
		const length = telNumber.length;
		if (length >= 8) {
			let numbers = telNumber.replace(/[^0-9]/g, "").replace(
					/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
			telNumberInput.value = numbers;

		}
	}//end HyphenAddtel
	
	function checkName(nameInput){
		const nameValue = nameInput.value;
		let names = nameValue.replace(/[^ㄱ-힣a-zA-Z0-9]/gi, "");
		nameInput.value = names;
	}//end checkName
	
	
	function checkUpdate() {
		if (!confirm('변경하시겠습니까?')) {
			window.history.back;
			alert("변경취소");
			location.href = "myInfo?email=${email.email}"
		} else {
			var form = document.getElementById("infoUpdate");
			form.submit();
			alert("변경성공");
		}
	}//end checkUpdate
</script>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>
	<h3>회원정보수정</h3>
	<form action="InfoUpdate" method="post" id="infoUpdate"
		name="infoUpdate">
		<table border="1">
			<tr>
				<td>회원 이메일</td>
				<td><input type="text" name="email" value="${mem.email }"
					readonly></td>
			</tr>
			<tr>
				<td>회원 비번</td>
				<td><a type="button" href="updatePw?email=${mem.email }">비번변경</a></td>
			</tr>
			<tr>
				<td>회원 이름</td>
				<td><input type="text" name="name" value="${mem.name }" onkeyup = "checkName(this)"></td>
			</tr>
			<tr>
				<td>회원 전화번호</td>
				<td><input type="text" name="tel" value="${mem.tel }"
					onkeyup="HyphenAddtel(this)" maxlength="13"></td>
			</tr>
			<tr>
				<td><input type="reset" value="초기화" id="Btnreset"></td>
				<td><button type="button" onclick="checkUpdate();">수정버튼</button></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><a
					href="myInfo?email=${email.email}">돌아가기</a>
			</tr>
		</table>
	</form>
	<%@include file="../include/footer.jsp"%>
</body>

</html>
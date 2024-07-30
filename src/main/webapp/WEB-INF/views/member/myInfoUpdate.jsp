<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>
<script type="text/javascript">
	function HyphenAddtel(telNumberInput) {
		var telNumber = telNumberInput.value;
		var length = telNumber.length;
		if (length >= 8) {
			let numbers = telNumber.replace(/[^0-9]/g, "").replace(
					/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
			telNumberInput.value = numbers;

		}
	}//end HyphenAddtel

	function checkName(nameInput) {
		var nameValue = nameInput.value;
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
<div class="container mypage-container">
	<div>
		<%@include file="../include/nav.jsp"%>
		<div class="mypage-content">
			<div>
				<h3>회원정보수정</h3>
				<form action="InfoUpdate" method="post" id="infoUpdate"
					name="infoUpdate">
					<div>
						<p>이메일</p>
						<input type="text" name="email" value="${mem.email }" readonly>
					</div>
					<div>
						<p>비밀번호</p>
						<a type="button" href="updatePw?email=${mem.email }">비번변경</a>
					</div>
					<div style="clear: both;">
						<p>이름</p>
						<input type="text" name="name" value="${mem.name }"
							onkeyup="checkName(this)">
					</div>
					<div>
						<p>회원 전화번호</p>
						<input type="text" name="tel" value="${mem.tel }"
							onkeyup="HyphenAddtel(this)" maxlength="13">
					</div>
					<div class="mypage-btn">
						<input type="reset" value="초기화" id="Btnreset">
					</div>
					<div class="mypage-btn">
						<button type="button" onclick="checkUpdate();">수정버튼</button>
					</div>
					<div class="mypage-btn">
						<a href="myInfo?email=${email.email}">돌아가기</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<%@include file="../include/footer.jsp"%>
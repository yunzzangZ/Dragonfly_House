<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<script type="text/javascript">
	function checkPw() {
		var bepassword = $("#bepassword").val();
		var check_bepassword = $("#check_bepassword").val();

		if (bepassword != check_bepassword) {
			alert("현재비밀번호와 일치하지 않습니다.");
			window.history.back();
			$("#check_bepassword").focus();
			return;
		}

		if (!confirm('비밀번호 변경하시겠습니까?')) {
			alert("변경취소");
			location.href = "myInfo?email=${email.email}";
		} else {
			var form = document.getElementById("updatePw");
			form.submit();
			alert("변경성공");
		}
	}

	function checkPassword(input) {
		var inputValue = input.value;
		// 숫자와 대소문자만 남기기
		input.value = inputValue.replace(/[^0-9a-zA-Z]/g, "");
	}
</script>

<div class="container mypage-container">
	<div>
		<%@include file="../include/nav.jsp"%>
		<div class="mypage-content">
			<div>
				<h3>${mem.name }님의 비밀번호 변경</h3>
				<form action="UpPw" method="post" id="updatePw" name="updatePw">
					<div class="hidden">
						<input type="hidden" name="email" value="${mem.email}"> 
						<input type="text" id="bepassword" value="${mem.password}" />
					</div>
					<div>
						<p>현재 비밀번호</p>
						<input type="text" id="check_bepassword" name="check_bepassword" oninput="checkPassword(this);">
					</div>
					<div>
						<p>변경 비밀번호</p>
						<input type="text" id="password" name="password" oninput="checkPassword(this);">
					</div>
					<div>
						<p>변경 비밀번호 확인</p>
						<input type="text" id="check_password" name="check_password" oninput="checkPassword(this);">
					</div>
					<div class="mypage-btn">
						<button type="button" onclick="checkPw();">비밀번호 변경</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<%@include file="../include/footer.jsp"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<script type="text/javascript">
	function checkPw() {
		var bepassword = $("#bepassword").val();
		var check_bepassword = $("#check_bepassword").val();
		var password = $("#password").val();
		var check_password = $("#check_password").val();

		if (bepassword != check_bepassword) {
			alert("현재비밀번호와 일치하지 않습니다.");
			window.history.back;
			$("#check_bepassword").focus();
			return;
		}//end if
		var regPw = /^(?=.*?[a-zA-Z])(?=.*?[0-9]).{8,}$/; // 비밀번호 유효성 검사식
		if (!regPw.test(password)) {
			alert("8이상 영대소문자, 숫자만 사용가능합니다.");
			window.history.back;
			$("#password").focus();
			return;
		}//end if

		if (password != check_password) {
			alert("변경할 비밀번호와 일치하지 않습니다.");
			window.history.back;
			return;
		}//end if

		if (!confirm('비밀번호 변경하시겠습니까?')) {
			window.history.back;
			alert("변경취소");
			location.href = "myInfo?email=${email.email}"
		} else {
			var form = document.getElementById("updatePw");
			form.submit();
			alert("변경성공");
		}

	}//end checkPw
</script>
<%@include file="../include/header.jsp"%>
<div class="container mypage-container">
	<div>
		<%@include file="../include/nav.jsp"%>
		<div class="mypage-content">
			<div>
				<h3>${mem.name }님의비밀번호 변경</h3>
				<form action="UpPw" method="post" id="updatePw" name="updatePw">
					<div class="hidden">
						<input type="hidden" name="email" value="${mem.email}"> <input
							type="text" id="bepassword" value="${mem.password}" />
					</div>
					<div>
						<p>현재 비밀번호</p>
						<input type="text" id="check_bepassword" name="check_bepassword">
					</div>
					<div>
						<p>변경 비밀번호</p>
						<input type="text" id="password" name="password">
					</div>
					<div>
						<p>변경 비밀번호 확인</p>
						<input type="text" id="check_password" name="check_password">
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

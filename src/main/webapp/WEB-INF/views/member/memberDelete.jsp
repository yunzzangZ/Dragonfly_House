<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>
<script type="text/javascript">
	function randomNum() {
		var randomNum = Math.floor(Math.random() * 1000000); // 0부터 999999까지의 랜덤 숫자 생성
		var formattedNum = randomNum.toString().padStart(6, '0'); // 6자리로 포맷팅
		$('#randomNum').val(formattedNum);
	};//end randomNum

	window.onload = function() {
		randomNum();
	};

	function checkNum() {
		var randomNum = $("#randomNum").val();
		var input_number = $("#input_number").val();

		if (randomNum != input_number) {
			alert("인증번호와 일치하지 않습니다.");
			$("#input_number").focus();
			return;
		} else {
			$('#BtncheckNum').hide();//버튼 숨기기
			$('#Result_number').val('Y');
		}//end if
	};//end checkNum

	function checkEmail() {
		var email = $("#email").val();
		var check_email = $("#check_email").val();

		if (email != check_email) {
			alert("현재 이메일과 일치하지 않습니다.");
			$("#check_email").focus();
			return;
		} else {
			$('#BtncheckEmail').hide();//버튼 숨기기
			$('#Result_email').val('Y');
		}//end if

	};//end checkEmail

	function checkDelete() {
		if ($('#Result_email').val() == 'Y' && $('#Result_number').val() == 'Y') {
			if (!confirm('탈퇴 하시겠습니까?')) {
				window.history.back;
				alert("탈퇴취소");
				location.href = "myInfo?email=${email.email}"
			} else {
				var form = document.getElementById("memberDeleteForm");
				form.submit();
				alert("탈퇴가 완료되었습니다.");
			}
		} else {
			if ($('#Result_email').val() != 'Y') {
				alert("이메일 인증을 진행해주세요.");
				$("#input_number").focus();
			} else{
				alert("인증번호 인증을 진행해주세요.");
				$("#check_email").focus();
			}
		}//end

	};//end checkUpdate
</script>
    <div class="container mypage-container">
		<div>
			<%@include file="../include/nav.jsp"%>
			<div class="mypage-content">
				<div>
					<div>
						<h3>${mem.name }님의 회원탈퇴</h3>
					</div>
					<form action="memberDeleteDone" method="get" name="memberDeleteForm" id="memberDeleteForm">
						<div class="hidden"><input type="hidden" value=${mem.email } name="email" id="email" readonly></div>
						<div><input type="text" name="Result_email" id="Result_email" value="N"></div>
						<div><input type="text" name="Result_number" id="Result_number" value="N"></div>
						<div>
							<p>회원이메일 입력</p>
							<input type="text" name="check_email" id="check_email">
						</div>
						<div>
							<p>회원이메일 확인</p>
							<button type="button" onclick="checkEmail();" id="BtncheckEmail" name="BtncheckEmail">이메일 확인</button>
						</div>
						<div style="clear: both;">
							<p>인증번호 입력</p>
							<input type="text" id="randomNum" name="randomNum" readonly>
						</div>				
						<div>
							<p>인증번호 입력 확인</p>						
							<input type="number" name="input_number" id="input_number">
						</div>		
						<div>
							<p>인증번호 확인</p>						
							<button type="button" onclick="checkNum();" id="BtncheckNum" name="BtncheckNum">인증번호 확인</button>
						</div>
						<div class="mypage-btn">
							<button type="button" onclick="checkDelete();">탈퇴하기</button>
						</div>
					</form>					
				</div>
			</div>
		</div>
	</div>

<%@include file="../include/footer.jsp"%>
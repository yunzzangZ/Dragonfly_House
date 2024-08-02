<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<script type="text/javascript">
	function checkInsert() {
		var title = $("#cs_title").val();
		var text = $("#cs_text").val();
		var placeholder_title = $("#cs_title").attr("placeholder");
		var placeholder_text = $("#cs_text").attr("placeholder");

		if (title == "" || title === placeholder_title) {
			alert("제목을 입력해주세요.");
			$("#cs_title").focus();
			return;
		}

		if (text == "" || text === placeholder_text) {
			alert("내용을 입력해주세요.");
			$("#cs_text").focus();
			return;
		}

		// 문의사항 추가하는 확인문
		if (!confirm('문의사항을 추가하겠습니까?')) {
			alert("문의사항 추가를 취소합니다.");
			location.href = "mycsSelect?email=${email.email}";
		} else {
			var form = document.getElementById("csInsertForm");
			form.submit();
			alert("변경성공");
		}
	} // end checkInsert
</script>

<%@include file="../include/header.jsp"%>
<div class="container mypage-container">
	<div>
		<%@include file="../include/nav.jsp"%>
		<div class="mypage-content">
			<div>
				<h3>1:1 문의 작성</h3>
				<form action="csInsert" method="post" name="csInsertForm" id="csInsertForm">
					<div class="mypage-cs-one">
						<p>제목</p>
						<input type="text" name="cs_title" id="cs_title" placeholder="제목을 입력해주세요.">
					</div>
					<div class="mypage-cs-one">
						<p>작성자</p>
						<input type="text" name="member_email" id="member_email" value="${email.email}" readonly>
					</div>
					<div class="mypage-cs-one">
						<p>내용</p>
						<textarea id="cs_text" rows="8" name="cs_text" placeholder="내용을 입력해주세요."></textarea>
					</div>
					<div class="mypage-btn">
						<button type="button" onclick="checkInsert();">문의사항 작성</button>
					</div>
					<div class="mypage-btn">
						<button type="reset">초기화</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<%@include file="../include/footer.jsp"%>
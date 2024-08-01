<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>
<script>
	// 페이지가 로드될 때 check_response() 호출
	window.onload = function() {
		check_response();
	};

	// 문의사항 수정 확인문
	function check_csUpdate() {
		if (!confirm('문의사항을 수정하겠습니까?')) {
			alert("문의사항 수정을 취소합니다.");
		} else {
			var form = document.getElementById("mycsDetailsForm");
			form.submit();
			alert("문의사항 수정화면으로 이동합니다.");
		}
	} // end check_csUpdate

	// 문의사항 삭제 확인문
	function check_csDelete() {
		if (!confirm('문의사항을 삭제하겠습니까?')) {
			alert("문의사항 삭제를 취소합니다.");
		} else {
			var form = document.getElementById("mycsDeleteForm");
			form.submit();
			alert("삭제하였습니다.");
		}
	} // end check_csDelete
</script>
<div class="container mypage-container">
	<div>
		<%@include file="../include/nav.jsp"%>
		<div class="mypage-content">
			<h3>문의번호 &lt;${cs.cs_id }&gt;의 상세내역</h3>
			<form action="mycsUpdate" method="get" name="mycsDetailsForm"
				id="mycsDetailsForm">
				<!-- 보이는 부분 시작 -->
				<div class="mypage-cs-one">
					<p>제목</p>
					<input type="text" name="cs_title" id="cs_title"
						placeholder="${cs.cs_title }">
				</div>
				<div class="mypage-cs-one">
					<p>내용</p>
					<textarea id="cs_text" rows="8" name="cs_text"
						placeholder="${cs.cs_text }" readonly></textarea>
				</div>
				<div class="mypage-cs-one">
					<p>응답</p>
					<textarea id="cs_response" rows="8" name="cs_response"
						placeholder="${cs.cs_response }" onkeyup="check_response();"></textarea>
				</div>
				<div class="mypage-cs-btn">
					<input type="hidden" name="cs_id" value="${cs.cs_id }">
					<button type="button" onclick="check_csUpdate();">수정화면으로
						이동</button>
				</div>
			</form>
			<form action="mycsDelete" method="get" name="mycsDeleteForm"
				id="mycsDeleteForm">
				<div class="mypage-cs-btn">
					<input type="hidden" name="cs_id" value="${cs.cs_id }">
					<button type="button" onclick="check_csDelete();">삭제하기</button>
				</div>
			</form>
		</div>
	</div>
</div>
<%@include file="../include/footer.jsp"%>
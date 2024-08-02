<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>
<script>
	function check_csUpdate() {
		if (!confirm('문의사항을 수정하겠습니까?')) {
			alert("문의사항 수정을 취소합니다.");
			location.href = "mycsDetails?cs_id=${cs.cs_id}";
		} else {
			var form = document.getElementById("mycsDetailsForm");
			alert("문의사항이 수정되었습니다.");
			form.submit();
		}
	} // end check_csUpdate
</script>

<div class="container mypage-container">
	<div>
		<%@include file="../include/nav.jsp"%>
		<div class="mypage-content">
			<div>
				<!-- form 시작 -->
				<h3>문의번호 &lt;${cs.cs_id }&gt;의 문의내역 수정</h3>
				<form action="csUpdate" method="post" name="mycsDetailsForm"
					id="mycsDetailsForm">
					<input type="hidden" name="member_email" value="${email.email }">
					<input type="hidden" name="cs_id" value="${cs.cs_id}">
					<div class="mypage-cs-one">
						<p>제목</p>
						<input type="text" name="cs_title" id="cs_title"
							value="${cs.cs_title}">
					</div>
					<div class="mypage-cs-one">
						<p>내용</p>
						<textarea id="cs_text" rows="8" name="cs_text">${cs.cs_text }</textarea>
					</div>

					<div class="mypage-btn">
						<button type="button" id="BtncsUpdate" onclick="check_csUpdate();">수정</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<%@include file="../include/footer.jsp"%>
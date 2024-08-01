<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>
<div class="container mypage-container">
	<div>
		<div class="mypage-content">
			<h3>예약번호 입력</h3>
			<form action="Reservation_inquiry" method="get">
				<div class="mypage-form-one">
					<p>조회할 예약번호</p>
					<input type="text" name="bo_num">
				</div>
				<div class="mypage-btn">
					<input type="submit" value="예약조회">
				</div>
			</form>
		</div>
	</div>
</div>
<script>
    document.querySelector("form").addEventListener("submit", function(event) {
        const input = document.querySelector("input[name='bo_num']");
        if (input.value.trim() === "") {
            alert("예약번호를 입력해 주세요.");
            event.preventDefault(); // 폼 제출 막기
        }
    });
</script>
<%@include file="../include/footer.jsp"%>
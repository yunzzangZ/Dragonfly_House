<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>
    <div class="container mypage-container">
		<div>
			<%@include file="../include/nav.jsp"%>
			<div class="mypage-content">
				<div>
					<h3>1:1문의작성</h3>
					<form action="csInsert" method="post" name=csInsertForm>
						<div class="mypage-cs-one">
							<p>제목</p>
							<input type="text" name="cs_title" id="cs_title" placeholder="제목을 입력해주세요.">					
						</div>
						<div class="mypage-cs-one">
							<p>작성자</p>
							<input type="text" name="email" id="eamil" value="${eamil.email}" readonly>				
						</div>
						<div class="mypage-cs-one">
							<p>내용</p>
							<textarea rows="8" name="cs_text" name="cs_text" placeholder="내용을 입력해주세요."></textarea>				
						</div>
						<!-- 
						<div><button type="button" id="BtnInsert">문의사항 작성</button></div>
						<div><button type="reset">초기화</button></div>
						-->
						<div class="mypage-btn"><input type="submit" value="작성"></div>
					</form>				
				</div>
			</div>
		</div>
	</div>	
<script type="text/javascript">
	$(document).ready(function() {
		$("#BtnInsert").click(function() {
			var title = $("#cs_title").val();
			var email = $("#email").val();
			var text = $("#cs_text").val();
			if (title == "") {
				alert("제목을 입력해주세요.");
				document.csInsertForm.title.focus();
				return;
			}
			if (email == "") {
				alert("작성자가 맞지 않습니다.");
				document.csInsertForm.email.focus();
				return;
			}
			if (text == "") {
				alert("내용을 입력해주세요.")
				document.csInsertForm.text.focus();
				return;
			}
			document.csInsertForm.submit();
		});
	});
</script>	
<%@include file="../include/footer.jsp"%>
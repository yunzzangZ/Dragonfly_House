<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1문의 추가</title>
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
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>
	<form action="csInsert" method="post" name=csInsertForm>
		<table border="1">
			<tr>
				<td>제목</td>
				<td><input type="text" name="cs_title" id="cs_title"
					placeholder="제목을 입력해주세요."></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input type="text" name="email" id="eamil" value="${email}"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" name="cs_text" name="cs_text"
						placeholder="내용을 입력해주세요."></textarea></td>
			</tr>
			<tr>
				<td><button type="button" id="BtnInsert">문의사항 작성</button></td>
				<td><button type="reset">초기화</button></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="button"
					onclick="location.href = 'mycsAll'" value="돌아가기"></td>
			</tr>
			<tr>
				<!-- 추가는 됨 -->
				<td colspan="2" align="right"><input type = "submit" value = "작성"></td>
			</tr>
		</table>
	</form>


	<%@include file="../include/footer.jsp"%>
</body>
</html>
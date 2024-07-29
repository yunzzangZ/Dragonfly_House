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
		function checkUpdate() {
			var title = $("#cs_title").val();
			var text = $("#cs_text").val();
			
			if (title == "") {
				alert("제목을 입력해주세요.");
				$("#cs_title").focus();
				return;
			}
			
			if (text == "") {
				alert("내용을 입력해주세요.")
				$("#cs_text").focus();
				return;
			}
			
			
			if (!confirm('문의사항을 등록하시겠습니까?')) {
				window.history.back;
				alert("문의사항 등록이 취소되었습니다.");
				location.href = "mycsSelect?email=${email.email}"
			} else {
				var form = document.getElementById("csInsertForm");
				form.submit();
				alert("문의사항이 등록되었습니다.");
			}
		}//end checkUpdate
</script>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>
	
	<h3>문의사항 등록</h3>
	<form action="csInsert" method="post" id= "csInsertForm" name = "csInsertForm">
		<table border="1">
			<tr>
				<td>제목</td>
				<td><input type="text" name="cs_title" id="cs_title"></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input type="text" name="email" id="eamil" value="${email.email}" readonly></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="10" name="cs_text" id="cs_text"></textarea></td>
			</tr>
			<tr>
				<td><button type="button" onclick="checkUpdate();">문의사항 작성</button></td>
				<td><button type="reset">초기화</button></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><button type="button"
					onclick="location.href='mycsSelect?email=${email.email}'">돌아가기</button></td>
			</tr>
		</table>
	</form>


	<%@include file="../include/footer.jsp"%>
</body>
</html>
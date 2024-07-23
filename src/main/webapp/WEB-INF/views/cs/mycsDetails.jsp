<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1문의 상세페이지</title>
<script type="text/javascript">
	document.ready(function(){
		$("#BtncsDelete").click(function(){
			if(confirm("삭제하시겠습니까?")){
				document.csDetails.action = "mycsDelete?cs_id="+${cs.cs_id};
				document.csDetails.submint();
			}
		});//end
		
		$("#BtncsUpdate").click(function(){
			if(confirm("수정하시겠습니까?")){
				document.csDetails.action = "mycsUpdate?cs_id="+${cs.cs_id};
				document.csDetails.submint();
			}
		});//end
		
	});//end
	
</script>
</head>
<body>
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/nav.jsp"%>

	<form name ="csDetails" method = "post">
		<table border="1">
			<tr>
				<td>cs_id</td>
				<td>제목</td>
				<td>작성자</td>
				<td>작성내용</td>
				<td>응답</td>
			</tr>
			<tr>
				<td>${cs.cs_id }</td>
				<td>${cs.cs_title }</td>
				<td>${cs.member_email}</td>
				<td>${cs.cs_text }</td>
				<td>${cs.cs_response }</td>
			</tr>
		</table>
		<div>
			<button type = "button" id = "BtncsUpdate">수정1</button>
			<a href="mycsUpdate?cs_id=${cs.cs_id }">수정2</a>
		</div>
		<div>
			<button type = "button" id = "BtncsDelete">삭제1</button>
			<a href="mycsDelete?cs_id=${cs.cs_id }">삭제2</a>
		</div>
	</form>

	<%@include file="../include/footer.jsp"%>
</body>
</html>
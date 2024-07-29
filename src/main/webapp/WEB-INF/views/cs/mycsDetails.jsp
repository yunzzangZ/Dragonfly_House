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
					<h3>문의내역상세</h3>
					<div class="mypage-cs">
						<form name ="csDetails" method="post">
							<table border="1">
								<tr>
									<th>문의번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>작성내용</th>
									<th>응답</th>
								</tr>
								<tr>
									<td>${cs.cs_id }</td>
									<td>${cs.cs_title }</td>
									<td>${cs.member_email}</td>
									<td>${cs.cs_text }</td>
									<td>${cs.cs_response }</td>
								</tr>
							</table>
							<div class="mypage-cs-btn">
								<!-- <button type = "button" id="BtncsUpdate">수정1</button> -->
								<a href="mycsUpdate?cs_id=${cs.cs_id }">수정</a>
								<!-- <button type = "button" id="BtncsDelete">삭제1</button> -->
								<a href="mycsDelete?cs_id=${cs.cs_id }">삭제</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
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
<%@include file="../include/footer.jsp"%>
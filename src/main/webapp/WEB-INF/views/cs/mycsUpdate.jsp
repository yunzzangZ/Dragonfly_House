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
					<h3>문의내역 수정</h3>
					<form action="csUpdate" method="post" name="csUpdateForm">
						<div>
							<p>문의번호</p>
							<input type="text" name="cs_id" value=${cs.cs_id } readonly="readonly">
						</div>
						<div>
							<p>작성자</p>
							<input value="${cs.member_email }" type="text" name="email" readonly="readonly">
						</div>
						<div>
							<p>작성일</p>
							<input value="${cs.cs_date }" type="text" name="cs_date" readonly="readonly">
						</div>
						<div>
							<p>제목</p>
							<input type="text" name="cs_title" value=${cs.cs_title }>
						</div>
						<div class="mypage-cs-one">
							<p>내용</p>
							<input value="${cs.cs_text }" type="text" name="cs_text">
						</div>
						<div class="mypage-btn"><input type="submit" value="수정" id="Btnupdate"></div>
					</form>					
				</div>
			</div>
		</div>
	</div>	
<%@include file="../include/footer.jsp"%>
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
					<h3>${mem.name }님의 문의내역</h3>
					<table border="1">
						<tr>
							<th>문의번호</th>
							<th>제목</th>
							<th>작성날짜</th>
							<th>작성자</th>
							<th>내용</th>
						</tr>
						<c:forEach var="cs" items="${csselist }">
							<tr>
								<td><a href="mycsDetails?cs_id=${cs.cs_id }">${cs.cs_id }</a></td>
								<td>${cs.cs_title }</td>
								<td>${cs.cs_date }</td>
								<td>${cs.member_email }</td>
								<td>${cs.cs_text }</td>
							</tr>
						</c:forEach>
					</table>
					<span class="mypage-txt">문의번호를 클릭하면 수정/삭제를 하실 수 있습니다.</span>
				</div>
			</div>
		</div>
	</div>
<%@include file="../include/footer.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>
<div class="container mypage-container">
    <div>
        <div class="mypage-content">
            <div>
                <h3>예약상세</h3>
                <c:if test="${empty bo}">
                    <script>
                        alert("해당 예약 정보가 없습니다.");
                        location.href = 'index';
                    </script>
                </c:if>
                <c:if test="${not empty bo}">
                    <table border="1">
                        <tr>
                            <th>예약번호</th>
                            <td>${bo.bo_num }</td>
                        </tr>
                        <tr>
                            <th>체크인</th>
                            <td>${bo.bo_checkin }</td>
                        </tr>
                        <tr>
                            <th>체크아웃</th>
                            <td>${bo.bo_checkout }</td>
                        </tr>
                        <tr>
                            <th>예약룸</th>
                            <td>${bo.room_ro_num}</td>
                        </tr>
                        <tr>
                            <th>예약상태</th>
                            <td>${bo.bo_status }</td>
                        </tr>
                        <tr>
                            <th>결제방법</th>
                            <td>${bo.bo_paymethod }</td>
                        </tr>
                        <tr>
                            <th>결제급액</th>
                            <td>${bo.bo_price }</td>
                        </tr>
                        <tr>
                            <th>예약자</th>
                            <td>${bo.member_email}</td>
                        </tr>
                    </table>

                    <div class="mypage-btn">
                        <input type="button" value="뒤로가기" onclick="location.href = 'index'">
                    </div>
                </c:if>
            </div>
        </div>
    </div>
</div>
<%@include file="../include/footer.jsp"%>
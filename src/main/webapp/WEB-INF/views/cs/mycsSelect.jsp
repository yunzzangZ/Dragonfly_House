<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>
<script>
// 페이지가 로드될 때 실행
window.onload = function() {
    // 모든 문의에 대해 응답 상태 설정
    var responseElements = document.querySelectorAll("[id^='Response_status_']");
    
    responseElements.forEach(function(element) {
        var responseId = element.getAttribute("data-response-id");
        // 해당 문의의 응답 상태를 가져옵니다
        var responseText = document.getElementById("response_" + responseId).innerText.trim();

        // Response_status에 값 설정
        if (responseText === undefined || responseText === "") {
            element.innerText = '응답전';
        } else {
            element.innerText = '응답완료';
        }
    });
};
</script>

<div class="container mypage-container">
    <div>
        <%@include file="../include/nav.jsp"%>
        <div class="mypage-content">
            <div>
                <h3>${email.name }님의 문의내역</h3>
                <table border="1">
                    <tr>
                        <th>문의번호</th>
                        <th>제목</th>
                        <th>작성날짜</th>
                        <th>작성자</th>
                        <th>내용</th>
                        <th>응답여부</th>
                    </tr>
                    <c:forEach var="cs" items="${csselist }" varStatus="status">
                        <tr>
                            <td><a href="mycsDetails?cs_id=${cs.cs_id }">${cs.cs_id }</a></td>
                            <td>${cs.cs_title }</td>
                            <td>${cs.cs_date }</td>
                            <td>${cs.member_email }</td>
                            <td>${cs.cs_text }</td>
                            <td>
                                <span id="Response_status_${status.index}" data-response-id="${status.index}"></span>
                                <span id="response_${status.index}" style="display:none;">${cs.cs_response }</span> <!-- 숨겨진 응답 텍스트 -->
                            </td>
                        </tr>
                    </c:forEach>
                </table>
                <span class="mypage-txt">문의번호를 클릭하면 수정/삭제를 하실 수 있습니다.</span>
            </div>
        </div>
    </div>
</div>
<%@include file="../include/footer.jsp"%>
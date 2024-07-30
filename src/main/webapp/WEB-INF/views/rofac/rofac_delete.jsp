<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ include file="../include/header.jsp" %>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <section class="content">
        <div>
            <h2>삭제</h2>
            <form action="${pageContext.request.contextPath}/rofac_delete" method="get">

                <input type="hidden" id="room_ro_num" name="room_ro_num" value="<c:out value='${rofac.room_ro_num}'/>">
                <p>정말로 방시설 <c:out value='${rofac.room_ro_num}'/> 을 삭제하시겠습니까?</p>
                <div>
                    <input type="submit" value="삭제">
                    <a href="${pageContext.request.contextPath}/rofac_listall">취소</a>
                </div>
            </form>
        </div>
    </section>
</div>

<%@ include file="../include/footer.jsp" %>
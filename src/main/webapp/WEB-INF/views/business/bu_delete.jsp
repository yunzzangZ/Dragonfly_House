<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ include file="../include/header.jsp" %>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <section class="content">
        <div>
            <h2>사원 삭제</h2>
            <form action="${pageContext.request.contextPath}/delete" method="get">

                <input type="hidden" id="bu_email" name="bu_email" value="<c:out value='${bu.bu_email}'/>">
                <p>정말로 회원 <c:out value='${bu.bu_email}'/> (<c:out value='${bu.bu_email}'/>)을 삭제하시겠습니까?</p>
                <div>
                    <input type="submit" value="삭제">
                    <a href="${pageContext.request.contextPath}/bu_listall">취소</a>
                </div>
            </form>
        </div>
    </section>
</div>

<%@ include file="../include/footer.jsp" %>
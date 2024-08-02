<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../../include/businessHeader.jsp" %>
   <div>
		<h2>시설 삭제</h2>
        <form action="${pageContext.request.contextPath}/pen_delete" method="get">

             <input type="hidden" id="pen_addr" name="pen_addr" value="<c:out value='${pen.pen_addr}'/>">
             <p>정말로 시설 <c:out value='${pen.pen_addr}'/>을 삭제하시겠습니까?</p>
             <div>
                 <input type="submit" value="삭제">
                 <a href="${pageContext.request.contextPath}/pen_listall">취소</a>
             </div>
         </form>
     </div>
</div>

<%@include file="../../include/adminFooter.jsp" %>
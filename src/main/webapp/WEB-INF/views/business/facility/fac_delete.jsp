<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../../include/businessHeader.jsp" %>
   <div>
		<h2>시설 삭제</h2>
        <form action="${pageContext.request.contextPath}/fac_delete" method="get">

             <input type="hidden" id="fac_id" name="fac_id" value="<c:out value='${fac.fac_id}'/>">
             <p>정말로 시설 <c:out value='${fac.fac_name}'/>을 삭제하시겠습니까?</p>
             <div>
                 <input type="submit" value="삭제">
                 <a href="${pageContext.request.contextPath}/fac_listall">취소</a>
             </div>
         </form>
     </div>
</div>

<%@include file="../../include/adminFooter.jsp" %>
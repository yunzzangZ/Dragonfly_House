<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@include file="../../include/header.jsp" %>

<div class="container">
	<div class="login">
		<div class="login-container">		
			<form id="findIdForm" method="post">
			    <input type="text" id="name" name="name" placeholder="이름"/>
			    <input type="text" id="tel" name="tel" placeholder="전화번호"/>
			    <div class="login-btn">
			        <input type="button" id="checkButton" value="아이디 찾기">
			    </div>
			    <div id="resultMessage"></div> <!-- 결과를 출력할 요소 -->			    
			</form>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">		
	   $(document).ready(function() {
	        $('#checkButton').click(function() {
	            var name = $('#name').val();
	            var tel = $('#tel').val();

	            $.ajax({
	                url: 'findId', // 서버의 findId 경로
	                type: 'POST',
	                data: { name: name, tel: tel },
	                success: function(data) {
	                    if (data.check == 0) {
	                    	alert("일치하는 정보가 존재하지 않습니다.");
	                    } else {
	                    	alert("찾으시는 아이디는 " + data.email + " 입니다.");
	                    }
	                },
	                error: function() {
	                	alert("서버 오류가 발생했습니다.");
	                }
	            });
	        });
	    });
	</script>
</div>
<%@include file="../../include/footer.jsp" %>
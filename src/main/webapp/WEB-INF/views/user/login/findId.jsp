<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@include file="../../include/header.jsp" %>
<div class="container">
<form id="findIdForm" method="post" class="form-signin">
    <div class="form-label-group">
        <input type="text" id="name" name="name" class="form-control" required />
        <label for="name">이름</label>
    </div>
    <div class="form-label-group">
        <input type="text" id="tel" name="tel" class="form-control" required />
        <label for="tel">전화번호</label>
    </div>
    <div class="form-label-group">
        <input class="btn btn-lg btn-secondary btn-block text-uppercase" type="button" id="checkButton" value="check">
    </div>
    <div id="resultMessage"></div> <!-- 결과를 출력할 요소 -->
</form>

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
	                    $('#resultMessage').empty(); // 이전 메시지 제거
	                    if (data.check == 0) {
	                        $('#resultMessage').append("<label>일치하는 정보가 존재하지 않습니다.</label>");
	                    } else {
	                        $('#resultMessage').append("<label>찾으시는 아이디는 '" + data.email + "' 입니다.</label>");
	                    }
	                },
	                error: function() {
	                    $('#resultMessage').append("<label>서버 오류가 발생했습니다.</label>");
	                }
	            });
	        });
	    });
	</script>
</div>
<%@include file="../../include/footer.jsp" %>
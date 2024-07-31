<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>
<script>
    function cardInsert() {
        var card_number = $("#card_number").val();
        var card_password = $("#card_password").val();
        var check_card_password = $("#check_card_password").val();
        var card_duodate = $("#card_duodate").val();
        
        // 카드번호 입력 확인
        if (card_number === "") {
            alert("카드번호를 입력해주세요.");
            $("#card_number").focus();
            return;
        } else if (card_number.length !== 16) {
            alert("16자리가 아닙니다. 다시 입력해주세요.");
            $("#card_number").focus();
            return;
        }

        // 비밀번호 입력 확인
        if (card_password === "") {
            alert("비밀번호를 입력해주세요.");
            $("#check_card_password").focus();
            return;
        }

        // 비밀번호 일치 여부 확인
        if (card_password !== check_card_password) {
            alert("입력한 비밀번호와 일치하지 않습니다.");
            $("#check_card_password").focus();
            return;
        }

        // 날짜 입력 확인
        if (card_duodate === "") {
            alert("날짜를 입력해주세요.");
            $("#card_duodate").focus();
            return;
        }

        // 카드 유효기간 변환
        var formattedDate = formatCardDate(card_duodate);
        if (!formattedDate) {
            alert("유효한 날짜 형식이 아닙니다.");
            return;
        }

        // 사용자 확인
        if (!confirm('카드를 추가하시겠습니까?')) {
            alert("카드 추가를 취소하셨습니다.");
            location.href = "/dragonfly/member/myInfo?email=" + encodeURIComponent("${mem.email}");
        } else {
            // 변환된 날짜를 hidden input에 설정
            $("#hidden_card_duodate").val(formattedDate);
            var form = document.getElementById("cardInsertForm");
            form.submit();
            alert("카드를 추가하셨습니다.");
        }
    }

    // 카드 유효기간을 YYYY-MM-DD 형식으로 변환
    function formatCardDate(value) {
        var parts = value.split('/');
        if (parts.length !== 2) return null;

        var month = parseInt(parts[0], 10);
        var year = parseInt(parts[1], 10) + 2000; // 20xx로 변환

        if (month < 1 || month > 12) return null;

        // 마지막 날 구하기
        var lastDay = getLastDate(year, month);

        return year + '-' + ('0' + month).slice(-2) + '-' + lastDay; // YYYY-MM-DD 형식으로 변환
    }

    function getLastDate(year, month) {
        return new Date(year, month, 0).getDate(); // month는 0부터 시작하므로
    }

    // 입력 시 '/' 자동 추가
    $(document).ready(function() {
        $("#card_duodate").on("input", function() {
            var input = $(this).val().replace(/\D/g, ''); // 숫자만 남기기
            if (input.length >= 2) {
                input = input.slice(0, 2) + '/' + input.slice(2);
            }
            $(this).val(input);
        });
    });
</script>

<div class="container mypage-container">
    <div>
        <%@include file="../include/nav.jsp"%>
        <div class="mypage-content">
            <div>
                <h3>${mem.name}님의 카드 추가</h3>
                <form action="caInsert" method="post" name="cardInsertForm" id="cardInsertForm">
                    <div class="hidden">
                        <input type="hidden" name="member_email" value="${mem.email}">
                        <input type="hidden" name="card_duodate" id="hidden_card_duodate">
                    </div>
                    <div>
                        <p>카드번호</p>
                        <input name="card_number" id="card_number" type="text" maxlength="16">
                    </div>
                    <div>
                        <p>카드비밀번호</p>
                        <input name="card_password" id="card_password" type="password" maxlength="4">
                    </div>
                    <div>
                        <p>카드비밀번호 확인</p>
                        <input name="check_card_password" id="check_card_password" type="password" maxlength="4">
                    </div>
                    <div>
                        <p>카드유효기간 (MM/YY)</p>
                        <input name="card_duodate" id="card_duodate" type="text" placeholder="MM/YY" maxlength="5">
                    </div>
                    <div class="mypage-btn">
                        <button type="button" onclick="cardInsert();">카드 추가</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<%@include file="../include/footer.jsp"%>



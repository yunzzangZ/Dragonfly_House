<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
</head>
<body>
    <h1>Hello world!</h1>
    <p>여기까지가 끝인가보오~</p>

    <div><a href="bu_listall">전체 사업장 가입자 조회</a></div>
    <div><a href="fac_listall">전체 시설명 조회</a></div>
    <div><a href="res_listall">전체 예약현황 조회</a></div>
    <div><a href="ro_listall">전체 방 조회</a></div>
    <div><a href="rofac_listall">전체 방 시설 조회</a></div>
    <div><a href="pen_listall">전체 펜션 조회</a></div>
    <div><a href="${pageContext.request.contextPath}/admin/business/register">사업자가입</a></div>
    
    <!-- 고객 채팅 -->
    <div><a href="${pageContext.request.contextPath}/user/chat">고객 채팅</a></div>
    <!-- 관리자 채팅 -->
    <div><a href="${pageContext.request.contextPath}/admin/chat">관리자 채팅</a></div>
   <div><a href="${pageContext.request.contextPath}/admin/cs/csList">1:1문의</a></div>
     <div><a href="${pageContext.request.contextPath}/admin/mail/listMailTexts">메일전체보기</a></div>
          <div><a href="${pageContext.request.contextPath}/admin/mail/senddingAllView">메일 발송 현황보기</a></div>
           <div><a href="${pageContext.request.contextPath}/admin/mail/sendMailForm">메일 보내기</a></div>
    <a href="index">index 페이지로 이동</a>
    <p>The time on the server is ${serverTime}.</p>
</body>
</html>

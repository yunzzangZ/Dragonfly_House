<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
	여기까지가 끝인가보오🙄</h1>
	
	<div><a href="bu_listall">전체 사업장 가입자 조회</a></div>
	<div><a href="fac_listall">전체 시설명 조회</a></div>
	<div><a href="res_listall">전체 예약현황 조회</a></div>
	<div><a href="ro_listall">전체 방 조회</a></div>
	<div><a href="rofac_listall">전체 방 시설 조회</a></div>
	<div><a href="pen_listall">전체 펜션 조회</a></div>
	
	
<a href="index">index 페이지로 이동</a>
<P>  The time on the server is ${serverTime}. </P>
</body>
</html>

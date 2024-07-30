<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>
	<h1>${msg }</h1>
	<a href ="index">index이동</a>
	<div><a href="bu_listall">전체 사업장 가입자 조회</a></div>
	<div><a href="fac_listall">전체 시설명 조회</a></div>
	<div><a href="res_listall">전체 예약현황 조회</a></div>
	<div><a href="ro_listall">전체 방 조회</a></div>
	<div><a href="rofac_listall">전체 방 시설 조회</a></div>
	<div><a href="pen_listall">전체 펜션 조회</a></div>
</body>
</html>

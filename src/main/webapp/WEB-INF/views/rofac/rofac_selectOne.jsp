<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ include file="../include/header.jsp" %>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    <section class="content">
        <div>
            <h1>방 시설 상세 확인</h1>
        </div>
        <table class="table table-hover">
            <tr>
                <th>방 번호</th>
                <th>방 시설 이름</th>
                <th>설명</th>
            </tr>

            <tr>
                <td>${rofac.room_ro_num}</td>
                <td>${rofac.rofac_name}</td> <!-- 방 시설 이름 출력 -->
                <td>${rofac.rofac_description}</td> 
                <td>
                    <div>
                        <a href="rofac_update?room_ro_num=${rofac.room_ro_num}">정보 수정</a><br><br>
                        <a href="rofac_delete?room_ro_num=${rofac.room_ro_num}">삭제</a>
                    </div>
                </td>
            </tr>
        </table>
    </section>
</div>
<%@ include file="../include/footer.jsp" %>

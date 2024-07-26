<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    <section class="content">
        <div>
            <h1>방시설 상세 확인</h1>
        </div>
        <table class="table table-hover">

                <tr>
                    <th>방 번호</th>
                    <th>시설 번호</th>
                </tr>

                <tr>
                    <td>${rofac.room_ro_num}</td>
                    <td>${rofac.facility_fac_id}</td>
                    <td>
                    
                       <div>
                            <a href="rofac_update?room_ro_num=${rofac.room_ro_num}">정보수정</a><br><br>
                            <a href="rofac_delete?room_ro_num=${rofac.room_ro_num}">삭제</a>
                        </div>
                   
                      
                    </td>
                </tr>
        </table>
    </section>
</div>
<%@include file="../include/footer.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    <section class="content">
        <div>
            <h1> 예약번호 상세 확인</h1>
        </div>
        <table class="table table-hover">

                <tr>
                    <th>예약 번호</th>
                </tr>

                <tr>
                    <td>${res.booking_bo_num}</td>

                    <td>                    
                       <div>
                            <a href="res_update?booking_bo_num=${res.booking_bo_num}">정보수정</a><br><br>
                            <a href="res_delete?booking_bo_num=${res.booking_bo_num}">삭제</a>
                        </div>                     
                    </td>
                </tr>
        </table>
    </section>
</div>
<%@include file="../include/footer.jsp"%>
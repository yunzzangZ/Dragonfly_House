<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ include file="../include/header.jsp" %>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    <section class="content">
        <div>
            <h1>방 상세 확인</h1>
        </div>
        <table class="table table-hover">
            <tr>
                <th scope="col">방 번호</th>
                <th scope="col">방 이름</th>
                <th scope="col">방 주소</th> 
                <th scope="col">방 금액</th>    
                <th scope="col">방 정보</th>
                <th scope="col">최대 인원</th>
                <th scope="col">방 사진번호</th>
            </tr>

            <tr>
                <td>${ro.ro_num}</td>
                <td>${ro.ro_name}</td>
                <td>${ro.pension_pen_addr}</td>
                <td>${ro.ro_price}</td>
                <td>${ro.ro_info}</td>
                <td>${ro.ro_max_person}</td>
                <td>${ro.picture_pic_num}</td> 
                
                <td>
                    <div>
                        <a href="ro_update?ro_num=${ro.ro_num}" class="btn btn-warning">정보수정</a><br><br>
                        <a href="ro_delete?ro_num=${ro.ro_num}" class="btn btn-danger">삭제</a>
                    </div>
                </td>
            </tr>
        </table>
    </section>
</div>

<%@ include file="../include/footer.jsp" %>
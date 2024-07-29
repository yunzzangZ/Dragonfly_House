<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    <section class="content">
        <div>
            <h1>시설 상세 확인</h1>
        </div>
        <table class="table table-hover">

                <tr>
                    <th>시설 번호</th>
                    <th>시설 이름</th>
                    <th>시설 설명</th>
                    <th>펜션 주소</th>
                </tr>

                <tr>
                    <td>${fac.fac_id}</td>
                    <td>${fac.fac_name}</td>
                    <td>${fac.fac_description}</td>
                    <td>${fac.pension_pen_addr}</td>
                    <td>
                    
                       <div>
                            <a href="fac_selectOne?fac_name=${fac.fac_name}">정보수정</a><br><br>
                            <a href="fac_selectOne?fac_name=${fac.fac_name}">삭제</a>
                        </div>
                   
                      
                    </td>
                </tr>
        </table>
    </section>
</div>
<%@include file="../include/footer.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@include file="../include/header.jsp"%>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    <section class="content">
        <div>
            <h1>사업자 회원 조회</h1>
        </div>
        <table class="table table-hover">

                <tr>
                    <th>회원 이메일</th>
                    <th>회원 비밀번호</th>
                    <th>회원명</th>
                    <th>회원연락처</th>
                    <th>사업자 등록번호</th>
                    <th>사업장명</th>
                    <th>사업장 주소</th>
                    <th>사업장 연락처</th>
                    <th>가입 승인여부</th>
                </tr>

                <tr>
                    <td>${bu.bu_email}</td>
                    <td>${bu.bu_password}</td>
                    <td>${bu.bu_name}</td>
                    <td>${bu.bu_tel}</td>
                    <td>${bu.bu_code}</td>
                    <td>${bu.bu_title}</td>
                    <td>${bu.bu_addr}</td>
                    <td>${bu.bu_account_num}</td>
                    <td>${bu.bu_account_num}</td>
                    <td>
                    
                      <!--  <div>
                            <a href="update?bu_email=${business.bu_email}">정보수정</a>
                            <a href="delete?bu_email=${business.bu_email}">삭제</a>
                        </div>
                      --> 
                      
                    </td>
                </tr>
        </table>
    </section>
</div>
<%@include file="../include/footer.jsp"%>
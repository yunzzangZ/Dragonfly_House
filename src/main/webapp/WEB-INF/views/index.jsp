<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@include file="include/header.jsp" %>
	<!-- 메인배너 -->
    <section class="hero-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="hero-text">
                        <h1>품격 있는 여행의 시작, 잠자리하우스</h1>
                        <p>세련된 객실과 세심한 서비스로 귀하의 여정을 더욱 풍요롭게 해드리고, 완벽한 휴식을 위한 최상의 숙박 선택지를 제공합니다.</p>
                        <a href="#" class="primary-btn">more view</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="hero-slider owl-carousel">
            <div class="hs-item set-bg" data-setbg="${contextPath}/resources/images/hero-1.jpg"></div>
            <div class="hs-item set-bg" data-setbg="${contextPath}/resources/images/hero-2.jpg"></div>
            <div class="hs-item set-bg" data-setbg="${contextPath}/resources/images/hero-3.jpg"></div>
        </div>
    </section>	
	<!-- //메인배너 -->    
	<!-- 숙소 리스트 -->	
    <div class="container">
		<div class="col-lg-12">
			<div class="section-title">
				<span>room list</span>
				<h2>오직 잠자리하우스에서만</h2>
			</div>
		</div>    
		<div class="room-list">
			<ul class="row">
				<li class="col-lg-4">
					<a href="#">
						<div class="room-list-img">
							<img alt="숙소이미지" src="${contextPath}/resources/images/room.jpg">
						</div>
						<div class="room-list-txt">
							<div class="room-list-txt-t">
								<span>충청남도 태안군 아마레</span><br>
								<span>기준 2인 / 최대 7인</span>
							</div>
							<div class="room-list-txt-p">230,000원</div>						
						</div>
					</a>
				</li>	
				<li class="col-lg-4">
					<a href="#">
						<div class="room-list-img">
							<img alt="숙소이미지" src="${contextPath}/resources/images/room.jpg">
						</div>
						<div class="room-list-txt">
							<div class="room-list-txt-t">
								<span>충청남도 태안군 아마레</span><br>
								<span>기준 2인 / 최대 7인</span>
							</div>
							<div class="room-list-txt-p">230,000원</div>						
						</div>
					</a>
				</li>	
				<li class="col-lg-4">
					<a href="#">
						<div class="room-list-img">
							<img alt="숙소이미지" src="${contextPath}/resources/images/room.jpg">
						</div>
						<div class="room-list-txt">
							<div class="room-list-txt-t">
								<span>충청남도 태안군 아마레</span><br>
								<span>기준 2인 / 최대 7인</span>
							</div>
							<div class="room-list-txt-p">230,000원</div>						
						</div>
					</a>
				</li>	
				<li class="col-lg-4">
					<a href="#">
						<div class="room-list-img">
							<img alt="숙소이미지" src="${contextPath}/resources/images/room.jpg">
						</div>
						<div class="room-list-txt">
							<div class="room-list-txt-t">
								<span>충청남도 태안군 아마레</span><br>
								<span>기준 2인 / 최대 7인</span>
							</div>
							<div class="room-list-txt-p">230,000원</div>						
						</div>
					</a>
				</li>	
				<li class="col-lg-4">
					<a href="#">
						<div class="room-list-img">
							<img alt="숙소이미지" src="${contextPath}/resources/images/room.jpg">
						</div>
						<div class="room-list-txt">
							<div class="room-list-txt-t">
								<span>충청남도 태안군 아마레</span><br>
								<span>기준 2인 / 최대 7인</span>
							</div>
							<div class="room-list-txt-p">230,000원</div>						
						</div>
					</a>
				</li>	
				<li class="col-lg-4">
					<a href="#">
						<div class="room-list-img">
							<img alt="숙소이미지" src="${contextPath}/resources/images/room.jpg">
						</div>
						<div class="room-list-txt">
							<div class="room-list-txt-t">
								<span>충청남도 태안군 아마레</span><br>
								<span>기준 2인 / 최대 7인</span>
							</div>
							<div class="room-list-txt-p">230,000원</div>						
						</div>
					</a>
				</li>																							
			</ul>
		</div> 
    </div>
	<!-- //숙소 리스트 -->	    
<%@include file="include/footer.jsp" %>
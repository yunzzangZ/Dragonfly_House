<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
			<!--어디로 떠날까요? 모달 팝업-->
			<div class="searchLoca-modal modal">
				<div class="searchLoca-modal-popup modal-popup">
					<div>
						<div class="modal-popup-txt">어디로 떠날까요?</div>
						<div class="search-container">
						    <input type="text" class="search-input" placeholder="검색어를 입력하세요" />
						</div>
						<ul class="searchLoca-list">
							<li><button type="button" class="searchLoca-item">전체</button></li>
							<li><button type="button" class="searchLoca-item">제주</button></li>
							<li><button type="button" class="searchLoca-item">서울</button></li>		
							<li><button type="button" class="searchLoca-item">강원</button></li>
							<li><button type="button" class="searchLoca-item">부산</button></li>
							<li><button type="button" class="searchLoca-item">경기</button></li>	
							<li><button type="button" class="searchLoca-item">충청</button></li>
							<li><button type="button" class="searchLoca-item">경상</button></li>
							<li><button type="button" class="searchLoca-item">전라</button></li>	
							<li><button type="button" class="searchLoca-item">인천</button></li>
							<li><button type="button" class="searchLoca-item">광주</button></li>	
							<li><button type="button" class="searchLoca-item">대전</button></li>
							<li><button type="button" class="searchLoca-item">대구</button></li>
							<li><button type="button" class="searchLoca-item">울산</button></li>																													
						</ul>
						<div class="search-btn-box"><button class="search-btn">SEARCH</button></div>
						<button class="searchLoca-close-btn close-btn">
							<img alt="닫기" src="${contextPath}/resources/images/close.png">
						</button>
					</div>
				</div>
			</div>
			<!--//어디로 떠날까요? 모달 팝업-->	
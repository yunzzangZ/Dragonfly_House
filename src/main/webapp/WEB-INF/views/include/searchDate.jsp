<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
			<!--언제 떠날까요? 모달 팝업-->
			<div class="searchDate-modal modal">
				<div class="searchDate-modal-popup modal-popup">
					<div>
						<div class="modal-popup-txt">언제 떠날까요?</div>
							<div class="calendar-section">
								<div class="row no-gutters">
								<div class="col-md-6">
									<div class="calendar calendar-first" id="calendar_first">
									<div class="calendar_header">
										<button class="switch-month switch-left">
										<i class="fa fa-chevron-left"></i>
										</button>
										<h2></h2>
										<button class="switch-month switch-right">
										<i class="fa fa-chevron-right"></i>
										</button>
									</div>
									<div class="calendar_weekdays"></div>
									<div class="calendar_content"></div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="calendar calendar-second" id="calendar_second">
									<div class="calendar_header">
										<button class="switch-month switch-left">
										<i class="fa fa-chevron-left"></i>
										</button>
										<h2></h2>
										<button class="switch-month switch-right">
										<i class="fa fa-chevron-right"></i>
										</button>
									</div>
									<div class="calendar_weekdays"></div>
									<div class="calendar_content"></div>
									</div>            
								</div>
								</div> <!-- End Row -->  
							</div> <!-- End Calendar -->						
						<div class="search-btn-box"><button class="search-btn">SEARCH</button></div>
						<button class="searchDate-close-btn close-btn"><img alt="닫기" src="${contextPath}/resources/images/close.png"></button>
					</div>
				</div>
			</div>
			<!--//언제 떠날까요? 모달 팝업-->
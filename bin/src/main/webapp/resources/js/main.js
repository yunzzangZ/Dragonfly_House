// 모달 팝업
const lModal = document.querySelector('.searchLoca-modal');
const lModalOpen = document.querySelector('.searchLoca-modal-btn');
const lModalClose = document.querySelector('.searchLoca-close-btn');

const dModal = document.querySelector('.searchDate-modal');
const dModalOpen = document.querySelector('.searchDate-modal-btn');
const dModalClose = document.querySelector('.searchDate-close-btn');

//열기 버튼을 눌렀을 때 모달팝업이 열림
lModalOpen.addEventListener('click',function(){
    lModal.classList.add('on');
});
dModalOpen.addEventListener('click',function(){
    dModal.classList.add('on');
});

//닫기 버튼을 눌렀을 때 모달팝업이 닫힘
lModalClose.addEventListener('click',function(){
    lModal.classList.remove('on');  
});
dModalClose.addEventListener('click',function(){
    dModal.classList.remove('on');  
});

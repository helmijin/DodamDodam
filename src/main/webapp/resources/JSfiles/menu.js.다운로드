$(function () {  
	/** 
	 * gnb 
	 */

	//gnb에 마우스오버/아웃시 (스타일)
	$('.header .gnb > li').hover(function(){
		//gnb 밑줄 추가
		$(this).addClass('active');
		}, function(){
		//gnb 밑줄 삭제
		$('.header .gnb > li').removeClass('active');
	});


	/** 
	 * lnb 
	 */


	//lnb 슬라이드 다운되었다가 들어감
	$('.header .gnb > li').mouseover(function(){ //gnb에 마우스오버시
		$('.header .wrap_lnb').stop().slideDown(350);
	});
	$('.header .lnb').mouseleave(function(){ //lnb에 마우스아웃시
		$('.header .wrap_lnb').stop().slideUp(350);
	});
	$('.header .wrap_gnb').mouseleave(function(){ //전체에서 마우스아웃시
		$('.header .wrap_lnb').stop().slideUp(350);
	});
	
});
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="../../../resources/css/footer.css">

<!-- footer Start -->

<footer id="footer">
	<div class="ft_wrap">
		<div class="ft_menu">
			<ul>
				<li><a href="/html/common_ui/content/check_agreement.php">이용약관</a></li>
				<li><a href="/html/common_ui/content/check_privacy.php">개인정보취급방침</a></li>
				<li><a href="/html/common_ui/content/alliance.php">제휴/섭외/도매/총판
						문의</a></li>
				<li><a href="/html/common_ui/customer/recruit.php">채용공고</a></li>
				<li class="last"><a
					href="customer.php">고객센터</a></li>
			</ul>
		</div>
		<div class="ft_bottom">
			<div class="inner">
				<div class="address">
					<address>
						(주)도담도담컴퍼니<span>대표: 김정환</span> <span>사업자등록번호: 114-87-19376</span> <span>통신판매업허가번호:
							2023-2조홧팅-2222</span><br> 경기 수원시 팔달구 덕영대로 899 3F <span>전화:
							1800-2222</span><br>
					</address>
					<p class="copy">COPYRIGHT(C) 2023 (주)도담도담컴퍼니 All right reserved.</p>
				</div>
			</div>
		</div>
		<div class="bodeumShop pcVer">
			<a href="/bodeum/shop/body"> 
			<img src="../../../resources/Bodeum_files/goshop.png"></a>
		</div>
	</div>

</footer>


<div id="quickMenu" class="quickMenu-rel">
	<h4>Quick menu</h4>
	<div class="cart"
		onclick="location.href='../common_ui/order/cart.php';">
		<i class="fa fa-shopping-cart" aria-hidden="true"></i>
		<p>장바구니</p>
	</div>
	<div class="recent">
		<h4>최근 본 상품</h4>
		<div id="recentWrap">
			<ul>
			</ul>
			<div class="page">
				<p>
					<span> </span>0 / 0
				</p>
				<a href='javascript:msgFirst()' ; class='prev'><i
					class='fa fa-angle-left' aria-hidden='true'></i></a> <a
					href='javascript:msgLast()' ; class='next'><i
					class='fa fa-angle-right' aria-hidden='true'></i></a>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="../../../resources/JSfiles/jquery.min.js.다운로드"></script>
<script type='text/javascript' src='../../../resources/JSfiles/heyModal.min.js.다운로드'></script>
<script src="../../../resources/JSfiles/jquery-1.11.2.min.js.다운로드"></script>

<script type="text/javascript" src="../../../resources/JSfiles/slider.js"></script>
<script src="../../../resources/JSfiles/jquery-2.2.0.min.js.다운로드"
	type="text/javascript"></script>
<script src="../../../resources/JSfiles/slick.js.다운로드" type="text/javascript"
	charset="utf-8"></script>
<script src="../../../resources/JSfiles/datepicker.js.다운로드"></script>

<script>
document.addEventListener('DOMContentLoaded', function() {
    var myModal = heyModal(document.querySelector('.modal-layerPopup'));
});
</script>
<script>
$('#minDatePick').dcalendarpicker();
$('#maxDatePick').dcalendarpicker();
//creates the calendar

<script type="text/javascript">
jQuery("document").ready(function($){
var nav = $('#m_header');
var pos = nav.offset().top;

$(window).scroll(function () {
var fix = ($(this).scrollTop() > pos) ? true : false;

nav.toggleClass("fixed", fix);
  $('body').toggleClass("fix-body", fix);
    });
});
</script>
<script type="text/javascript">
jQuery("document").ready(function($){
var nav = $('#header');
var pos = nav.offset().top;

$(window).scroll(function () {
var fix = ($(this).scrollTop() >= 100) ? true : false;
nav.toggleClass("fixed", fix);
});
$(window).scroll(function() {
      if ($(window).scrollTop() > 100) {
        $('#header.pcVer').addClass('fixed');
      } else {
        $('#header.pcVer').removeClass('fixed');
      };
  });
});

</script>

<script>
//상세페이지 정보

$(document).ready(function(e){
    var navWrap = $('body'),
        item = $('.prdInfoWrap'),
        gap = $("#header").height(),
        paddingGap = 60,
        startPosition = 0,
        stopPosition = $(".scrollStop").offset().top - item.outerHeight(true) - gap - paddingGap ;
    $(window).on("resize",function(e){
        if($(window).width()<990) {
            gap = 50;
            stopPosition = $(".scrollStop").offset().top - item.outerHeight(true) - gap - paddingGap ;
        } else {
            gap = $("#header.pcVer").height();
            stopPosition = $(".scrollStop").offset().top - item.outerHeight(true) - gap - paddingGap ;
        }
        
        $(document).trigger("scroll");
    })
    $(window).trigger("resize");
    $(window).scroll(function () {
        //stick nav to top of page
        var st = $(this).scrollTop();
        if( st > startPosition ){
            item.addClass("sticky-fixed");
            item.css({top:gap});
            if( st > stopPosition ) {
                item.removeClass("sticky-fixed");
                item.addClass("sticky-abs");
                item.css({top:stopPosition-paddingGap});
            } else {
                item.addClass("sticky-fixed");
                item.removeClass("sticky-abs");
            }
        } else {
            item.removeClass("sticky-fixed");
            item.css({top:gap+paddingGap});
            console.log("gap+paddingGap===",gap+paddingGap);
        }
    });
})
</script>
<script>
//FAQ jquery
//Accordian Action
var action = 'click';
var speed = "500";

//Document.Ready
$(document).ready(function(){
      //Question handler
    $('.reviewAccodion li.review-title').on(action, function(){
      //gets next element
      //opens .a of selected question
    $(this).next().slideToggle(speed)
        //selects all other answers and slides up any open answer
        .siblings('.reviewAccodion li.review-content').slideUp();

    });//End on click

    $('.reviewAccodion li.review-title').click(function(){
        $(this).toggleClass('on')
        .parent().siblings().children().removeClass('on');
    });

});//End Ready

</script>

<script>
//상품상세페이지 썸네일 마우스오버
$(".sm-thum-list ul li").mouseover(function(){
$(".sm-thum-list ul li").removeClass("active")
$(this).addClass("active")
})
</script>

<!-- Mobon Tracker v3.1 [공용] start -->
<script type="text/javascript">
<!--
function mobRf(){
  var rf = new EN();
rf.setSSL(true);
  rf.sendRf();
}
//-->
</script>
<script src="../../../resources/JSfiles/enliple_min2.js"
	defer="defer" onload="mobRf()"></script>
<!-- Mobon Tracker v3.1 [공용] end -->

<!-- WIDERPLANET  SCRIPT START 2018.8.1 -->
<div id="wp_tg_cts" style="display: none;"></div>
<script type="text/javascript">
var UserAgent = navigator.userAgent;
var widerplanet_device = (UserAgent.match(/iPhone|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson/i) != null
|| UserAgent.match(/LG|SAMSUNG|Samsung/) != null) ? "moblie" : "web";

var wptg_tagscript_vars = wptg_tagscript_vars || [];
wptg_tagscript_vars.push(
(function() {
return {
wp_hcuid:"",   /*고객넘버 등 Unique ID (ex. 로그인  ID, 고객넘버 등 )를 암호화하여 대입.
    *주의 : 로그인 하지 않은 사용자는 어떠한 값도 대입하지 않습니다.*/
ti:"41304",	/*광고주 코드 */
ty:"Home",	/*트래킹태그 타입 */
device:widerplanet_device	/*디바이스 종류  (web 또는  mobile)*/

};
}));
</script>
<!-- // WIDERPLANET  SCRIPT END 2018.8.1 -->

<!-- NAVER SCRIPT -->
<script type="text/javascript" src="../../../resources/JSfiles/wcslog.js"></script>
<script type="text/javascript">
if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "s_47fad347659f";
if (!_nasa) var _nasa={};
if (window.wcs ) {
wcs.inflow("bodeum.co.kr");
wcs_do(_nasa);
}
</script>
<!-- NAVER SCRIPT END -->

</body>

</html>
<!-- footer End -->


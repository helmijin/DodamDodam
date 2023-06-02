/*
 * Plugin: Web Slide - App Style Responsive Megamenu
 * Demo Link: http://webslidemenu.webthemex.com/
 * Version: v3.3
 * Author: webthemex
 * License: http://codecanyon.net/licenses/standard
*/

document.addEventListener("touchstart", function() {},false);
$(function() {
	$('#wsnavtoggle').click(function () {
	$('.wsmenucontainer').toggleClass('wsoffcanvasopener');
	$('.wsmenucontainer').removeClass('wsoffcanvasopener02');
	});

	$('.overlapblackbg').click(function () {
		$('.wsmenucontainer').removeClass('wsoffcanvasopener');
		$('.wsmenucontainer').removeClass('wsoffcanvasopener02');
	});

	$('#wsnavtoggle02').click(function () {
	$('.wsmenucontainer').toggleClass('wsoffcanvasopener02');
	$('.wsmenucontainer').removeClass('wsoffcanvasopener');
	});

	$('.wsmenutwo-close').click(function () {
	$('.wsmenucontainer').removeClass('wsoffcanvasopener02');
	});

	$('.wsmenu-list> li').has('.wsmenu-submenu').prepend('<span class="wsmenu-click"><i class="wsmenu-arrow fa fa-angle-down"></i></span>');
	$('.wsmenu-list > li').has('.megamenu').prepend('<span class="wsmenu-click"><i class="wsmenu-arrow fa fa-angle-down"></i></span>');

	$('.wsmenu-click').click(function(){
  	$(this).toggleClass('ws-activearrow')
    .parent().siblings().children().removeClass('ws-activearrow');

	$(".wsmenu-submenu, .megamenu").not($(this).siblings('.wsmenu-submenu, .megamenu')).slideUp('fast');
	$(this).siblings('.wsmenu-submenu').slideToggle('fast');
	$(this).siblings('.megamenu').slideToggle('fast');	

	});

	$('.wsmenu-list > li > ul > li').has('.wsmenu-submenu-sub').prepend('<span class="wsmenu-click02"><i class="wsmenu-arrow fa fa-angle-down"></i></span>');
	$('.wsmenu-list > li > ul > li > ul > li').has('.wsmenu-submenu-sub-sub').prepend('<span class="wsmenu-click02"><i class="wsmenu-arrow fa fa-angle-down"></i></span>');

	$('.wsmenu-click02').click(function(){
	$(this).children('.wsmenu-arrow').toggleClass('wsmenu-rotate');
	$(this).siblings('.wsmenu-submenu-sub').slideToggle('fast');
	$(this).siblings('.wsmenu-submenu-sub-sub').slideToggle('fast');
});




//Second menu JS

	$('.wsmenu02-list> li').has('.wsmenu02-submenu').prepend('<span class="wsmenu02-click"><i class="wsmenu-arrow fa fa-angle-down"><img src="../html/common/img/menu-arrow.png"></i></span>');
	$('.wsmenu02-list > li').has('.megamenu02').prepend('<span class="wsmenu02-click"><i class="wsmenu-arrow fa fa-angle-down"><img src="../html/common/img/menu-arrow.png"></i></span>');

	$('.wsmenu02-click').click(function(){
  	$(this).toggleClass('ws-activearrow02')
    .parent().siblings().children().removeClass('ws-activearrow02');

	$(".wsmenu02-submenu, .megamenu02").not($(this).siblings('.wsmenu02-submenu, .megamenu02')).slideUp('fast');
	$(this).siblings('.wsmenu02-submenu').slideToggle('fast');
	$(this).siblings('.megamenu02').slideToggle('fast');	

	});

	$('.wsmenu02-list > li > ul > li').has('.wsmenu02-submenu-sub').prepend('<span class="wsmenu02-click02"><i class="wsmenu-arrow fa fa-angle-down"><img src="../html/common/img/menu-arrow.png"></i></span>');
	$('.wsmenu02-list > li > ul > li > ul > li').has('.wsmenu02-submenu-sub-sub').prepend('<span class="wsmenu02-click02"><i class="wsmenu-arrow fa fa-angle-down"><img src="../html/common/img/menu-arrow.png"></i></span>');

	$('.wsmenu02-click02').click(function(){
	$(this).children('.wsmenu02-arrow').toggleClass('wsmenu02-rotate');
	$(this).siblings('.wsmenu02-submenu-sub').slideToggle('fast');
	$(this).siblings('.wsmenu02-submenu-sub-sub').slideToggle('fast');
	});

});
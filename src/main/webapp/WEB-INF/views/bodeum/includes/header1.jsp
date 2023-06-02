<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<link rel="stylesheet" type="text/css" href="../../../../resources/css/common.css" />
	<link rel="stylesheet" type="text/css" href="../../../../resources/css/slider.css" />
	<link rel="stylesheet" type="text/css" href="../../../../resources/css/main.css" />
	<link rel="stylesheet" type="text/css" href="../../../../resources/css/slick.css">
	<link rel="stylesheet" type="text/css" href="../../../../resources/css/slick-theme.css">
<div id="header"  class="header pcVer">

			<div class="header_inner">
				<div class="headerFull">
					<nav>
						<ul id="cd-navigation">
							<!--170725 디트리 링크 수정-->
							<li><a href="/bodeum/edu/main" >보듬교육</a></li>
							<li><a href="/bodeum/shop/body" >보듬숍</a></li>
						</ul>
					</nav> <!-- .cd-primary-nav -->
					<h1 class="logo"><img src="../../../resources/Bodeum_files/logo.jpg" alt="도담_pc" width="350px;">
					<!-- all menu -->
					<!-- right menu -->
					<div class="right_menu">
						<ul>
														<li><a href="#" onclick = "go_logout();" class="login">로그아웃</a></li>
							<li><a href="#" onclick = "go_home();">마이페이지</a></li>
														<li><a href="/html/common_ui/customer/customer.php">고객센터</a></li>
							<li><a href="#" onclick = "go_orderlist();">주문조회</a></li><!--170811 추가-->
							<li><a href="/html/common_ui/order/cart.php" class="cart">장바구니</a></li>
						</ul>
					</div>
							<script type="text/javascript"
						src="../../../resources/JSfiles/wcslog.js"></script>
					<script type="text/javascript">
					if(!wcs_add) var wcs_add = {};
					wcs_add["wa"] = "5996c8d9e51f18";
					wcs_do();
					</script>
				</div>
				<!-- //all menu -->
			

				<!-- Menu Edu -->
								<!-- Menu Edu -->
				<!-- Menu Shop -->
								<!-- Menu Shop -->
			</div>
			</div>
</body>
<script type="text/javascript">
	function go_logout(){
		self.location = "/bodeum/edu/logout"
	}

</script>
</html>
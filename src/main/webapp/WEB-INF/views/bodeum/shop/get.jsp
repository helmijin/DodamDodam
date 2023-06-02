<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" href="../../../resources/css/register.css">
<link rel="stylesheet" href="../../../resources/css/review.css">

<div id="wrapper" class="reviewmain">
	<div class="containerwrap">
		<div class="inner-contents">
			<div class="section">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header"></h1>
						<div class="product-review _product-review-container"
							data-product-id="1111076400"
							data-completed-order-vendor-item-id="7573764500"
							data-vendor-item-id="70073419572" data-category-id="8791">
							<div class="my-review__modify js_registerContainer">
								<div class="review-intake-form">
									<div class="review-intake-form__head">
										<div class="review-intake-form__title">
											<span class="review-intake-form__text">REVIEW</span>
										</div>
									</div>
								</div>
								<!-- /.col-lg-12 -->
							</div>
							<!-- /.row -->


							<div class="bodysection">
								<form role="form" action="/shop/register" method="post">

									<div class="review-intake-form__rating">
										<div class="review-table">
											<div class="review-table__cell review-intake-head title">
												<img
													src="../../../resources/Bodeum_files/1635147950_IMAGES1.jpg"
													width="100" height="100"
													title="에스쁘아 프로테일러 비 글로우 쿠션 파운데이션 13g 본품 + 리필 세트, 1호 바닐라, 1세트"
													alt="에스쁘아 프로테일러 비 글로우 쿠션 파운데이션 13g 본품 + 리필 세트, 1호 바닐라, 1세트" />
											</div>
											<div class="review-table__cell description">
												<div class="review-intake-form__product-title">
													<strong>상품명</strong>
												</div>
											</div>
										</div>
									</div>
							</div>
							<div class="review-intake-form__summary">

								<div class="my-review__modify__review">
									<div class="my-review__modify__field__title" readonly>제목
									</div>

									<div class="my-review__field__content">
										<input
											class="my-review__field__content__input summary js_reviewModifyHeadLine"
											type="text" placeholder="${review.rtitle}" readonly>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="review-intake-form__detail-review">
						<div class="my-review__modify__review">
							<div class="my-review__modify__field__title">내용</div>

							<div class="my-review__modify__review__content">

								<div class="my-review__modify__review__content__text-wrap">
									<textarea
										class="my-review__modify__review__content__text-area js_reviewModifyTextArea"
										placeholder="${review.rcontent }" rows="5" readonly></textarea>
								</div>


								<div class="my-review__flip-write-tooltip">${review.rtitle}</div>
							</div>
						</div>
						<div class="my-review__modify__file">
							<div class="my-review__modify__field__title">사진 첨부</div>
							<div
								class="my-review__modify__file__content js_reviewModifyFileContainer"
								data-attachment-max-size="10">
								<div>

									<div class="inputArea">
								<input type="file" id="fileItem" name='uploadFile' style="height: 30px;"> 
									<input type="file" multiple>
								<input type="file" multiple>


										<div
											class="my-review__modify__file__frame js_reviewModifyIframeContainer"
											data-token="9de4535d-1849-4d53-872b-063e3734450d"
											data-url="//fileupload.coupang.com/fileupload?token=9de4535d-1849-4d53-872b-063e3734450d&amp;serviceInfo=PRODUCTREVIEW&amp;resizeOrigin=true"
											data-param-name="files" data-serviceInfo=""
											data-thumbnail-path="https://ts.coupangcdn.com/thumbnails/local/320/"></div>
									</div>
								</div>
							</div>
						</div>


						<div class="review-intake-register">
							<button class="modify-button _review-modify" type="button">수정하기</button>
							<button class="list-button _review-list" type="button">돌아가기</button>
						</div>

					</div>

		<script>
	$(document).ready(function(){
		var operForm = $("#operForm");
		$("button[data-oper='modify']").on("click",function(e){
			operForm.attr("action", "/shop/modify").submit();
		});
		$("button[data-oper='list']").on("click",function(e){
			operForm.find("#boardnum").remove();
			operForm.attr("action", "/shop/list");
			operForm.submit();
		});
		
	});
</script>

		<!-- register 가져옴 -->
		<script>
						$("#gdsImg").change(
								function() {
									if (this.files && this.files[0]) {
										var reader = new FileReader;
										reader.onload = function(data) {
											$(".select_img img").attr("src",
													data.target.result).width(
													500);
										}
										reader.readAsDataURL(this.files[0]);
									}
								});
					</script>

		<script>
						define(
								[ 'jquery',
										'app-pcweb/js/modules/productreview/util/template' ],
								function($, Template) {
									'use strict';

									var done, fail, always, before, after, isClick, isUpload, $container, $uploadButton;

									function render() {
										var template = Template
												.getTemplate('.js_reviewIframeTemplate'), data = $container
												.data(), $iframe = $(Template
												.setData(
														template,
														{
															url : data.url,
															token : data.token,
															serviceInfo : data.serviceinfo
														}));

										$iframe.on('load', function() {
											setEvent();

											$iframe.off('load');
										});

										$container.html($iframe);
									}

									function setEvent() {
										var $iframe = $container.find('iframe')
												.contents(), $fileButton = $iframe
												.find('input[name="files"]'), $submit = $iframe
												.find('.submit-btn');

										$uploadButton.off().on(
												'click',
												function(e) {

													if (isClick)
														if (isClick())
															return;

													$fileButton
															.trigger('click');

													e.preventDefault();
													e.stopPropagation();
												});

										$fileButton.off().on('change',
												function(e) {

													if (isUpload)
														if (isUpload(this))
															return;

													if (before)
														before();

													$submit.trigger('click');

													e.preventDefault();
													e.stopPropagation();
												});
									}

									function fileUploadCompleted(str) {
										var data = $.parseJSON(str), arr;

										if (data.status === 'SUCCESS') {

											if (done) {
												arr = data.result;

												for (var i = arr.length; i--;)
													done(arr[i]);
											}

											if (after)
												after();

										} else {

											if (data.displayMessage) {
												alert(data.displayMessage);
												/* https://bts.coupang.net/browse/PEQA-7167 token expiration may cause infinite alert*/
												if (data.status === 'FAIL'
														&& data.result === 'TOKEN') {
													location.reload();
													return;
												}
											} else
												alert('이미지 업로드 중 오류가 발생하였습니다.');

										}

										if (always)
											always(data);

										render();
									}

									function init(obj) {

										//upload complete
										done = obj.done || null;
										fail = obj.fail || null;
										always = obj.always || null;

										//upload before, after
										before = obj.before || null;
										after = obj.after || null;

										//uploadBtn click?
										isClick = obj.isClick || null;

										//multiple upload use.
										isUpload = obj.isUpload || null;

										//parent div
										$container = $(obj.container);

										//upload button
										$uploadButton = $(obj.button);

										//cross domain setting
										resetParentDomain();
										//global completed function
										window.fileUploadCompleted = fileUploadCompleted;

										render();
									}

									function resetParentDomain() {
										var tempDomain = document.domain;
										var domainSeparator = ".";
										var lastDotPos = tempDomain
												.lastIndexOf(domainSeparator);
										var parentDomainTemp = tempDomain
												.substring(0, lastDotPos);
										var parentDomainPos = parentDomainTemp
												.lastIndexOf(domainSeparator);
										if (parentDomainPos != -1) {
											document.domain = parentDomainTemp
													.substring(
															parentDomainPos + 1,
															parentDomainTemp.length)
													+ domainSeparator
													+ tempDomain.substring(
															lastDotPos + 1,
															tempDomain.length);
										}

									}

									return {
										init : init,
										fileUploadCompleted : fileUploadCompleted
									};
								});
					</script>
		</body>
		</html>
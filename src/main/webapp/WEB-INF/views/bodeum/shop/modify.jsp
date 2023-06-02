<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="../includes/header.jsp"%>
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
											<span class="review-intake-form__text">후기 수정</span>
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
													width="100" height="100" title="상품명" alt="상품명" />
											</div>
											<div class="form-group">
												<div class="review-table__cell description">
													<div class="review-intake-form__product-title">
														<strong>${review.itemnum}</strong>
													</div>
												</div>
											</div>
										</div>
									</div>
							</div>
							<div class="form-group">
								<div class="my-review__modify__review">
									<div class="my-review__modify__field__title">제목</div>
									<div class="my-review__field__content">
										<input
											class="my-review__field__content__input summary js_reviewModifyHeadLine"
											type="text" value="">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
					<div class="review-intake-form__detail-review" style="margin-left: -15px; margin-right: -15px;">
					<div class="my-review__modify__review">
						<div class="my-review__modify__field__title">내용</div>
						<div class="my-review__modify__review__content">
							<div class="my-review__modify__review__content__text-wrap">
								<textarea
									class="my-review__modify__review__content__text-area js_reviewModifyTextArea"
									rows="5"> ${review.rcontent } </textarea>
							</div>


							<div class="my-review__flip-write-tooltip">상품 품질과 관계 없는 내용은
								비공개 처리될 수 있습니다.</div>
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
						<button class="remove-button _review-remove" type="button">삭제하기</button>
						<button class="list-button _review-list" type="button">돌아가기</button>
					</div>
				</div>
<script>
	$(document).ready(function() {
		var formObj = $("form");

		$('button').on("click", function(e) {
			e.preventDefault();
			var operation = $(this).data("oper");

			if (operation === 'remove') {
				formObj.attr("action", "/shop/remove");
			} else if (operation === 'list') {
				//move to list
				formObj.attr("action", "/shop/list").attr("method", "get");
				var pageNumTag = $("input[name='pageNum']").clone();
				var amountTag = $("input[name='amount']").clone();
				var typeTag = $("input[name='type']").clone();
				var keywordTag = $("input[name='keyword']").clone();
				formObj.empty();
				formObj.append(pageNumTag);
				formObj.append(amountTag);
				formObj.append(typeTag);
				formObj.append(keywordTag);
			}
			formObj.submit();

		});
	});
</script>

<!-- register 폼 가져옴 -->
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
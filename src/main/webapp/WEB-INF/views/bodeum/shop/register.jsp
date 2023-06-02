<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ include file="../includes/header.jsp"%>
<link rel="stylesheet" href="../../../resources/css/register.css">

</head>
<body>
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
												<span class="review-intake-form__text">후기 등록</span>
											</div>
										</div>
									</div>
									<!-- /.col-lg-12 -->
								</div>
								<!-- /.row -->
								<div class="bodysection">
									<form role="form" action="/shop/register" method="post"
										enctype="multipat/form-data">
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
															<strong>상품명 ${product.item} </strong>
														</div>
													</div>
												</div>
											</div>
										</div>
								</div>
								<div class="form-group">
									<div class="review-intake-form__summary">
										<div class="my-review__modify__review">
											<div class="my-review__modify__field__title">작성자</div>

											<div class="my-review__field__content">
												<input
													class="my-review__field__content__input summary js_reviewModifyHeadLine"
													type="text" placeholder=" ${board.userid}" readonly
													style="padding-left: 10px;" name="userid">
												<!--  readonly로 만들어주기 -->
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
												type="text" placeholder="제목을 입력해 주세요" value=""
												style="padding-left: 10px;" name="rtitle">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="review-intake-form__detail-review"
							style="margin-left: -15px; margin-right: -15px;">
							<div class="my-review__modify__review">
								<div class="my-review__modify__field__title">내용</div>

								<div class="my-review__modify__review__content">

									<div class="my-review__modify__review__content__text-wrap">
										<textarea
											class="my-review__modify__review__content__text-area js_reviewModifyTextArea"
											placeholder="다른 고객님에게 도움이 되도록 상품에 대한 솔직한 평가를 남겨주세요." rows="5" name="rcontent"></textarea>
									</div>


									<div class="my-review__flip-write-tooltip">상품 품질과 관계 없는
										내용은 비공개 처리될 수 있습니다.</div>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="my-review__modify__file">
								<div class="my-review__modify__field__title">사진 첨부</div>

								<div class="inputArea">
									<input type="file" id="fileItem" name='rpic1'
										style="height: 30px;"> <input type="file" multiple name='rpic2'>
									<input type="file" multiple name='rpic3'>

									<!-- <span class="my-review__modify__file__count"> <strong
												class="js_reviewModifyFileUploadCount">0</strong>&nbsp;&#47;&nbsp;<span>10</span>
											</span> <span class="my-review__modify__file__guide">사진은 최대
												20MB 이하의 JPG, PNG, GIF 파일 10장까지 첨부 가능합니다.</span>
										</div>-->

									<div
										class="my-review__modify__file__list-wrap js_reviewModifyImageListContainer">
									</div>
								</div>

								<script>
							/* 이미지 업로드 */
							$("input[type='file']").on("change", function(e){
								
								/* 이미지 존재시 삭제 */
								if($(".imgDeleteBtn").length > 0){
									deleteFile();
								}
								
								let formData = new FormData();
								let fileInput = $('input[name="uploadFile"]');
								let fileList = fileInput[0].files;
								let fileObj = fileList[0];
								
								if(!fileCheck(fileObj.name, fileObj.size)){
									return false;
								}
								
								for(let i = 0; i < fileList.length; i++){
									formData.append("uploadFile", fileList[i]);
									
									$.ajax({
										url: '/list/uploadAjaxAction',
								    	processData : false,
								    	contentType : false,
								    	data : formData,
								    	type : 'POST',
								    	dataType : 'json'
								    	success : function(result) {
								    	console.log(result);
									showUploadImage(result);
									},
									error : function(result){
										alert("이미지 파일이 아닙니다.");
									}
									});	
					
							/* var, method related with attachFile */
							let regex = new RegExp("(.*?)\.(jpg|png)$");
							let maxSize = 1048576; //1MB	
							
							function fileCheck(fileName, fileSize){

								if(fileSize >= maxSize){
									alert("파일 사이즈 초과");
									return false;
								}
									  
								if(!regex.test(fileName)){
									alert("해당 종류의 파일은 업로드할 수 없습니다.");
									return false;
								}
								
								return true;		
							}
							
							/* 이미지 출력 */
							function showUploadImage(uploadResultArr){
								
								/* 전달받은 데이터 검증 */
								if(!uploadResultArr || uploadResultArr.length == 0){return}
								
								let uploadResult = $("#uploadResult");
								let obj = uploadResultArr[0];
								let str = "";
								let fileCallPath = encodeURIComponent(obj.uploadPath.replace(/\\/g, '/') + "/s_" + obj.uuid + "_" + obj.fileName);
								
								str += "<div id='result_card'>";
								str += "<img src='/display?fileName=" + fileCallPath +"'>";
								str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'> x </div>";
								str += "<input type='hidden' name='rvwList[0].fileName' value='"+ obj.fileName +"'>";
								str += "<input type='hidden' name='rvwList[0].uuid' value='"+ obj.uuid +"'>";
								str += "<input type='hidden' name='rvwList[0].uploadPath' value='"+ obj.uploadPath +"'>";
								str += "</div>";		
								
						   		uploadResult.append(str);     
						        
							}	
							
							/* 이미지 삭제 버튼 동작 */
							$("#uploadResult").on("click", ".imgDeleteBtn", function(e){
								
								deleteFile();
								
							});
							
							/* 파일 삭제 메서드 */
							function deleteFile(){
								
								let targetFile = $(".imgDeleteBtn").data("file");
								let targetDiv = $("#result_card");
								
								$.ajax({
									url: '/list/deleteFile',
									data : {fileName : targetFile},
									dataType : 'text',
									type : 'POST',
									success : function(result){
										console.log(result);
										
										targetDiv.remove();
										$("input[type='file']").val("");
										
									},
									error : function(result){
										console.log(result);
										
										alert("파일을 삭제하지 못하였습니다.")
									}
								});
							}
							</script>

					
							</div>
						</div>
					</div>


					<div class="review-intake-register">
						<button data-oper='cancel' class="cancel-button _review-cancel"
							onclick="location.href='/shop/list?rboardnum=<c:out value="${review.rboardnum}"/>'">취소하기</button>
						<button class="submit-button _review-submit" type="submit">등록하기</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
						$("#itempic").change(
								function() {
									if (this.files && this.files[0]) {
										var reader = new FileReader;
										reader.onload = function(data) {
											$(".select_img img").attr("src",
													data.target.result).width(500);
										}
										reader.readAsDataURL(this.files[0]);
									}
								});
					</script>

	<script>
					var	define(
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
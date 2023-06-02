<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="../../../../resources/css/common.css" />
	<link rel="stylesheet" type="text/css" href="../../../../resources/css/slider.css" />
	<link rel="stylesheet" type="text/css" href="../../../../resources/css/main.css" />
	<link rel="stylesheet" type="text/css" href="../../../../resources/css/slick.css">
	<link rel="stylesheet" type="text/css" href="../../../../resources/css/slick-theme.css">
</head>
<body>
<%@ include file="../includes/header1.jsp" %>
<div id="wrapper">
			<div class="containerWrap mypage-all-wrap">
				
				<div class="content">
					<div class="inner-contents">
						<div class="mypage-section">
							<%@ include file="../includes/leftblock.jsp" %>

							<div class="rightBlock">
								<div class="lesson-title">
									<h2>1:1 문의하기</h2>
								</div>

<div class="myInqWrite">
    <form name="bbs_write_form" action="?mode=wr&bbs_write_ok.php" method="post" enctype="multipart/form-data">
        <input type="hidden" name="bbs_data" value="aWR4PSZQYWdlTnVtYmVyPTEmbGlzdE5vPTAmdGFibGU9aWRfYmJzX2RhdGEmY29kZT1teUlucSZzZWFyY2hfaXRlbT0mc2VhcmNoX29yZGVyPQ==||">
        <input type="hidden" name="ref" value="">
        <input type="hidden" name="re_step" value="">
        <input type="hidden" name="re_level" value="">
        <input type="hidden" name="name" value="성영준">
        <input type="hidden" name="userid" value="yj4249">
        <input type="hidden" name="pwd" value="d41d8cd98f00b204e9800998ecf8427e">
        <input type="hidden" name="secret" value="">
        <input type="hidden" name="trade_method" id="trade_method" value="">
        <input type="hidden" name="refund_flag" id="refund_flag" value="0">
        <table class="list-table">
            <colgroup>
                <col width="100%">
            </colgroup>
            <tbody>
            <tr>
                <td>
                    <h4>문의유형</h4>
                    <div class="srchFilter">
                        <select name="inq_category" class="w160" >
                            <option value="">-----</option>
							                                    <option value="배송문의">배송문의</option>
								                                    <option value=" 상품문의"> 상품문의</option>
								                                    <option value=" 주문/결제"> 주문/결제</option>
								                                    <option value=" 취소문의"> 취소문의</option>
								                                    <option value=" 반품/환불"> 반품/환불</option>
								                                    <option value="  교환문의">  교환문의</option>
								                                    <option value=" 기타문의"> 기타문의</option>
								                                    <option value=" 온라인 강의"> 온라인 강의</option>
								                                    <option value=" 오프라인 수업"> 오프라인 수업</option>
								                        </select><br>
                        <span class="color-gray">※ 취소문의는 <span class="skyBlue">배송중</span>상태 이전에만 가능합니다.</span>
                    </div>
                </td>
            </tr>
            <tr class="tradeCode">
                <td>
                    <h4>주문번호</h4>
                    <input type="text" name="trade_code" id="trade_code" class="w160" readonly/>
					                        <a href="#layerPopup"  class="modal-layerPopup roundBtn whiteBtn">주문번호</a>
					                    <!--<span class="js-open-modal show modal-layerPopup roundBtn whiteBtn">주문번호</span>
					<a href="javascript:orderSelect();" class="roundBtn whiteBtn">주문번호</a>-->
                </td>
            </tr>
            <tr>
                <td>
                    <h4>이메일</h4>
                    <input type="text" name="inq_email" class="w160"/>
                    <div class="checkArea mb-10">
                        <input type="checkbox" name="inq_email_check" id="check1" value="1">
                        <label for="check1" class="check">답변수신을 이메일로 받겠습니다.</label>
                    </div>
                </td>
            </tr>

            <!--171031 추가-->
            <tr>
                <td class="phoneNumber">
                    <h4>휴대폰</h4>
                    <div class="srchFilter">
                        <select name="inq_hp1" class="w160">
                            <option value="010">010</option>
                            <option value="011">011</option>
                            <option value="016">016</option>
                            <option value="017">017</option>
                            <option value="018">018</option>
                            <option value="019">019</option>
                        </select>
                        <span>-</span>
                        <input type="text" name="inq_hp2" class="phone"placeholder="">
                        <span>-</span>
                        <input type="text" name="inq_hp3" class="phone"placeholder="">
                    </div>
                    <div class="checkArea mb-10">
                        <input type="checkbox" name="inq_phone_check" id="check2" value="1">
                        <label for="check2" class="check">답변등록시 문자메시지로 알림을 받겠습니다.</label>
                    </div>
                </td>
            </tr>
            <!--//171031 추가-->

            <tr>
                <td>
                    <h4>제목</h4>
                    <input type="text" name="inq_title" class="fullInput"/>
                </td>
            </tr>
            <tr>
                <td>
                    <h4>내용</h4>
                    <textarea name="inq_content"></textarea>

                </td>
            </tr>
            <tr class="fileAttach">
                <td>
					                            <div class="clearFix file_upload">
                                <div class="attached-file">
                                    <div class="attachList">
                                        <div class="bbs_file_name"></div>
                                    </div>
                                    <input type="file" name="bbs_file1" style="display:none">
                                    <div class="attachBtn"><a href="javascript:;">파일첨부</a></div>
                                </div>
                                <span class="capacity" filesize=""></span>
                            </div>
						                            <div class="clearFix file_upload">
                                <div class="attached-file">
                                    <div class="attachList">
                                        <div class="bbs_file_name"></div>
                                    </div>
                                    <input type="file" name="bbs_file2" style="display:none">
                                    <div class="attachBtn"><a href="javascript:;">파일첨부</a></div>
                                </div>
                                <span class="capacity" filesize=""></span>
                            </div>
						                            <div class="clearFix file_upload">
                                <div class="attached-file">
                                    <div class="attachList">
                                        <div class="bbs_file_name"></div>
                                    </div>
                                    <input type="file" name="bbs_file3" style="display:none">
                                    <div class="attachBtn"><a href="javascript:;">파일첨부</a></div>
                                </div>
                                <span class="capacity" filesize=""></span>
                            </div>
						                        <div class="notify skyBlue">
                            ※ 100MB이하의 파일만 등록 가능합니다.<br>
                            (이미지파일과 동영상파일, pdf 파일만 첨부 가능합니다.)
                       </div>
                </td>
            </tr>
            </tbody>
        </table>
    </form>
    <div class="btn">
        <a href="javascript:history.go(-1);" class="roundBtn whiteBtn">취소</a>
        <a href="javascript:writeSendit();" class="roundBtn blueBtn">등록</a>
    </div>
</div>
<script>
    $(function(){
        // $("input[type=file]").change(function(){
        //     var fileSize = $(this)[0].files[0].size;
        //     var fileSize2 = Number($(this)[0].files[0].size / 1024 / 1024);
        //     $(this).next().text("("+ fileSize +")");
        // });
    });
</script>
<script language="javascript">
    <!--
    function writeSendit() {
        var form=document.bbs_write_form;

		
        if( form.category.value=="") {
            alert("문의유형을 선택해주세요.");
            form.category.focus();
        } else if(form.email_check.checked && form.email.value=="") {
            alert("이메일을 입력해주세요.");
            form.email.focus();
        } else if(form.subject.value=="") {
            alert("제목을 입력해주세요.");
            form.subject.focus();
        } else if( form.content.value=="") {
            alert("내용을 입력해 주십시오.");
            form.content.focus();
			        } else {
            form.submit();
        }

    }

    function textarea_resize( formname, size ) {
        if( size=='reset' ){
            formname.rows = 10;
        }else{
            var value = formname.rows + size;
            if(value>11) formname.rows = value;
            else return;
        }
    }

    //이메일
    function res(){
        var f = document.bbs_write_form;
        if(f.user_email3.value=="a"){
            f.email2.readOnly= false;
            f.email2.value="";
            f.email2.focus();
        }else if(f.user_email3.value=="b"){
            f.email2.readOnly= false;
            f.email2.value="";
        }else{
            f.email2.readOnly= false;
            f.email2.value=f.user_email3.value;
        }
    }

    //주문내역 확인
    function orderSelect(){
        window.open("/html/common_ui/mypage/myOrderList.php","pop","width=850,height=730,scrollbars=yes");
    }
    //-->

    $(function(){
        // 파일 선택시
        $(".file_upload input[type=file]").change(function(){
            var parent = $(this).parents('.file_upload');
            var filename_el = $(parent).find('.bbs_file_name');
            var capacity_el = $(parent).find('.capacity');

            // 파일을 선택했을경우
            if($(this).val()){
                var fileSize = $(this)[0].files[0].size;    // 현재 선택된 파일 용량
                var totfilesize = 0;                        // 선택된 파일 용량 합
                var max_size = 100 * 1024 * 1024;           // 업로드 용량 제한 100MB
                $(filename_el).text($(this)[0].files[0].name);
                $(".capacity").each(function(){
                    // 같은 항목이면 총합에서 제외
                    if(capacity_el[0] == $(this)[0]){
                        return true;
                    }
                    totfilesize += Number($(this).attr('filesize'));
                });
                // 총합과 맥스사이즈 비교
                if( max_size < (totfilesize + fileSize) ){
                    var curr_file = getReadableFileSizeString(totfilesize + fileSize);
                    alert('첨부파일의 제한용량을 초과했습니다.('+curr_file+'/100MB)');
                    $(this).val('');
                    $(filename_el).text('');
                    $(capacity_el).text('');
                    $(capacity_el).attr('filesize', 0);
                }else{
                    $(capacity_el).attr('filesize', fileSize);
                    $(capacity_el).text(getReadableFileSizeString(fileSize));
                }
            }
            // 파일을 선택하지 않고 취소한경우
            else{
                $(filename_el).text('');
                $(capacity_el).text('');
                $(capacity_el).attr('filesize', 0);
            }
        });

        // 파일명 클릭 or 파일첨부 버튼 클릭
        $(".file_upload .attachBtn a, .file_upload .bbs_file_name").click(function(){
            $(this).parents('.file_upload').find("input[type=file]").trigger('click');
        });
    });

    function getReadableFileSizeString(fileSizeInBytes) {
        var i = -1;
        var byteUnits = ['kb', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'];
        do {
            fileSizeInBytes = fileSizeInBytes / 1024;
            i++;
        } while (fileSizeInBytes > 1024);

        return Math.max(fileSizeInBytes, 0.1).toFixed(1) + byteUnits[i];
    };
</script>
<!--상품 문의하기 팝업 추가-->
<script type="text/javascript">
    function select(trade_code,goods_name, trade_method){
        $("#trade_code").val(trade_code);
        $("#trade_goods").val(goods_name);
        $("#trade_method").val(trade_method);
        $('.modal__close').click();
        check_refund_view();
    }

    function check_refund_view(){
        var catetory_refund = $("select[name=category] option[value=' 반품/환불']").is(":selected");
        if(($("#trade_method").val() == "3" || $("#trade_method").val() == "2") && catetory_refund ){
            $(".refundInput").removeClass('blind');
            $("#refund_flag").val('1');
        }else{
            $(".refundInput").addClass('blind');
            $("#refund_flag").val('0');
        }
    }
</script>
<div id="layerPopup" class="qaPopup" style="display: none;">
    <h3 data-hey-title></h3>
    <div data-hey-body>
        <div class="orderNumberPopup">
            <h3>내 주문내역</h3>
            <!-- <div class="mypageGrayBox mypage-srchFilter mb-50">
				<h4>기간</h4>
				<div class="divWrap">
					<div class="datePick">
						<input type="text" class="datepicker-here" id="minDatePick" data-language="en" />
						<span>~</span>
						<input type="text" class="datepicker-here" id="maxDatePick" data-language="en" />
					</div>
					<div class="srchBtn">
						<a href="#">조회</a>
					</div>
				</div>
			</div> -->
			
            <div class="color-gray total">0건</div>
            <div class="color-blue">교환 및 반품은 구매 7일 이내에 가능합니다.</div>

            <!--주문번호 검색페이지 레이아웃 변경-->

			                <table class="list-table order-table payment-table mb-50">
                    <colgroup>
                        <col width="60%">
                        <col width="20%">
                        <col width="20%">
                    </colgroup>
                    <tbody>
                    <tr class="no-data">
                        <td colspan="3">
                            <img src="../../common/img/no_data_img.png">
                            <p class="txt">주문/결제내역이 없습니다.</p>
                        </td>
                    </tr>
                    </tbody>
                </table>
			
			

            <!-- <table class="list-table point-table orderNumTable myInqList blind">
				<colgroup>
					<col width="10%">
					<col width="20%">
					<col width="10%">
					<col width="35%">
					<col width="15%">
					<col width="10%">
				 </colgroup>
				<thead>
					<tr>
						<th>주문일</th>
						<th>주문번호</th>
						<th>구분</th>
						<th>주문상품</th>
						<th>금액</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
									</tbody>
			</table> -->
            <!-- <div class="paging">
				<ol>
					<li class="active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li class="etc">…</li>
					<li><a href="#">10</a></li>
				</ol>
				<p><a href="#">Prev</a> </p>
				<p class="last"><a href="#">Next</a></p>
			</div> -->
            <div class="btn">
                <a href="#" onClick="$('.modal__close').click();" class="roundBtn whiteBtn">취소</a>
            </div>
        </div>
    </div>

</div>
<!--//상품 문의하기 팝업 추가-->								<!-- 게시판 삽입 종료 -->
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
<%@ include file="../includes/footer.jsp" %>
</body>
</html>
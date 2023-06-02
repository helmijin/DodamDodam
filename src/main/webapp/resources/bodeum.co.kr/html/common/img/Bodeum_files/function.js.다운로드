// 회원가입 약관 및 개인정보 취급방침 동의
function joinCheck() {
    var form = document.join_form;
    if (form.agree1.checked == false) {
        alert("약관에 동의해주세요.");
        form.agree1.focus();
    } else if (form.agree2.checked == false) {
        alert("개인정보 취급방침에 동의해주세요.");
        form.agree2.focus();
    } else {
        form.submit();
    }
}

// 모두 동의 체크
$(document).ready(function() {
    $('#agreeAll').change(function() {
        if (this.checked) {
            $('#agree1').attr('checked', true);
            $('#agree2').attr('checked', true);
        } else {
            $('#agree1').attr('checked', false);
            $('#agree2').attr('checked', false);
        }
    });
});

// 아이디중복검색	 && 추천인 아이디 검색
function idSearch1() {
    var form = document.writeForm;
    var reg_uid = /([a-zA-Z0-9!,@,#,$,%,^,&,*,?,_,~)|(!,@,#,$,%,^,&,*,?,_,~a-zA-Z0-9]){4,10}$/;
    if (form.userid.value == "") {
        alert("아이디를 입력해 주세요.");
        form.userid.focus();
    } else if (!reg_uid.test(form.userid.value)) {
        alert("아이디는 영문,숫자,특수문자 4~10자 이내로 입력해 주세요.");
        form.userid.focus();
    } else {
        $.ajax({
            url: './id_search.php',
            type: 'GET',
            //userid:$('#userid').val(),
            data: 'method=1&userid=' + $('#userid').val(),
            success: function(data) {
                $('#id_chk').html(data);
            }
        })
    }
}

function idSearch2() {
    var form = document.writeForm;
    if (form.recomid.value == "") {
        alert("추천인 아이디를 입력해 주세요.");
        form.recomid.focus();
    } else if (form.recomid.value.length < 4 || form.recomid.value.length > 21) {
        alert("추천인 아이디는 최소 4자 이상 입력 주세요.");
        form.recomid.focus();
    } else {
        $.ajax({
            url: './id_search.php',
            type: 'GET',
            //recomid:$('#recomid').val(),
            data: 'method=2&userid=' + $('#recomid').val(),
            success: function(data) {
                $('#recomid_chk').html(data);
            }
        })
    }

}

//아이디 저장
/*
$(document).ready(function(){
    // 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
    var userInputId = getCookie("userInputId");
    $("input[name='uid']").val(userInputId);  
    if($("input[name='uid']").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
        $("#idSaveCheck").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
    }
    $("#idSaveCheck").change(function(){ // 체크박스에 변화가 있다면,
        if($("#idSaveCheck").is(":checked")){ // ID 저장하기 체크했을 때,
            var userInputId = $("input[name='uid']").val();
            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
        }else{ // ID 저장하기 체크 해제 시,
            deleteCookie("userInputId");
        }
    });

    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
    $("input[name='uid']").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
        if($("#idSaveCheck").is(":checked")){ // ID 저장하기를 체크한 상태라면,
            var userInputId = $("input[name='uid']").val();
            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
        }
    });
});

*/

function setCookie(cookieName, value, exdays) {
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    var cookieValue = escape(value) + ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
    document.cookie = cookieName + "=" + cookieValue;
}

function deleteCookie(cookieName) {
    var expireDate = new Date();
    expireDate.setDate(expireDate.getDate() - 1);
    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}

function getCookie(cookieName) {
    cookieName = cookieName + '=';
    var cookieData = document.cookie;
    var start = cookieData.indexOf(cookieName);
    var cookieValue = '';
    if (start != -1) {
        start += cookieName.length;
        var end = cookieData.indexOf(';', start);
        if (end == -1) end = cookieData.length;
        cookieValue = cookieData.substring(start, end);
    }
    return unescape(cookieValue);
}


// 이메일중복검색
function emailWinOpen() {
    var form = document.writeForm;

    if (form.email.value == "") {
        alert("이메일을 입력해 주세요.");
        form.email.focus();
    } else if (form.email2.value == "") {
        alert("이메일을 입력해 주세요.");
        form.email2.focus();
    } else {
        window.open("email_search_pop.php?email=" + form.email.value + "&email2=" + form.email2.value, "", "scrollbars=no, width=400, height=250");
    }

}

// 휴대폰 인증번호 전송
function authNumberSend() {
    var form = document.writeForm;
    if (form.hp1.value == "") {
        alert("휴대폰번호를 입력해주세요.");
        form.hp1.focus();
    } else if (form.hp2.value == "") {
        alert("휴대폰번호를 입력해주세요.");
        form.hp2.focus();
    } else if (form.hp3.value == "") {
        alert("휴대폰번호를 입력해주세요.");
        form.hp3.focus();
    } else {
        $.ajax({
            url: '/html/common_ui/member/send_auth_num.php',
            type: 'GET',
            data: 'sendauth=1&auth_number=' + $('#hidden_auth_number').val() + '&auth_gubun=' + $('#hidden_auth_gubun').val() + '&hp1=' + $('#hp1').val() + '&hp2=' + $('#hp2').val() + '&hp3=' + $('#hp3').val(),
            success: function(data) {
                $('#authSend').html(data);
            }
        })
    }
}

// 휴대폰 인증
function authNumberCheck() {
    var form = document.writeForm;
    if (form.auth_number.value == "") {
        alert("인증번호를 입력해주세요.");
        form.auth_number.focus();
    } else {
        $.ajax({
            url: '/html/common_ui/member/auth_number_check.php',
            type: 'GET',
            data: 'auth_number=' + $('#auth_number').val() + '&hidden_auth_number=' + $('#hidden_auth_number').val(),
            success: function(data) {
                $('#authSend').html(data);
            }
        })
    }
}


// 이메일 인증번호 전송
function authNumberSend2() {
    var form = document.writeForm;
    if (form.email.value == "") {
        alert("이메일주소를 입력해주세요.");
        form.email.focus();
    } else if (form.email2.value == "") {
        alert("이메일주소를 입력해주세요.");
        form.email2.focus();
    } else {
        $.ajax({
            url: '/html/common_ui/member/send_auth_num2.php',
            type: 'GET',
            data: 'sendauth=1&auth_number=' + $('#hidden_auth_number').val() + '&auth_gubun=' + $('#hidden_auth_gubun').val() + '&email1=' + $('#email1').val() + '&email2=' + $('#email2').val(),
            success: function(data) {
                $('#authSend').html(data);
            }
        })
    }
}

// 이메일 인증
function authNumberCheck2() {
    var form = document.writeForm;
    if (form.auth_number2.value == "") {
        alert("인증번호를 입력해주세요.");
        form.auth_number2.focus();
    } else {
        $.ajax({
            url: '/html/common_ui/member/auth_number_check.php',
            type: 'GET',
            data: 'auth_number=' + $('#auth_number2').val() + '&hidden_auth_number=' + $('#hidden_auth_number').val(),
            success: function(data) {
                $('#authSend').html(data);
            }
        })
    }
}

//이메일 
function selectEmail(value) {
    var form = document.writeForm;
    if (value == "a") {
        form.email2.readOnly = false;
        form.email2.value = "";
        form.email2.focus();
    } else if (value == "b") {
        form.email2.readOnly = false;
        form.email2.value = "";
    } else {
        form.email2.readOnly = false;
        form.email2.value = value;
    }
}

//구매자 이메일 
function selectOrderEmail(value) {
    var form = document.order_info;
    if (value == "a") {
        form.order_email2.readOnly = false;
        form.order_email2.value = "";
        form.order_email2.focus();
    } else if (value == "b") {
        form.order_email2.readOnly = false;
        form.order_email2.value = "";
    } else {
        form.order_email2.readOnly = false;
        form.order_email2.value = value;
    }
}

//배송지 이메일 
function selectDelivEmail(value) {
    var form = document.order_info;
    if (value == "a") {
        form.deliv_email2.readOnly = false;
        form.deliv_email2.value = "";
        form.deliv_email2.focus();
    } else if (value == "b") {
        form.deliv_email2.readOnly = false;
        form.deliv_email2.value = "";
    } else {
        form.deliv_email2.readOnly = false;
        form.deliv_email2.value = value;
    }
}

//한글입력 안되게 처리
function hanChk() {
    var form = document.writeForm;
    check = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
    if (check.test(form.userid.value)) {
        alert("영문, 숫자, 특수문자만 입력 가능합니다.");
        form.userid.value = "";
    }

}

/*
$(document).ready(function(){
  $("input[name=userid]").keyup(function(event){ 
   if (!(event.keyCode >=37 && event.keyCode<=40)) {
	var inputVal = $(this).val();
    $(this).val(inputVal.replace(/[^a-z0-9]/gi,''));
   }
  });
});
*/


function certiSelect(n) {
    if (n == 1) {
        $(".number").removeClass("blind");
        $(".mail").addClass("blind");
    } else if (n == 2) {
        $(".number").addClass("blind");
        $(".mail").removeClass("blind");
    }
}



// 회원가입
function joinSendit() {
    var form = document.writeForm;
    var reg_uid = /([a-zA-Z0-9!,@,#,$,%,^,&,*,?,_,~)|(!,@,#,$,%,^,&,*,?,_,~a-zA-Z0-9]){4,10}$/;
    var reg_upw = /^(?=.*[a-z])(?=.*[0-9]).{4,16}$/;

    if (form.userid.value == "") {
        alert("아이디를 입력해 주세요.");
        form.userid.focus();
    } else if (!reg_uid.test(form.userid.value)) {
        alert("아이디는 영문,숫자,특수문자 4~10자 이내로 입력해 주세요.");
        form.userid.focus();
    } else if (form.id_check.value == "") {
        alert("아이디 중복확인을 해주세요");
        return;
    } else if (form.gubun.value != 'naver' && form.passwd.value == "") {
        alert("비밀번호를 입력해 주세요.");
        form.passwd.focus();
    } else if (form.gubun.value != 'naver' && !reg_upw.test(form.passwd.value)) {
        alert("비밀번호는 영소문자, 숫자 조합 4~16자 이내로 입력해 주세요.");
        form.passwd.focus();
    } else if (form.gubun.value != 'naver' && form.passwd_check.value == "") {
        alert("비밀번호확인을 입력해 주세요.");
        form.passwd_check.focus();
    } else if (form.gubun.value != 'naver' && form.passwd.value != form.passwd_check.value) {
        alert("비밀번호가 정확하지 않습니다. 정확히 입력해 주세요.");
        form.passwd_check.focus();
    } else if (form.name.value == "") {
        alert("이름을 입력해 주세요.");
        form.name.focus();
    } else if (form.gender[0].checked == false && form.gender[1].checked == false) {
        alert("성별을 선택해 주세요.");
        form.gender[0].focus();
    } else if (form.b_year.value == "") {
        alert("생년월일을 입력해 주세요.");
        form.b_year.focus();
    } else if (form.b_month.value == "") {
        alert("생년월일을 입력해 주세요.");
        form.b_month.focus();
    } else if (form.b_day.value == "") {
        alert("생년월일을 입력해 주세요.");
        form.b_day.focus();
    } else if (form.hp1.value == "") {
        alert("휴대폰번호를 입력해 주세요.");
        form.hp1.focus();
    } else if (form.hp2.value == "") {
        alert("휴대폰번호를 입력해 주세요.");
        form.hp2.focus();
    } else if (form.hp3.value == "") {
        alert("휴대폰번호를 입력해 주세요.");
        form.hp3.focus();
    } else if (form.email.value == "") {
        alert("이메일을 입력해 주세요.");
        form.email.focus();
        return;
    } else if (form.email2.value == "") {
        alert("이메일을 입력해 주세요.");
        form.email2.focus();
        return;
        /*
        } else if(form.certificationSelect[0].checked && form.auth_check.value=="") {
        	alert("휴대폰인증을 진행해주세요.");
        	form.auth_number.focus();
        	return;
        } else if(form.certificationSelect[1].checked && form.auth_check.value=="") {
        	alert("이메일인증을 진행해주세요.");
        	form.auth_number2.focus();
        	return;
        */
    } else if (form.agree1.checked == false) {
        alert("이용약관에 동의해주세요.");
        form.agree1.focus();
        return;
    } else if (form.agree2.checked == false) {
        alert("개인정보취급방침에 동의해주세요.");
        form.agree2.focus();
        return;
    } else if (form.agree3.checked == false) {
        alert("미성년자 이용계약의 특칙에 동의해주세요.");
        form.agree3.focus();
        return;
    } else {
        form.submit();
    }
}

// 회원가입
function joinSendit2(gubun) {
    var form = document.writeForm;

    if (gubun == 3) { // 반려견 추가 클릭시
        if (form.pet_name.value == "") {
            alert("반려견 이름을 입력해주세요.");
            form.pet_name.focus();
        } else {
            var choose = confirm('반려견을 추가하시겠습니까?');
            if (choose) {
                form.gubun.value = 3;
                form.submit();
            } else {
                return;
            }
        }
    } else if (gubun == 1) { // 다음에 하기 클릭시
        var choose = confirm('반려견 정보입력 없이 가입하시겠습니까?');
        if (choose) {
            form.gubun.value = 1;
            form.submit();
        } else {
            return;
        }

    } else if (gubun == 2) { // 가입하기 클릭시

        if (form.pet_name.value == "") {
            var choose = confirm('반려견 정보입력 없이 가입하시겠습니까?');
            if (choose) {
                form.gubun.value = 1;
                form.submit();
            } else {
                return;
            }
        } else {
            form.gubun.value = 2;
            form.submit();
        }

    }
}

$(document).ready(function() {
    function readPetimg(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
            reader.onload = function(e) {
                //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
                $('#petImg').attr('src', e.target.result);
                //이미지 Tag의 SRC속성에 읽어들인 File내용을 지정
                //(아래 코드에서 읽어들인 dataURL형식)
            }
            reader.readAsDataURL(input.files[0]);
            //File내용을 읽어 dataURL형식의 문자열로 저장
        }

    } //readPetimg()--

    function readProfileimg(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
            reader.onload = function(e) {
                //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
                $('#profileImg').attr('src', e.target.result);
                //이미지 Tag의 SRC속성에 읽어들인 File내용을 지정
                //(아래 코드에서 읽어들인 dataURL형식)
            }
            reader.readAsDataURL(input.files[0]);
            //File내용을 읽어 dataURL형식의 문자열로 저장
        }

    } //readProfileimg()--

    //file 양식으로 이미지를 선택(값이 변경) 되었을때 처리하는 코드
    $("#petImages").change(function() {
        readPetimg(this);
    });

    $("#profileImages").change(function() {
        readProfileimg(this);
    });
});


// 로그인
function loginSend() {
    var form = document.writeForm;
    var reg_uid = /([a-zA-Z0-9!,@,#,$,%,^,&,*,?,_,~)|(!,@,#,$,%,^,&,*,?,_,~a-zA-Z0-9]){4,10}$/;
    var reg_upw = /^(?=.*[a-z])(?=.*[0-9]).{4,20}$/;

    if (form.userid.value == "") {
        alert("아이디를 입력해주세요.");
        form.userid.focus();
    } else if (!login_uid.test(form.userid.value)) {
        alert("아이디는 영문,숫자, 특수문자 4~10자 이내로 입력해 주세요.");
        form.userid.value = "";
        form.userid.focus();
    } else if (form.passwd.value == "") {
        alert("비밀번호를 입력해주세요.");
        form.passwd.focus();
    } else if (form.passwd.value.length < 4 || form.passwd.value.length > 20) {
        alert("비밀번호는 4~20자로 입력해 주세요.");
        form.passwd.focus();
    } else {
        form.submit();
    }
}

function inputSendit() {
    if (event.keyCode == 13) {
        loginSend();
    }
}

// Header 로그인
function loginHeader() {
    var form = document.writeForm;
    if (form.userid.value == "") {
        alert("아이디를 입력해주세요.");
        form.userid.focus();
    } else if (form.userid.value.length < 4) {
        alert("아이디는 4자 이상 입력해주세요.");
        form.userid.focus();
    } else if (form.passwd.value == "") {
        alert("패스워드를 입력해주세요.");
        form.passwd.focus();
    } else if (form.passwd.value.length < 5 || form.passwd.value.length > 20) {
        alert("패스워드는 5~20자로 입력해 주세요.");
        form.passwd.focus();
    } else {
        form.submit();
    }
}

function inputHeader() {
    if (event.keyCode == 13) {
        loginHeader();
    }
}


// 아이디 저장
/*
$(document).ready(function(){
    // 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
    var userInputId = getCookie("userInputId");
    $("input[name='userid']").val(userInputId);  
    if($("input[name='userid']").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
        $("#idSaveCheck").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
    }

    $("#idSaveCheck").change(function(){ // 체크박스에 변화가 있다면,
        if($("#idSaveCheck").is(":checked")){ // ID 저장하기 체크했을 때,
            var userInputId = $("input[name='userid']").val();
            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
        }else{ // ID 저장하기 체크 해제 시,
            deleteCookie("userInputId");
        }
    });

    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
   $("input[name='userid']").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
        if($("#idSaveCheck").is(":checked")){ // ID 저장하기를 체크한 상태라면,
            var userInputId = $("input[name='userid']").val();
            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
        }
    });
});
*/


function setCookie(cookieName, value, exdays) {
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    var cookieValue = escape(value) + ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
    document.cookie = cookieName + "=" + cookieValue;
}

function deleteCookie(cookieName) {
    var expireDate = new Date();
    expireDate.setDate(expireDate.getDate() - 1);
    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}

function getCookie(cookieName) {
    cookieName = cookieName + '=';
    var cookieData = document.cookie;
    var start = cookieData.indexOf(cookieName);
    var cookieValue = '';
    if (start != -1) {
        start += cookieName.length;
        var end = cookieData.indexOf(';', start);
        if (end == -1) end = cookieData.length;
        cookieValue = cookieData.substring(start, end);
    }
    return unescape(cookieValue);
}


// 아이디 찾기
function id_search1() {
    var form = document.search_id_form;
    if (form.name.value == "") {
        alert("이름을 입력해 주세요.");
        form.name.focus();
    } else if (form.email.value == "") {
        alert("이메일을 입력해 주세요.");
        form.email.focus();
    } else if (form.email2.value == "") {
        alert("이메일을 입력해 주세요.");
        form.email2.focus();
    } else {
        $.ajax({
            url: './search_id.php',
            type: 'GET',
            //recomid:$('#recomid').val(),
            data: 'gubun=1&name=' + encodeURI($('#id_name').val()) + '&email=' + encodeURI($('#id_email1').val()) + '&email2=' + encodeURI($('#id_email2').val()),
            success: function(data) {
                $('#search_id').html(data);
            }
        })
    }
}

function id_search2() {
    var form = document.search_id_form2;
    if (form.name.value == "") {
        alert("이름을 입력해 주세요.");
        form.name.focus();
    } else if (form.hp1.value == "") {
        alert("전화번호를 입력해 주세요.");
        form.hp1.focus();
    } else if (form.hp2.value == "") {
        alert("전화번호를 입력해 주세요.");
        form.hp2.focus();
    } else if (form.hp3.value == "") {
        alert("전화번호를 입력해 주세요.");
        form.hp3.focus();
    } else {
        $.ajax({
            url: './search_id.php',
            type: 'GET',
            //recomid:$('#recomid').val(),
            data: 'gubun=2&name=' + encodeURI($('#id_name2').val()) + '&hp1=' + $('#id_hp1').val() + '&hp2=' + $('#id_hp2').val() + '&hp3=' + $('#id_hp3').val(),
            success: function(data) {
                $('#search_id2').html(data);
            }
        })
    }
}

// 비밀번호 찾기
function pw_search() {
    var form = document.search_pw_form;
    if (form.userid.value == "아이디를 입력하세요" || form.userid.value == "") {
        alert("아이디를 입력하세요.");
        form.userid.focus();
    } else if (form.name.value == "이름을 입력하세요" || form.name.value == "") {
        alert("이름을 입력하세요.");
        form.name.focus();
    } else if (form.hp1.value == "") {
        alert("전화번호를 입력해 주세요.");
        form.hp1.focus();
    } else if (form.hp2.value == "") {
        alert("전화번호를 입력해 주세요.");
        form.hp2.focus();
    } else if (form.hp3.value == "") {
        alert("전화번호를 입력해 주세요.");
        form.hp3.focus();
    } else if (form.email.value == "") {
        alert("이메일을 입력하세요.");
        form.email.focus();
    } else if (form.email2.value == "") {
        alert("이메일을 입력하세요.");
        form.email2.focus();
    } else {
        $.ajax({
            url: './search_pw.php',
            data: 'userid=' + $('#pw_userid').val() + '&name=' + encodeURI($('#pw_name').val()) + '&hp1=' + $('#pw_hp1').val() + '&hp2=' + $('#pw_hp2').val() + '&hp3=' + $('#pw_hp3').val() + '&email=' + $('#pw_email1').val() + '&email2=' + $('#pw_email2').val(),
            success: function(data) {
                $('#search_pw').html(data);
            }
        })
    }
}

//아이디찾기 이메일 
function selectEmail2(value) {
    var form = document.search_id_form;
    if (value == "a") {
        form.email2.readOnly = false;
        form.email2.value = "";
        form.email2.focus();
    } else if (value == "b") {
        form.email2.readOnly = false;
        form.email2.value = "";
    } else {
        form.email2.readOnly = false;
        form.email2.value = value;
    }
}

//비번찾기 이메일 
function selectEmail3(value) {
    var form = document.search_pw_form;
    if (value == "a") {
        form.email2.readOnly = false;
        form.email2.value = "";
        form.email2.focus();
    } else if (value == "b") {
        form.email2.readOnly = false;
        form.email2.value = "";
    } else {
        form.email2.readOnly = false;
        form.email2.value = value;
    }
}


// 회원 확인
function memberCheck() {
    var form = document.memberForm;
    if (form.name.value == "") {
        alert("이름을 입력해주세요.");
        form.name.focus();
    } else if (form.userid.value == "") {
        alert("아이디를 입력해주세요.");
        form.userid.focus();
    } else if (form.passwd.value == "") {
        alert("비밀번호를 입력해주세요.");
        form.passwd.focus();
    } else {
        form.submit();
    }
}

// 정보변경
function modifySendit() {
    var form = document.writeForm;
    var reg_upw = /^(?=.*[a-z])(?=.*[0-9]).{4,16}$/;

    if (form.passwd.value == "") {
        alert("비밀번호를 입력해 주세요.");
        form.passwd.focus();
    } else if (!reg_upw.test(form.passwd.value)) {
        alert("비밀번호는 영소문자, 숫자 조합 4~16자 이내로 입력해 주세요.");
        form.passwd.focus();
    } else if (form.passwd_check.value == "") {
        alert("비밀번호확인을 입력해 주세요.");
        form.passwd_check.focus();
    } else if (form.passwd.value != form.passwd_check.value) {
        alert("비밀번호가 정확하지 않습니다. 정확히 입력해 주세요.");
        form.passwd_check.focus();
        /*
        } else if(form.gender[0].checked==false && form.gender[1].checked==false) {
        	alert("성별을 선택해 주세요.");
        	form.gender[0].focus();
        } else if(form.b_year.value=="") {
        	alert("생년월일을 입력해 주세요.");
        	form.b_year.focus();
        } else if(form.b_month.value=="") {
        	alert("생년월일을 입력해 주세요.");
        	form.b_month.focus();
        } else if(form.b_day.value=="") {
        	alert("생년월일을 입력해 주세요.");
        	form.b_day.focus();
        */
    } else if (form.hp1.value == "") {
        alert("휴대폰번호를 입력해 주세요.");
        form.hp1.focus();
    } else if (form.hp2.value == "") {
        alert("휴대폰번호를 입력해 주세요.");
        form.hp2.focus();
    } else if (form.hp3.value == "") {
        alert("휴대폰번호를 입력해 주세요.");
        form.hp3.focus();
    } else if (form.email.value == "") {
        alert("이메일을 입력해 주세요.");
        form.email.focus();
    } else if (form.email2.value == "") {
        alert("이메일을 입력해 주세요.");
        form.email2.focus();
        /*
        } else if(form.certificationSelect[0].checked && form.auth_check.value=="") {
        	alert("휴대폰인증을 진행해주세요.");
        	form.auth_number.focus();
        	return;
	
        } else if(form.certificationSelect[1].checked && form.auth_check.value=="") {
        	alert("이메일인증을 진행해주세요.");
        	form.auth_number2.focus();
        	return;
        */
    } else {
        form.submit();
    }
}

// 회원탈퇴
function withdrawSendit() {
    var form = document.writeForm;

    if (form.reason[0].checked == false && form.reason[1].checked == false && form.reason[2].checked == false && form.reason[3].checked == false && form.reason[4].checked == false && form.reason[5].checked == false && form.reason[6].checked == false && form.reason[7].checked == false) {
        alert("탈퇴사유를 선택해주세요.");
        form.reason[0].focus();
    } else if (form.reason[7].checked && form.reason_etc.value == "") {
        alert("기타 탈퇴사유를 입력해주세요.");
        form.form.reason_etc.focus();
    } else {
        form.submit();
    }
}

// 비밀번호 관리
function passwordSendit() {
    var form = document.memberForm;
    var reg_upw = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{5,20}$/;

    if (form.now_passwd.value == "") {
        alert("현재 비밀번호를 입력해주세요.");
        form.now_passwd.focus();
    } else if (form.passwd.value == "") {
        alert("변경 비밀번호를 입력해주세요.");
        form.passwd.focus();
    } else if (!reg_upw.test(form.passwd.value)) {
        alert("비밀번호는 영문, 숫자, 특수문자조합 5~20자 이내로 입력해 주세요.");
        form.passwd.focus();
    } else if (form.passwd_check.value == "") {
        alert("비밀번호 확인을 입력해주세요.");
        form.passwd_check.focus();
    } else if (form.passwd.value != form.passwd_check.value) {
        alert("비밀번호가 일치하지 않습니다. 정확하게 입력해주세요.");
        form.passwd_check.focus();
    } else {
        form.submit();
    }
}

// 반려견 정보변경
function dogInfo_modifySendit() {
    var form = document.writeForm;
    if (form.pet_name.value == "") {
        alert("반려견이름을 입력해 주세요.");
        form.pet_name.focus();
    } else {
        form.submit();
    }
}

// 반려견 추가하기
function dogAddSendit() {
    var form = document.writeForm;
    if (form.pet_name.value == "") {
        alert("반려견 이름을 입력해주세요.");
        form.pet_name.focus();
    } else if (form.b_year.value == "") {
        alert("반려견 생일을 입력해주세요.");
        form.b_year.focus();
    } else if (form.b_month.value == "") {
        alert("반려견 생일을 입력해주세요.");
        form.b_month.focus();
    } else if (form.b_day.value == "") {
        alert("반려견 생일을 입력해주세요.");
        form.b_day.focus();
    } else {
        form.submit();
    }
}

// 반려견 삭제하기
function dogDel(idx) {
    var choose = confirm('반려견 정보를 삭제하시겠습니까?');
    if (choose) {
        location.href = 'dog_del_ok.php?idx=' + idx;
    } else {
        return;
    }
}


// 동영상 미리보기
function sampleView(lecture_idx) {
    window.open("/player/samplePlayer.php?lecture_idx=" + lecture_idx, "preview", "width=1060,height=650");
}

// 동영상 강좌보기
function lectureView(lecture_idx, idx) {
    window.open("/player/lecturePlayer.php?lecture_idx=" + lecture_idx + "&idx=" + idx, "lecture", "width=1060,height=650");
}

// 동영상 강좌보기 모바일
function lectureViewMobile(trade_goods_idx, package_idx, lecture_idx, idx, method) {
    window.open("/player/lecturePlayerMobile.php?trade_goods_idx=" + trade_goods_idx + "&package_idx=" + package_idx + "&lecture_idx=" + lecture_idx + "&idx=" + idx + "&method=" + method, "lecture", "width=1060,height=650");
}

// 미결제시 안내
function usePayment() {
    alert("결제 후 이용하실 수 있습니다.");
}

// 비회원 안내
function noMember() {
    alert("회원 로그인 후 이용하실 수 있습니다.");
}

// 관심강좌
function bookmarkLecture(userid, id, idx) {
    $.ajax({
        url: '/html/lecture/bookmark_lecture.php',
        type: 'GET',
        data: 'userid=' + userid + '&id=' + id + '&lecture_idx=' + idx,
        success: function(data) {
            $('#favorite_' + id).html(data);
        }
    });
}

// 관심교재
function bookmarkTextbook(userid, id, idx) {
    $.ajax({
        url: './bookmark_textbook.php',
        type: 'GET',
        data: 'userid=' + userid + '&id=' + id + '&textbook_idx=' + idx,
        success: function(data) {
            $('#favorite_' + id).html(data);
        }
    });
}

// 관심패키지
function bookmarkPackage(userid, id, idx) {
    $.ajax({
        url: '/html/lecture/bookmark_package.php',
        type: 'GET',
        data: 'userid=' + userid + '&id=' + id + '&package_idx=' + idx,
        success: function(data) {
            $('#favorite_' + id).html(data);
        }
    });
}

// 공감하기
function addLike(userid, idx) {
    $.ajax({
        url: '/html/plus/add_like.php',
        type: 'GET',
        data: 'userid=' + userid + '&bbs_idx=' + idx,
        success: function(data) {
            $('#likeBtn').html(data);
        }
    });
}


/*
$(document).ready(function(){
    //최상단 체크박스 클릭
    $("#checkall").click(function(){
        //클릭되었으면
        if($("#checkall").prop("checked")){
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
            $("input[name=chk]").prop("checked",true);
            //클릭이 안되있으면
        }else{
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
            $("input[name=chk]").prop("checked",false);
        }
    })
})
*/

function allCheck() {

    //클릭되었으면
    if ($(".checkall").prop("checked")) {
        $("input[name=cart_list]").prop("checked", true);
        //클릭이 안되있으면
    } else {
        $("input[name=cart_list]").prop("checked", false);
    }

    cartCalculate(); //장바구니 계산

    /*
	var f = document.forms['listform'];
	if(typeof(f.cart_list) == 'object') {
		if(f.allchk.checked) {
			alert();
			if(f.cart_list.length) for (var i=0;i<f.cart_list.length;i++) f.cart_list[i].checked=true;
			else f.cart_list.checked=true
		} else {
			if(f.cart_list.length) for (var i=0;i<f.cart_list.length;i++) f.cart_list[i].checked=false;
			else f.cart_list.checked=false;
		}

		cartCalculate(); //장바구니 계산

	} else {
		if(f.allchk.checked) {
			alert('선택할 상품이 없습니다.');f.allchk.checked = false;return;
		} else return;
	}
*/

}

// 장바구니 선택 계산
function cartCalculate() {
    var f = document.forms['listform'];
    var goods_price = 0;
    var goods_price2 = 0;
    var goods_cnt = 0;
    var goods_price_total = 0;
    var goods_price_total2 = "";
    var express_free = f.express_free.value;
    var deliv_price = f.deliv_price.value;
    var deliv_price1 = f.deliv_price1.value;
    var deliv_goods_price = 0;
    var deliv_goods_price_total = 0;
    var deliv_price2 = "";
    var total_price = 0;
    var total_price2 = "";
    var goods_deliv_price = 0;
    var goods_deliv_price_total = 0;

    var count = 0;

    if (f.cart_list.length) { // 장바구니 상품이 2개 이상일때
        for (var i = 0; i < f.cart_list.length; i++) {
            if (f.cart_list[i].checked == true) {
                count++;
                goods_price = f.cart_list_price[i].value;
                goods_cnt = f.goods_cnt[i].value;
                goods_price2 = goods_price * goods_cnt;
                goods_price_total += Number(goods_price2);
                goods_deliv_price = f.goods_deliv_price[i].value;
                goods_deliv_price_total += Number(goods_deliv_price);

                if (f.cart_goods_gubun[i].value == "goods" && f.goods_deliv_price_check[i].value != "1") { // 배송상품 합계
                    deliv_goods_price = goods_price2;
                    deliv_goods_price_total += Number(deliv_goods_price);

                }
            }
        }
    } else { // 장바구니 상품이 1개일때
        if (f.cart_list.checked == true) {
            count = 1;
            goods_price = f.cart_list_price.value;
            goods_cnt = f.goods_cnt.value;
            goods_price2 = goods_price * goods_cnt;
            goods_price_total += Number(goods_price2);
            goods_deliv_price = f.goods_deliv_price.value;
            goods_deliv_price_total += Number(goods_deliv_price);

            if (f.cart_goods_gubun.value == "goods" && f.goods_deliv_price_check[i].value != "1") { // 배송상품 합계
                deliv_goods_price = goods_price2;
                deliv_goods_price_total += Number(deliv_goods_price);
            }
        }

    }

    // 총 상품금액
    goods_price_total2 = comma(goods_price_total) + "원";
    $("#goods_price").html(goods_price_total2);

    if (count == '1' && goods_deliv_price_total) {
        deliv_price = goods_deliv_price_total;
    } else {
        if (deliv_goods_price_total >= express_free || deliv_goods_price_total == 0) {
            deliv_price = goods_deliv_price_total;
        } else if (deliv_goods_price_total < express_free) {
            deliv_price = parseInt(deliv_price1) + parseInt(goods_deliv_price_total);
        }
    }

    //alert(goods_price_total);
    //alert(express_free);
    //alert(deliv_price);

    // 배송비 
    deliv_price2 = comma(deliv_price) + "원";
    $("#deliv_price").html(deliv_price2);

    // 총 결제금액
    total_price = Number(goods_price_total) + Number(deliv_price);
    total_price = "<strong>" + comma(total_price) + "</strong>원";
    $("#total_price").html(total_price);

}

function actSelect() {
    var f = document.forms['listform'];
    var arr_cart_list = new Array();
    var i, j;
    if (typeof(f.cart_list) == 'object') {
        if (f.cart_list.length) {
            for (i = 0, j = 0; i < f.cart_list.length; i++) {
                if (f.cart_list[i].checked) {
                    arr_cart_list[i] = f.cart_list[i].value;
                    j++;
                }
            }
            if (!j) {
                alert('상품을 선택하여 주세요.');
                return;
            } else f.arr_cart_list.value = arr_cart_list.join('@');
        } else {
            if (!f.cart_list.checked) {
                alert('상품을 선택하여 주세요.');
                return;
            }
        }
        if (j == 1) f.arr_cart_list.value = '';
        if (confirm('선택한 상품을 삭제하시겠습니까?')) f.submit();
    } else {
        alert('선택할 상품이 없습니다.');
        return;
    }
}

function actSelect2() {
    var fm = document.forms['listform'];
    var arr_cart_list = new Array();
    fm.action = 'order_insert.php';
    var i, j;
    if (typeof(fm.cart_list) == 'object') {
        if (fm.cart_list.length) {
            for (i = 0, j = 0; i < fm.cart_list.length; i++) {
                if (fm.cart_list[i].checked) {
                    arr_cart_list[i] = fm.cart_list[i].value;
                    j++;
                }
            }
            if (!j) {
                alert('상품을 선택하여 주세요.');
                return;
            } else fm.arr_cart_list.value = arr_cart_list.join('@');
        } else {
            if (!fm.cart_list.checked) {
                alert('상품을 선택하여 주세요.');
                return;
            }
        }
        if (j == 1) fm.arr_cart_list.value = '';
        if (confirm('선택한 상품을 주문하시겠습니까?')) fm.submit();
    } else {
        alert('선택할 상품이 없습니다.');
        return;
    }
}


function actSelect3() {
    var f = document.forms['listform'];
    var arr_del_list = new Array();
    var i, j;
    if (typeof(f.del_list) == 'object') {
        if (f.del_list.length) {
            for (i = 0, j = 0; i < f.del_list.length; i++) {
                if (f.del_list[i].checked) {
                    arr_del_list[i] = f.del_list[i].value;
                    j++;
                }
            }
            if (!j) {
                alert('상품을 선택해주세요.');
                return;
            } else f.arr_del_list.value = arr_del_list.join('@');
        } else {
            if (!f.del_list.checked) {
                alert('상품을 선택해주세요.');
                return;
            }
        }
        if (j == 1) f.arr_del_list.value = '';
        if (confirm('선택한 상품을 장바구니에 저장하시겠습니까?')) f.submit();
    } else {
        alert('선택할 상품이 없습니다.');
        return;
    }
}

// 패키지상품 선택 교재 가격 계산
function caltextBook() {
    var f = document.forms['listform'];
    var arr_del_list = new Array();
    var i, j;
    var package_price = f.package_price.value;
    var price;
    var price1;
    var price2;
    var price3 = 0;
    var price4;
    var total_price = 0;

    if (typeof(f.del_list) == 'object') {
        if (f.del_list.length) {
            for (i = 0; i < f.del_list.length; i++) {
                if (f.del_list[i].checked) {
                    price = f.del_list[i].value;
                    price1 = price.split("&");
                    price2 = Number(price1[1]);
                    price3 += price2;
                }
            }
            price4 = comma(price3) + "원";
            total_price = price3 + Number(package_price);
            total_price = comma(total_price) + "원";
            $("#priceTB").html(price4);
            $("#priceTotal").html(total_price);
            //alert(total_price);
        }
    }
}

//콤마찍기
function comma(str) {
    str = String(str);
    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}

// 패키지 결제하기
function orderPackage() {
    var f = document.forms['listform'];
    var arr_del_list = new Array();
    var i, j;
    if (typeof(f.del_list) == 'object') {
        if (f.del_list.length) {
            for (i = 0, j = 0; i < f.del_list.length; i++) {
                if (f.del_list[i].checked) {
                    arr_del_list[i] = f.del_list[i].value;
                    j++;
                }
            }
            if (!j) {} else f.arr_del_list.value = arr_del_list.join('@');
        }
        if (j == 1) f.arr_del_list.value = '';
    }
    f.action = '/html/mypage/mypage02_order_insert.php';
    if (confirm('패키지 상품을 결제하시겠습니까?')) f.submit();
}

// 패키지 장바구니 담기
function cartPackage() {
    var f = document.forms['listform'];

    var arr_del_list = new Array();
    var i, j;
    if (typeof(f.del_list) == 'object') {
        if (f.del_list.length) {
            for (i = 0, j = 0; i < f.del_list.length; i++) {
                if (f.del_list[i].checked) {
                    arr_del_list[i] = f.del_list[i].value;
                    j++;
                }
            }
            if (!j) {} else f.arr_del_list.value = arr_del_list.join('@');
        }
        if (j == 1) f.arr_del_list.value = '';
    }

    if (confirm('패키지 상품을 장바구니에 담으시겠습니까?')) f.submit();
}

// 교재 주문하기
function orderTextbook(idx) {
    location.href = "/html/mypage/mypage02_order_insert.php?trade_method=5&idx=" + idx;
}

// 교재 장바구니 담기
function cartTextbook(idx) {
    location.href = "/html/mypage/addcart.php?gubun=textbook&idx=" + idx;
}

// 주문정보입력
function orderSendit() {
    var form = document.writeForm;
    if (form.name.value == "") {
        alert("이름을 입력해주세요.");
        form.name.focus();
    } else if (form.tel1.value == "") {
        alert("연락처를 입력해주세요.");
        form.tel1.focus();
    } else if (form.tel2.value == "") {
        alert("연락처를 입력해주세요.");
        form.tel2.focus();
    } else if (form.tel3.value == "") {
        alert("연락처를 입력해주세요.");
        form.tel3.focus();
    } else if (form.email.value == "") {
        alert("이메일을 입력해주세요.");
        form.email.focus();
    } else if (form.email2.value == "") {
        alert("이메일을 입력해주세요.");
        form.email2.focus();
    } else if (form.postcode.value == "") {
        alert("이메일을 입력해주세요.");
        form.postcode.focus();
    } else if (form.addr1.value == "") {
        alert("주소를 입력해주세요.");
        form.addr1.focus();
    } else if (form.addr2.value == "") {
        alert("상세주소를 입력해주세요.");
        form.addr2.focus();
    } else {
        form.submit();
    }
}

// 토글전역변수
function toggleCheck(n) {
    var form = document.order_info;

    if (n == 1) {
        form.deliv_name.value = form.buyr_name.value;
        form.deliv_phone1.value = form.order_phone1.value;
        form.deliv_phone2.value = form.order_phone2.value;
        form.deliv_phone3.value = form.order_phone3.value;
        form.deliv_email.value = form.order_email.value;
        form.deliv_email2.value = form.order_email2.value;
        form.postcode.value = form.hidden_postcode.value;
        form.addr1.value = form.hidden_addr1.value;
        form.addr2.value = form.hidden_addr2.value;
    } else {
        form.deliv_name.value = "";
        form.deliv_phone1.value = "";
        form.deliv_phone2.value = "";
        form.deliv_phone3.value = "";
        form.deliv_email.value = "";
        form.deliv_email2.value = "";
        form.postcode.value = "";
        form.addr1.value = "";
        form.addr2.value = "";
    }

}

// 배송료 재계산하기
function delivAccount() {
    var postcode = $("#postcode").val();
    $.ajax({
        url: 'delivAccount.php',
        type: 'get',
        data: 'postcode=' + postcode,
        success: function(data) {
            $('#delivAccountWrap').html(data);
        }
    });
}

// 배송비 계산
function accountDelivPrice() {
    var form = document.order_info;
    var trade_deliv_base_price = form.trade_deliv_base_price.value;
    var trade_deliv_add_price = form.trade_deliv_add_price.value;
    var goods_deliv_price = form.goods_deliv_price.value;
    var deliv_cnt_total = form.deliv_cnt_total.value;

    if (trade_deliv_base_price == "") trade_deliv_base_price = 0;
    if (trade_deliv_add_price == "") trade_deliv_add_price = 0;
    var trade_deliv_price1 = parseInt(trade_deliv_base_price) + parseInt(goods_deliv_price);
    var trade_deliv_price2 = parseInt(trade_deliv_add_price * deliv_cnt_total);
    var trade_deliv_price = parseInt(trade_deliv_base_price) + parseInt(trade_deliv_add_price * deliv_cnt_total) + parseInt(goods_deliv_price);

    $("#hidden_trade_deliv_price").val(trade_deliv_price);
    $("#trade_deliv_add_price_total").val(trade_deliv_price2);
    $("#deliv_price").html(commaSplit(trade_deliv_price1));
    $("#deliv_price2").html(commaSplit(trade_deliv_price2));
    $("#trade_deliv_add_price_total").html(commaSplit(trade_deliv_price2));
}

// 무료배송 쿠폰 클릭시
function delivery_coupon(id) {
    var form = document.order_info;
    var check_cnt = $("input:checkbox[class=free]:checked").length;
    if (document.getElementById(id).checked == true || check_cnt) {
        form.trade_deliv_price.value = 0;
        form.free_deliv_coupon.value = id;
        $("#deliv_price").html(0);
        $("#deliv_price2").html(0);
        $("#deliv_coupon_use").val(1); //쿠폰 사용 여부 체크를 사용으로 변경
    } else {
        var trade_deliv_base_price_total = form.trade_deliv_base_price_total.value;
        var trade_deliv_add_price_total = form.trade_deliv_add_price_total.value;
        var trade_deliv_price = parseInt(trade_deliv_base_price_total) + parseInt(trade_deliv_add_price_total);

        form.trade_deliv_price.value = trade_deliv_price;
        form.free_deliv_coupon.value = "";
        $("#deliv_price").html(addCommas(form.trade_deliv_base_price_total.value));
        $("#deliv_price2").html(addCommas(form.trade_deliv_add_price_total.value));
        $("#deliv_coupon_use").val(""); //쿠폰 사용 여부 체크를 미사용으로 변경
    }
    discount(); //할인금액 계산

}


function discount() { // 할인금액 계산
    var form = document.order_info;
    var coupon_price = form.trade_use_coupon.value;
    var point_price;
    if (form.trade_use_point.value == "") {
        var point_price = 0;
    } else {
        var point_price = form.trade_use_point.value;
    }
    var trade_dc_price = form.trade_dc_price.value;
    var trade_goods_price = form.trade_goods_total_price.value;
    var deliv_price = form.trade_deliv_price.value;
    var total_price_temp = form.total_price_temp.value;

    var dc_price = parseInt(coupon_price) + parseInt(point_price);

    if (dc_price >= trade_goods_price) {
        dc_price = trade_goods_price;
    }

    var total_price = parseInt(trade_goods_price) + parseInt(deliv_price) - dc_price;

    dc_price = String(dc_price);
    total_price = String(total_price);

    if (dc_price < parseInt(trade_goods_price)) {
        form.trade_save_point.value = form.trade_save_point_temp.value;
    } else {
        form.trade_save_point.value = 0;
    }

    form.trade_dc_price.value = dc_price;
    form.good_mny.value = total_price;

    $("#dc_price").html(number_format(dc_price));
    $("#total_price").html(number_format(total_price));
    $("#total_price2").html(number_format(total_price));
}

// 숫자에서 3자리마다 콤마 넣기
function commaSplit(srcNumber) {
    var txtNumber = '' + srcNumber;
    if (isNaN(txtNumber) || txtNumber == "") {
        //alert("숫자만 입력 하세요");
        //fieldName.select();
        //fieldName.focus();
    } else {
        var rxSplit = new RegExp('([0-9])([0-9][0-9][0-9][,.])');
        var arrNumber = txtNumber.split('.');
        arrNumber[0] += '.';

        do {
            arrNumber[0] = arrNumber[0].replace(rxSplit, '$1,$2');
        } while (rxSplit.test(arrNumber[0]));

        if (arrNumber.length > 1) {
            return arrNumber.join('');
        } else {
            return arrNumber[0].split('.')[0];
        }
    }
}

// 무통장 결제하기
function paySendit() {
    var form = document.tradeForm;
    form.submit();
}


// 교재검색
function searchTextbook() {
    var form = document.searchForm;
    form.submit();
}

//부메랑 게시판 질문유형 선택
function selectType(n) {
    if (n == 1) {
        $(".type01").addClass("on");
        $(".type02").removeClass("on");
        $("#type01").removeClass("blind");
        $("#type02").addClass("blind");
    } else if (n == 2) {
        $(".type01").removeClass("on");
        $(".type02").addClass("on");
        $("#type01").addClass("blind");
        $("#type02").removeClass("blind");
    }
}

// 부메랑게시판 강좌 선택
function selectLecture(goods_name) {
    $.ajax({
        url: '/html/plus/select_lecture.php',
        type: 'GET',
        data: 'goods_name=' + encodeURI(goods_name),
        success: function(data) {
            $('#lecture_num').html(data);
        }
    });
}

// 편비서 신청
function writeSecretary() {
    var form = document.form1;
    if (form.kakaoid.value == "") {
        alert("카카오톨 아이디를 입력해주세요.");
        form.kakaoid.focus();
    } else if (form.stime.value == "") {
        alert("시간대를 선택해주세요.");
        form.stime.focus();
    } else {
        form.submit();
    }
}

// 교육신청
function movieBuySendit(check) {
    var form = document.goodsForm;

    if (check == 1) { // 장바구니추가
        form.action = "/html/common_ui/order/addcart.php";
        form.submit();
    } else if (check == 2) { // 즉시 구매
        form.action = "order_once_ok.php?trade_method=2&goods_data=<?=$goods_data;?>";
        form.submit();
    } else if (check == 3) { // withlist 추가
        form.action = "interest_product.php?wishlist_method=1&goods_data=<?=$goods_data;?>";
        form.submit();
    }

}


/* SHOOPPING */

// 상품검색
function searchProduct(n) {
    if (n == 1) {
        var form = document.prdSearchform1;
    } else if (n == 2) {
        var form = document.prdSearchform2;
    }
    if (form.search_order.value == "") {
        alert("검색할 상품명을 입력해주세요.");
        form.search_order.focus();
    } else {
        form.submit();
    }
}

// 검색 시 날짜 선택
function selectSearchday(n) {
    var now = new Date();
    var year = now.getFullYear();
    var mon = (now.getMonth() + 1) > 9 ? '' + (now.getMonth() + 1) : '0' + (now.getMonth() + 1);
    var day = now.getDate() > 9 ? '' + now.getDate() : '0' + now.getDate();
    var today = year + '-' + mon + '-' + day;

    var myDate = new Date(today);

    if (n == 1) {
        myDate.setDate(myDate.getDate());
    } else if (n == 2) {
        myDate.setDate(myDate.getDate() - 7);
    } else if (n == 3) {
        myDate.setDate(myDate.getDate() - 30);
    } else if (n == 4) {
        myDate.setDate(myDate.getDate() - 90);
    } else if (n == 5) {
        myDate.setDate(myDate.getDate() - 180);
    }

    var year1 = myDate.getFullYear();
    var mon1 = (myDate.getMonth() + 1) > 9 ? '' + (myDate.getMonth() + 1) : '0' + (myDate.getMonth() + 1);;
    var day1 = myDate.getDate() > 9 ? '' + myDate.getDate() : '0' + myDate.getDate();
    var sday = year1 + '-' + mon1 + '-' + day1;
    $("#minDatePick").val(sday);

    $('a').removeClass("on");
}


// 게시판
//코멘트 등록
function comentSendit() {
    var form = document.bbs_coment_form;
    if (form.userid.value == "") {
        alert("아이디를 입력해 주십시오.");
        form.userid.focus();
        /*
        } else if(form.pwd.value=="") {
        	alert("패스워드를 입력해 주십시오.");
        	form.pwd.focus();
        */
    } else if (form.coment.value == "") {
        alert("댓글을 입력해주세요.");
        form.coment.focus();
    } else {
        form.submit();
    }
}

// SNS 연동
function twitter_click(u, t) {
    window.open('http://www.twitter.com/intent/tweet?original_referer=' + encodeURIComponent(u) + '&url=' + encodeURIComponent(u) + '&text=' + encodeURIComponent(t), 'sharer', 'toolbar=0,status=0,width=626,height=436');
    return false;
}

function facebook_click(u, t) {
    window.open('http://www.facebook.com/sharer/sharer.php?&u=' + encodeURIComponent(u) + '&t=' + encodeURIComponent(t), 'sharer', 'toolbar=0,status=0,width=626,height=436');
    return false;
}

function naver_click(u, t) {
    window.open('http://blog.naver.com/openapi/share?&url=' + encodeURIComponent(u) + '&title=' + encodeURIComponent(t), 'sharer', 'toolbar=0,status=0,width=626,height=436');
    return false;
}

function returnNull() {
    //	
}

function bannerTop() {
    $(".gnb-bnr.pc-tabletVer").animate({
        top: "-=98",
        height: "toggle"
    }, 300, function() {
        // Animation complete.
    });
}

function closeBanner() {
    $("#close").prop("checked", true);
    if (document.banner_form.today_close.checked) {
        setCookie('bannerTopEdu', 'NO', 1); //쿠기 저장 기간은 1일로 한다.
    }
    bannerTop();
}

function closeBanner2() {
    $("#close").prop("checked", true);
    if (document.banner_form.today_close.checked) {
        setCookie('bannerTopShop', 'NO', 1); //쿠기 저장 기간은 1일로 한다.
    }
    bannerTop();
}

// 그룹레슨 신청
function requestGroupSendit() {
    var form = document.writeForm;
    //box_sum(form.pet_name_arr, form.pet_name);
    if (form.pet_name.value == "") {
        alert("참가하는 반려견을 선택해주세요.");
        form.pet_name.focus();
    } else if (form.antibody_test[0].checked == false && form.antibody_test[1].checked == false) {
        alert("면역 항생체 검사여부를 선택해주세요..");
        form.form.antibody_test[0].focus();
    } else if (form.agree1.checked == false) {
        alert("규정 및 사진·영상 촬영 및 배포 판권 소유에 관한 동의서에 동의해주세요.");
        form.agree1.focus();
    } else if (form.agree2.checked == false) {
        alert("[그룹레슨 안내] 에 동의해주세요.");
        form.agree2.focus();
    } else {
        form.submit();
    }
}

// 그룹레슨 신청(테스트)
function requestGroupSenditTest() {
    var form = document.writeForm;
    if (form.multi_pet.value && form.pet_cnt.value > 1) {
        box_sum(form.pet_name_arr, form.pet_name);
    }

    if (form.pet_name.value == "") {
        alert("참가하는 반려견을 선택해주세요.");
        form.pet_name.focus();
    } else if (form.antibody_test[0].checked == false && form.antibody_test[1].checked == false) {
        alert("면역 항생체 검사여부를 선택해주세요.");
        form.form.antibody_test[0].focus();
    } else if (form.agree1.checked == false) {
        alert("규정 및 사진·영상 촬영 및 배포 판권 소유에 관한 동의서에 동의해주세요.");
        form.agree1.focus();
    } else if (form.agree2.checked == false) {
        alert("[그룹레슨 안내] 에 동의해주세요.");
        form.agree2.focus();
    } else {
        form.submit();
    }
}

// 그룹레슨 신청(테스트) : 210104  // bkmin
function requestGroupSenditTest_210104() {
    var form = document.writeForm;
    if (form.multi_pet.value && form.pet_cnt.value > 1) {
        box_sum(form.pet_name_arr, form.pet_name);
    }

    var agree_false_el = null;
    $(".agree2_box input[type=checkbox]").each(function() {
        if (!$(this).is(":checked")) {
            agree_false_el = $(this);
            return false;
        }
    });

    if (form.pet_name.value == "") {
        alert("참가하는 반려견을 선택해주세요.");
        form.pet_name.focus();
    } else if (form.antibody_test[0].checked == false && form.antibody_test[1].checked == false) {
        alert("면역 항생체 검사여부를 선택해주세요.");
        form.form.antibody_test[0].focus();
    }
    /*else if(form.antibody_test[1].checked==true){
		// alert("홍역,파보,간염의 항체가가 음성일 경우 수업신청이 불가합니다. 수의사 지시에 따라 예방접종 및 항체가 검사진행바랍니다.");
		alert("전염성 바이러스에 방어할 수 없는 반려견은 치명적인 바이러스에 노출될 수 있어 수의사 지시에 따라  홍역, 파보, 간염 예방접종 및 항체가 검사진행바랍니다.");
		form.form.antibody_test[1].focus();
	} */
    else if (form.rabies_vaccination[0].checked == false && form.rabies_vaccination[1].checked == false) {
        alert("광견병 접종여부를 선택해주세요.");
        form.form.rabies_vaccination[0].focus();
    }
    /*else if(form.rabies_vaccination[1].checked==true){
		// alert("광견병 예방 접종후 수업신청 바랍니다.");
		alert("수의사 지시에 따라 광견병 예방 접종을 꼭 진행하기시기 바랍니다.");
		form.form.rabies_vaccination[0].focus();
	} */
    else if (form.agree1.checked == false) {
        alert("규정 및 사진·영상 촬영 및 배포 판권 소유에 관한 동의서에 동의해주세요.");
        form.agree1.focus();
    } else if (agree_false_el) {
        alert("[그룹레슨 규정안내] 에 동의 및 확인해주세요.");
        $(agree_false_el).focus();
    } else {
        form.submit();
    }
}

// 개인레슨 신청
function requestPersonalSendit() {
    var form = document.writeForm;
    if (form.pet_name.value == "") {
        alert("참가하는 반려견을 선택해주세요.");
        form.pet_name.focus();
    } else if (form.antibody_test[0].checked == false && form.antibody_test[1].checked == false) {
        alert("면역 항생체 검사여부를 선택해주세요..");
        form.form.antibody_test[0].focus();
    } else if (form.agree1.checked == false) {
        alert("규정 및 사진·영상 촬영 및 배포 판권 소유에 관한 동의서에 동의해주세요.");
        form.agree1.focus();
    } else {
        form.submit();
    }
}

// 개인레슨 신청(테스트)
function requestPersonalSenditTest() {
    var form = document.writeForm;
    if (form.multi_pet.value && form.pet_cnt.value > 1) {
        box_sum(form.pet_name_arr, form.pet_name);
    }
    if (form.pet_name.value == "") {
        alert("참가하는 반려견을 선택해주세요.");
        form.pet_name.focus();
    } else if (form.antibody_test[0].checked == false && form.antibody_test[1].checked == false) {
        alert("면역 항생체 검사여부를 선택해주세요..");
        form.form.antibody_test[0].focus();
    } else if (form.agree1.checked == false) {
        alert("규정 및 사진·영상 촬영 및 배포 판권 소유에 관한 동의서에 동의해주세요.");
        form.agree1.focus();
    } else {
        form.submit();
    }
}

// 개인레슨 신청(테스트)
function requestPersonalSendit_210104() {
    var form = document.writeForm;
    if (form.multi_pet.value && form.pet_cnt.value > 1) {
        box_sum(form.pet_name_arr, form.pet_name);
    }

    var agree_false_el = null;
    $(".personalAgreeBox div.box input[type=checkbox]").each(function() {
        if (!$(this).is(":checked")) {
            agree_false_el = $(this);
            return false;
        }
    });

    if (form.pet_name.value == "") {
        alert("참가하는 반려견을 선택해주세요.");
        form.pet_name.focus();
    } else if (form.antibody_test[0].checked == false && form.antibody_test[1].checked == false) {
        alert("면역 항생체 검사여부를 선택해주세요.");
        form.form.antibody_test[0].focus();
    }
    /*else if(form.antibody_test[1].checked==true){
		alert("홍역,파보,간염의 항체가가 음성일 경우 수업신청이 불가합니다. 수의사 지시에 따라 예방접종 및 항체가 검사진행바랍니다.");
		form.form.antibody_test[0].focus();
	} */
    else if (form.rabies_vaccination[0].checked == false && form.rabies_vaccination[1].checked == false) {
        alert("광견병 접종여부를 선택해주세요.");
        form.form.rabies_vaccination[0].focus();
    }
    /*else if(form.rabies_vaccination[1].checked==true){
		alert("광견병 예방 접종후 수업신청 바랍니다.");
		form.form.rabies_vaccination[0].focus();
	} */
    else if (agree_false_el) {
        alert("[개인레슨 규정안내] 에 동의 및 확인해주세요.");
        $(agree_false_el).focus();
    } else {
        form.submit();
    }
}

// 세미나 신청
function requestSeminarSendit() {
    var form = document.writeForm;
    form.submit();
}

// 비회원 주문 조회
function orderGuestView() {
    var form = document.writeForm;
    if (form.name.value == "") {
        alert("주문자명을 입력해주세요.");
        form.name.focus();
    } else if (form.trade_code.value == "") {
        alert("주문번호를 입력해주세요.");
        form.trade_code.focus();
    } else if (form.passwd.value == "") {
        alert("주문비밀번호를 입력해주세요.");
        form.passwd.focus();
    } else {
        form.submit();
    }
}

// 일시중지
function pause(idx, left_day) {
    var form = document.pauseForm;
    var idx = idx;
    var userid = $("#userid").val();
    var passwd = $("#passwd").val();
    if (idx.value == "") {
        alert("강좌정보가 비정상적으로 선택되었습니다. 다시 시도해주세요.");
        location.reload();
        return;
    } else if (form.passwd.value == "") {
        alert("비밀번호를 입력해주세요.");
        form.passwd.focus();
        return;
    }
    var choice = confirm("중지하시겠습니까?(중지: 1회에 한하여 최대 30일 가능)");
    if (choice) {
        $.ajax({
            url: '/html/common_ui/mypage/pause_ok.php',
            type: 'GET',
            data: 'idx=' + idx + '&left_day=' + left_day + '&userid=' + userid + '&passwd=' + passwd,
            success: function(data) {
                $('#pause_info').html(data);
            }
        });
    } else {
        return;
    }
}

// 수강재개하기
function restart(idx) {
    var choice = confirm("수강을 재개하시겠습니까?");
    if (choice) {
        $.ajax({
            url: '/html/common_ui/mypage/restart_ok.php',
            type: 'GET',
            data: 'idx=' + idx,
            success: function(data) {
                $('#restart_info').html(data);
            }
        });
    } else {
        return;
    }
}

//결제페이지 회원주소 적용
function applyAddr() {
    if ($("input:checkbox[id='checkOne']").is(":checked") == true) {
        var postcode = $("#postcode").val();
        var addr1 = $("#addr1").val();
        var addr2 = $("#addr2").val();
        var userid = $("#userid").val();;
        $.ajax({
            url: 'mem_addr_update.php',
            type: 'POST',
            data: {
                "postcode": postcode,
                "addr1": addr1,
                "addr2": addr2,
                "userid": userid
            },
            success: function(data) {
                $('#addr_info').html(data);
            }
        });
    }
}

// 상품검색
function goodsSearch() {
    var form = document.searchForm;
    if (form.search_order.value == "") {
        alert("검색어를 입력해주세요.");
        form.search_order.focus();
    } else {
        form.submit();
    }
}

// 풀패키지 미신청자가 그룹레슨, 개인레슨 신청시 알림
function alertGoLecture() {
    var choose = confirm('풀패키지 영상교육 회원이상만 신청가능합니다. \n지금바로 신청하시겠습니까?');
    if (choose) {
        location.href = '../../edu_movie/teach/edu_request_list.php';
    } else {
        return;
    }
}

//그룹레슨 대기중 취소
function cancelStandby(idx) {
    var choose = confirm('신청취소 하시겠습니까?');
    if (choose) {
        $.ajax({
            url: '/html/common_ui/mypage/cancel_standby.php',
            type: 'GET',
            data: 'idx=' + idx,
            success: function(data) {
                $('#cancel_view').html(data);
            }
        });
    } else {
        return;
    }
}

// 보듬교육, 보듬숍 통합사이트 정책 동의
function agreeSendit() {
    var form = document.agreeForm;
    if (form.agree1.checked == false) {
        alert("이용약관에 동의해주세요.");
        form.agree1.focus();
        return;
    } else if (form.agree2.checked == false) {
        alert("개인정보취급방침에 동의해주세요.");
        form.agree2.focus();
        return;
    } else if (form.agree3.checked == false) {
        alert("미성년자 이용계약의 특칙에 동의해주세요.");
        form.agree3.focus();
        return;
    } else {
        form.submit();
    }
}

function noAgree() {
    var choose = confirm('정책동의 하셔야 사이트 이용이 가능합니다. \n동의하지 않으시겠습니까?');
    if (choose) {
        location.href = '/';
    } else {
        return;
    }
}

//최근본상품 페이징
function goRecentPage(PageNumber) {
    $.ajax({
        url: 'recentGoods.php',
        type: 'GET',
        data: 'PageNumber=' + PageNumber,
        success: function(data) {
            $('#recentWrap').html(data);
        }
    });
}

function msgFirst() {
    alert("첫번째 페이지입니다.");
}

function msgLast() {
    alert("마지막 페이지입니다.");
}

// 옵션 2개시 2차 선택
function optionSelect(code, depth, id, option) {
    $.ajax({
        url: 'optionSelect.php',
        type: 'GET',
        data: 'code=' + code + '&depth=' + depth + '&option=' + encodeURIComponent(option),
        success: function(data) {
            $('#option' + id).html(data);
        }
    });
}

// 옵션 3개시 2차 선택
function optionSelect2(code, depth, id, option) {
    $.ajax({
        url: 'optionSelect2.php',
        type: 'GET',
        data: 'code=' + code + '&depth=' + depth + '&option=' + encodeURIComponent(option),
        success: function(data) {
            $('#option' + id).html(data);
        }
    });
}

// 옵션 선택 3차
function optionSelect3(code, depth, id, option1, option2) {
    $.ajax({
        url: 'optionSelect3.php',
        type: 'GET',
        data: 'code=' + code + '&depth=' + depth + '&option1=' + encodeURIComponent(option1) + '&option2=' + encodeURIComponent(option2),
        success: function(data) {
            $('#option' + id).html(data);
        }
    });
}


// 상품이 모두 선택되면 상품정보를 임시 저장한다
function temp_insert() {
    var formData = $("#goods_form").serialize();
    //alert(formData);
    $.ajax({
        type: 'POST', // post 타입 전송
        url: 'insert_cart.php?cart_method=1', // 전송 url
        data: formData, // 전송 파라미터
        success: function(data) { // 콜백 성공 응답시 실행
            $("#cart_list").html(data);
        },

        error: function() { // Ajax 전송 에러 발생시 실행
            alert("선택한 상품을 입력하지 못하였습니다. 다시 시도해주세요.");
        },

    });

}

function disabled(n) {
    $("#optionName" + n).attr('disabled', true);
}

// 임시저장 데이터 삭제
function cart_del(idx, goods_idx) {
    var choose = confirm('선택 상품을 삭제 하시겠습니까?');
    var session_cart = $("#session_cart").val();
    var part_idx = $("#part_idx").val();
    if (choose) {
        $.ajax({
            type: 'GET', // post 타입 전송
            url: 'insert_cart.php', // 전송 url
            data: 'cart_method=3&session_cart=' + session_cart + '&cart_del_idx=' + idx + '&goods_idx=' + goods_idx + '&part_idx=' + part_idx, // 전송 파라미터
            success: function(data) { // 콜백 성공 응답시 실행
                $("#cart_list").html(data);
            },
            error: function() { // Ajax 전송 에러 발생시 실행
                alert("선택한 상품을 삭제하지 못했습니다. 다시 시도해주세요.");
            },
        });

    }
}

// 임시저장 데이터 수량 수정
function change_cnt(idx, goods_cnt) {
    var form = document.goods_form;
    var session_cart = $("#session_cart").val();
    var part_idx = $("#part_idx").val();
    var goods_idx = $("#goods_idx").val();

    $.ajax({
        type: 'GET', // post 타입 전송
        url: 'insert_cart.php', // 전송 url
        data: 'cart_method=2&session_cart=' + session_cart + '&cart_edit_idx=' + idx + '&edit_goods_cnt=' + goods_cnt + '&goods_idx=' + goods_idx, // 전송 파라미터
        success: function(data) { // 콜백 성공 응답시 실행
            $("#cart_list").html(data);
        },
        error: function() { // Ajax 전송 에러 발생시 실행
            alert("선택한 상품을 입력하지 못핬였습니다. 다시 시도해주세요.");
        },
    });

}


// 자동으로 콤마 넣기
function number_format(num) {
    num = num.replace(/,/g, "")
    var num_str = num.toString()
    var result = ''

    for (var i = 0; i < num_str.length; i++) {
        var tmp = num_str.length - (i + 1)
        if (i % 3 == 0 && i != 0) result = ',' + result
        result = num_str.charAt(tmp) + result
    }

    return result
}


function count_change(cnt) {
    var form = document.goods_form;
    var buy_goods_cnt = cnt;

    form.buy_goods_cnt.value = buy_goods_cnt;

    base_price = form.hidden_shop_price.value;

    op1 = form.hidden_option_price1.value;
    op2 = form.hidden_option_price2.value;
    op3 = form.hidden_option_price3.value;
    //op4 = form.hidden_option_price4.value;
    //op5 = form.hidden_option_price5.value;
    //op6 = form.hidden_option_price6.value;

    shop_price = parseInt(base_price) + parseInt(op1) + parseInt(op2) + parseInt(op3);
    //shop_price = parseInt(base_price) + parseInt(op1) + parseInt(op2) + parseInt(op3) + parseInt(op4) + parseInt(op5) + parseInt(op6);
    shop_price = shop_price * buy_goods_cnt;
    shop_price = String(shop_price);

    form.hidden_tot_shop_price.value = shop_price;
    document.getElementById("money").innerHTML = number_format(shop_price);

    var point;

    point = goods_form.point_js.value;
    point_format = (shop_price * point);
    point_format = point_format
    point_format_temp = Math.round(point_format)

    $("#goods_point").val(point_format_temp);
    $("#point").html(point_format_temp + "원");

}

// 품절상품 선택
function disableCheck(obj) {
    if (obj[obj.selectedIndex].className == 'disabled2') {
        obj.selectedIndex = 0;
        return;
    } else if (obj[obj.selectedIndex].className == 'disabled') {
        alert("선택하신 품목은 현재 품절입니다.");
        for (var i = 0; obj[i].className == "disabled"; i++);
        obj.selectedIndex = i;
        return;
    } else {
        temp_insert();
    }
}

function box_sum(arr, e) {
    var f = document.writeForm;
    var sum_str = "";
    for (var i = 0; i < arr.length; i++) {
        if (arr[i].checked == true) {
            if (sum_str) {
                sum_str += ",";
            }
            sum_str += arr[i].value;
        }
    }
    e.value = sum_str;
}

//숫자만, 영문만 입력
$(document).ready(function() {
    $(".onlynum").keyup(function() {
        $(this).val($(this).val().replace(/[^0-9]/g, ""));
    });
    $(".onlyeng").keyup(function() {
        $(this).val($(this).val().replace(/[^\!-z]/g, ""));
    });
});
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Santa Flex</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- =======================================================
  * Template Name: Restaurantly - v3.1.0
  * Template URL: https://bootstrapmade.com/restaurantly-restaurant-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  <script src="<%=request.getContextPath() %>/assets/js/jquery-3.6.0.min.js"></script>
  <script src="<%=request.getContextPath() %>/assets/js/login.js"></script>
  <script>
  function dupliError(){
	  alert("아이디가 중복되었습니다.");
  }
  function signUpOk(){
	  alert("회원가입이 완료되었씁니다.");
  }
  </script>
  
  
<script type="text/javascript">
String.prototype.trim=function(){
	var TRIM_PATTERN=/(^\s*)|(\s*$)/g; //  \s => 요게 공백. /(^\s*)|(\s*$)/g : 앞의 공백과 뒤의 공백을 제거하라
	return this.replace(TRIM_PATTERN,"");
}

function send(){
	var f=document.forms[0];
	var a="           우리   나라    ";
	a=a.trim();
	alert(":"+a+":");

	// 이름
	if(! /^[\uac00-\ud7a3]*$/g.test(f.name.value)){ //g: 완전일치, ^앞 $뒤 *0개이상, uac00~ud7a3은 한글 코드값  , gi대소문자 구분없이 완전일치
		alert("이름을 제대로 입력하쇼");
		f.name.focus();
		return;
	}

	// 아이디
	if(! /^[a-z][a-z0-9_$@#]{4,9}$/i.test(f.id.value)){ // ^ : 앞에만 검사, $ : 뒤에만 검사, i 대소문자 구분 안함(없으면 소문자만 가능하다)
		alert("아이디 첫문자는 영문자이고 5~10자만 가능");
		f.id.focus();
		return;
	}

	//패스워드검사(영문자와 1자 이상의 숫자특수문자. 5~10)
	if(! /^(?=.*[a-z])(?=.*[_!@#$%^&*]|.*[0-9]).{4,9}$/i.test(f.pwd.value)){
		alert("패드워드는 특수문자가 필요 ");
		f.pwd.focus();
		return;
	}			
	
	// 날짜 형식 검사

	if(! /[12][0-9]{3}-[0-9]{2}-[0-9]{2}/.test(f.birth.value)){ // 검사방법 / ~ / 슬러시와 슬러시 사이. [12][0-9]{3} => 첫글자는 1이나 2가 와야한다. 그다음에는 0~9가 3번와야한다.
		alert("생년월일은 yyyy-mm-dd 형식으로 입력해야 함!!!");
		f.birth.focus();
		return;
	}

	//나이 형식 검사
	if(! /^[0-9]*$/.test(f.age.value)){ // * : 0개이상(제한을 두지 않는다)
		alert("나이는 숫자만 가능");
		f.age.focus();
		return;
	}

	//이미지 파일만
	if(! /(\.gif|\.png|\.jpg|\.jpeg)$/i.test(f.upload.value)){ // 뒷글자만 검사하면 되기때문에 $
		alert("그림만..............")
		f.upload.focus();
		return;
	}

	alert("성공!!!");
}
</script>
</head>

<body>
	<jsp:include page="/Header.jsp"/>

  <section class="min-vh-100 mb-8" data-aos="fade-up">
    <div class="page-header align-items-start min-vh-50 pt-5 pb-11 m-3 border-radius-lg" style="background-image: url('<%=request.getContextPath() %>/assets/img/curved-images/curved14.jpg');">
      <span class="mask bg-gradient-dark opacity-6"></span>
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-5 text-center mx-auto">
            <h1 class="text-white mb-2 mt-5">Welcome!</h1>
            <h4 class="text-lead text-white">산타플랙스에 오신걸 환영합니다.</h4>
          </div>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row mt-lg-n10 mt-md-n11 mt-n10">
        <div class="col-xl-8 col-lg-5 col-md-7 mx-auto">
          <div class="card z-index-0">
            <div class="card-header text-center pt-4">
              <h2 style="font-weight: bold; color: black;font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif">회원가입</h2>
            </div><br>

            <div class="row px-xl-5 px-sm-4 px-3">
              <div class="col-3 ms-auto px-1">
                <a class="btn btn-outline-light w-100" href="javascript:;">
                  <svg width="24px" height="32px" viewBox="0 0 64 64" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink32">
                    <g id="Artboard" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                      <g id="facebook-3" transform="translate(3.000000, 3.000000)" fill-rule="nonzero">
                        <circle id="Oval" fill="#3C5A9A" cx="29.5091719" cy="29.4927506" r="29.4882047"></circle>
                        <path d="M39.0974944,9.05587273 L32.5651312,9.05587273 C28.6886088,9.05587273 24.3768224,10.6862851 24.3768224,16.3054653 C24.395747,18.2634019 24.3768224,20.1385313 24.3768224,22.2488655 L19.8922122,22.2488655 L19.8922122,29.3852113 L24.5156022,29.3852113 L24.5156022,49.9295284 L33.0113092,49.9295284 L33.0113092,29.2496356 L38.6187742,29.2496356 L39.1261316,22.2288395 L32.8649196,22.2288395 C32.8649196,22.2288395 32.8789377,19.1056932 32.8649196,18.1987181 C32.8649196,15.9781412 35.1755132,16.1053059 35.3144932,16.1053059 C36.4140178,16.1053059 38.5518876,16.1085101 39.1006986,16.1053059 L39.1006986,9.05587273 L39.0974944,9.05587273 L39.0974944,9.05587273 Z" id="Path" fill="#FFFFFF"></path>
                      </g>
                    </g>
                  </svg>
                </a>
              </div>
              <div class="col-3 px-1">
                <a class="btn btn-outline-light w-100" href="javascript:;">
                  <svg width="24px" height="32px" viewBox="0 0 64 64" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                    <g id="Artboard" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                      <g id="apple-black" transform="translate(7.000000, 0.564551)" fill="#000000" fill-rule="nonzero">
                        <path d="M40.9233048,32.8428307 C41.0078713,42.0741676 48.9124247,45.146088 49,45.1851909 C48.9331634,45.4017274 47.7369821,49.5628653 44.835501,53.8610269 C42.3271952,57.5771105 39.7241148,61.2793611 35.6233362,61.356042 C31.5939073,61.431307 30.2982233,58.9340578 25.6914424,58.9340578 C21.0860585,58.9340578 19.6464932,61.27947 15.8321878,61.4314159 C11.8738936,61.5833617 8.85958554,57.4131833 6.33064852,53.7107148 C1.16284874,46.1373849 -2.78641926,32.3103122 2.51645059,22.9768066 C5.15080028,18.3417501 9.85858819,15.4066355 14.9684701,15.3313705 C18.8554146,15.2562145 22.5241194,17.9820905 24.9003639,17.9820905 C27.275104,17.9820905 31.733383,14.7039812 36.4203248,15.1854154 C38.3824403,15.2681959 43.8902255,15.9888223 47.4267616,21.2362369 C47.1417927,21.4153043 40.8549638,25.1251794 40.9233048,32.8428307 M33.3504628,10.1750144 C35.4519466,7.59650964 36.8663676,4.00699306 36.4804992,0.435448578 C33.4513624,0.558856931 29.7884601,2.48154382 27.6157341,5.05863265 C25.6685547,7.34076135 23.9632549,10.9934525 24.4233742,14.4943068 C27.7996959,14.7590956 31.2488715,12.7551531 33.3504628,10.1750144" id="Shape"></path>
                      </g>
                    </g>
                  </svg>
                </a>
              </div>
              <div class="col-3 me-auto px-1">
                <a class="btn btn-outline-light w-100" href="javascript:;">
                  <svg width="24px" height="32px" viewBox="0 0 64 64" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                    <g id="Artboard" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                      <g id="google-icon" transform="translate(3.000000, 2.000000)" fill-rule="nonzero">
                        <path d="M57.8123233,30.1515267 C57.8123233,27.7263183 57.6155321,25.9565533 57.1896408,24.1212666 L29.4960833,24.1212666 L29.4960833,35.0674653 L45.7515771,35.0674653 C45.4239683,37.7877475 43.6542033,41.8844383 39.7213169,44.6372555 L39.6661883,45.0037254 L48.4223791,51.7870338 L49.0290201,51.8475849 C54.6004021,46.7020943 57.8123233,39.1313952 57.8123233,30.1515267" id="Path" fill="#4285F4"></path>
                        <path d="M29.4960833,58.9921667 C37.4599129,58.9921667 44.1456164,56.3701671 49.0290201,51.8475849 L39.7213169,44.6372555 C37.2305867,46.3742596 33.887622,47.5868638 29.4960833,47.5868638 C21.6960582,47.5868638 15.0758763,42.4415991 12.7159637,35.3297782 L12.3700541,35.3591501 L3.26524241,42.4054492 L3.14617358,42.736447 C7.9965904,52.3717589 17.959737,58.9921667 29.4960833,58.9921667" id="Path" fill="#34A853"></path>
                        <path d="M12.7159637,35.3297782 C12.0932812,33.4944915 11.7329116,31.5279353 11.7329116,29.4960833 C11.7329116,27.4640054 12.0932812,25.4976752 12.6832029,23.6623884 L12.6667095,23.2715173 L3.44779955,16.1120237 L3.14617358,16.2554937 C1.14708246,20.2539019 0,24.7439491 0,29.4960833 C0,34.2482175 1.14708246,38.7380388 3.14617358,42.736447 L12.7159637,35.3297782" id="Path" fill="#FBBC05"></path>
                        <path d="M29.4960833,11.4050769 C35.0347044,11.4050769 38.7707997,13.7975244 40.9011602,15.7968415 L49.2255853,7.66898166 C44.1130815,2.91684746 37.4599129,0 29.4960833,0 C17.959737,0 7.9965904,6.62018183 3.14617358,16.2554937 L12.6832029,23.6623884 C15.0758763,16.5505675 21.6960582,11.4050769 29.4960833,11.4050769" id="Path" fill="#EB4335"></path>
                      </g>
                    </g>
                  </svg>
                </a>
              </div>
              <div class="mt-2 position-relative text-center"><br>
                <p class="text-sm font-weight-bold mb-2 text-secondary text-border d-inline z-index-2 bg-white px-3">
                  or
                </p>
              </div>
            </div>
            <div class="card-body">
              <form role="form text-left" action="/santa/5-2.singUp.do" method="post">
              <c:if test="${msg ne null and msg eq 'signUpError'}">
              	<!-- <p style="color:red;">아이디나 비밀번호가 틀렸습니다.</p> -->
              	<script >
              		alert("아이디가 중복되었습니다.");
              	</script>
              </c:if>
              <c:if test="${msg ne null and msg eq 'signUpOk'}">
              	<!-- <p style="color:red;">아이디나 비밀번호가 틀렸습니다.</p> -->
              	<script >
              		alert("회원가입을 축하드립니다.");
              	</script>
              </c:if>
                <div class="row">
                  <div class="col-md-4 mb-3">
                      <img src="<%=request.getContextPath() %>/assets/img/default_profile.png" style="margin-left: 50px;">
                  
                  	<input type="file" name="upload"value="사진 선택" style="margin-top: 10px; margin-left: 100px;"><br/>
                </div>
                  <div class="col-md-8 mb-3">
                    <p style="color: grey;">아이디
                    <input type="text" name="id" class="form-control" placeholder="Id" aria-label="Id" aria-describedby="-addon" required></p>
                    <p style="color: grey;">비밀번호
                    <input type="text" name="pwd" class="form-control" placeholder="password" aria-label="password" aria-describedby="-addon" required></p>
                  </div>
                </div><br> 
                <div class="mb-3">
                  <p style="color: grey;">이름</p>
                  <input type="text" name="name" class="form-control" placeholder="name" aria-label="name" aria-describedby="-addon" required>
                </div>
                <div class="mb-3">
                  <p style="color: grey;">생년월일</p>
                  <input type="text" name="birthday" class="form-control" placeholder="birthday" aria-label="birthday" aria-describedby="-addon" required>
                </div>
                <div class="mb-3">
                  <p style="color: grey;">본인 확인 이메일</p>
                  <input type="text" name="email" class="form-control" placeholder="선택입력" aria-label="email" aria-describedby="-addon" required>
                </div>
                <div class="mb-3">
                  <p style="color: grey;">휴대전화</p>
                  <input type="text" name="tel" class="form-control" placeholder="전화번호 입력" aria-label="tel" aria-describedby="-addon" required>
                  <input type="button" value="인증번호 받기" style="margin-top: 10px;">
                </div>
                <div class="mb-3">
                  <p style="color: grey;">주소</p>
                  <input type="text" name="address" class="form-control" placeholder="주소 입력" aria-label="tel" aria-describedby="-addon" required>
                  <input type="button" value="주소" style="margin-top: 10px;">
                </div>
                <div class="form-check form-check-info text-left">
                  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" checked>
                  <label class="form-check-label" for="flexCheckDefault">
                    <a href="javascript:;" class="text-dark font-weight-bolder">개인정보 수집 및 이용 동의(필수)<br></a>
                  </label>
                </div>
                <div class="text-center">
                  <div class="row justify-content-md-center">
                    <input type="submit" value="가입하기" id="log-reg-show" style="border: 1px solid black; width:80px; margin-top:5px;">
                   
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

<jsp:include page="/Footer.jsp"/>

<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>


<!-- Template Main JS File -->
<script src="<%=request.getContextPath() %>/assets/js/main.js"></script>

</body>

</html>
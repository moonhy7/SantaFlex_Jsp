<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <style>
  	ul {
		padding : 0;
		margin : 0;
	}
	li {
		list-style : none;
	}
  </style>
</head>

<body>
	<jsp:include page="/Header.jsp"/>

<!-- QnA section -->
<section style="margin-top: 100px; margin-left: 80px">
	<h1 style="margin-left: 20px"><a href="6-2.QnA.do">질문하기</a></h1>
	<a class="nav-link scrollto" href="6-2.QnA.jsp" style="margin-left: 5px">산타플랙스 관리자가 내용을 확인 후 바로 답변해 드리겠습니다.</a>
	<form action="/santa/6-2.QnA.do" method="post">
		<ul>
		<li>
            <label for="title">구분</label><br>
            <select id="title" name="title">
               <option selected>구분</option>
               <option value="상품 문의">상품 문의</option>
               <option value="결제 문의">결제 문의</option>
               <option value="배송지 문의">배송지 문의</option>
               <option value="회원정보 문의">회원정보 문의</option>
               <option value="기타 문의">기타 문의</option>
            </select><br><br>
         </li>
			<li>
				<label for="content">내용</label><br>
				<textarea id="content" name="content" rows="5" cols="70" placeholder="500자 이내로 작성해주세요."></textarea><br>
			</li>
		</ul>
		<div style="margin-left: 200px">
			<input type="submit" value="문의 등록하기" size="150">
			<input type="reset" value="취소하기">
		</div>
	</form>
	</section>

<!-- end QnA section -->

<jsp:include page="/Footer.jsp"/>

  
<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Template Main JS File -->
<script src="<%=request.getContextPath() %>/assets/js/main.js"></script>

</body>

</html>
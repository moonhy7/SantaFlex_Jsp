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

    <style>
  	ul {
		padding : 0;
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
   <h1 style="margin-left: 20px"><a href="6-2.QnA.do">QnA 수정하기</a></h1><br><br>
   <form action="6-3.update.do" method="post">
   	  <input type="hidden" name="no" value="${santa.no }">
   	  <input type="hidden" name="hit" value="${santa.hit }">
      <ul>
         <li>
            <label for="title"  width="80px">구분</label><br>
            <select id="title" name="title">
            	<option value="구분" ${santa.title eq '구분'?"selected":""}>구분</option>
              	<option value="상품 문의" ${santa.title eq '상품 문의'?"selected":""}>상품 문의</option>
              	<option value="결제 문의" ${santa.title eq '결제 문의'?"selected":""}>결제 문의</option>
              	<option value="배송지 문의" ${santa.title eq '배송지 문의'?"selected":""}>배송지 문의</option>
              	<option value="회원정보 문의" ${santa.title eq '회원정보 문의'?"selected":""}>회원정보 문의</option>
              	<option value="기타 문의" ${santa.title eq '기타 문의'?"selected":""}>기타 문의</option>
            </select><br><br>
         </li>
         <li>
            <label for="content">내용</label><br>
            <textarea id="content" name="content" rows="5" cols="70">${santa.content }</textarea><br>
         </li>
      </ul>
      <div style="margin-left: 150px">
      	<input type="submit" value="저장">
      	<input type="button" value="삭제" onclick="location.href='delete.do?no=${santa.no}'">
      	<input type="button" value="취소" onclick="location.href='6-1.FAQ.do'">
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
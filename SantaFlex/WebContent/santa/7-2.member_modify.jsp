<%@ page import="santaflex.vo.Member" %>
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
</head>

<body>
	<jsp:include page="/Header.jsp"/>
       
    
    <!-- ======= member_modify Section ======= -->
    <section id="book-a-table" class="book-a-table">
      <div class="container" data-aos="fade-up">
		
        <div class="section-title" style="margin-top: 100px;">
          <h2>Information</h2>
          <p>회원 정보 수정</p>
        </div>
<!-- forms/book-a-table.php -->
        <form action="7-2.member_modify.do" method="post" data-aos="fade-up" data-aos-delay="100">
          <input type="hidden" name="id" id="id" value="${Member.id }">
          <div class="row">
            <div class="col-lg-4 col-md-6 form-group">
            </div>

            <div class="col-lg-4 col-md-6 form-group">
              <h4>이름</h4>
              <input type="text" name="name" class="form-control" id="name"  value= ${Member.name } data-rule="minlen:4" data-msg="Please enter at least 4 chars">
             <!--  <div class="validate"></div> -->
            </div>

          
            <div class="col-lg-4 col-md-6 form-group">
            </div>
            <div class="col-lg-4 col-md-6 form-group">
            </div>

            <div class="col-lg-4 col-md-6 form-group">
              <h4>번호</h4>
              <input type="text" class="form-control" name="tel" id="tel" value= ${Member.tel } data-rule="minlen:4" data-msg="Please enter a valid email">
             <!--  <div class="validate"></div> -->
            </div>

            <div class="col-lg-4 col-md-6 form-group">
            </div>
            <div class="col-lg-4 col-md-6 form-group">
            </div> 
            
            <div class="col-lg-4 col-md-6 form-group">
              <h4>이메일</h4>
              <input type="text" name="email" class="form-control" id="email" value= ${Member.email } data-rule="minlen:4" data-msg="Please enter at least 4 chars">
             <!--  <div class="validate"></div> -->
            </div>

            <div class="col-lg-4 col-md-6 form-group">
              </div>
            <div class="col-lg-4 col-md-6 form-group">
              </div> 
            
            <div class="col-lg-4 col-md-6 form-group">
              <h4>비밀번호</h4>
              <input type="text" name="pwd" class="form-control" id="password" value= ${Member.pwd } data-rule="minlen:4" data-msg="Please enter at least 4 chars">
              <!-- <div class="validate"></div> -->
            </div>

            <div class="col-lg-4 col-md-6 form-group">
            </div>
           <div class="col-lg-4 col-md-6 form-group">
            </div> 

            <div class="col-lg-4 col-md-6 form-group">
              <h4>주소</h4>
              <input type="text" name="address" class="form-control" id="address" value=${Member.address } data-rule="minlen:4" data-msg="Please enter at least 4 chars"><br>
          		<input type="submit" value="저장" style="margin-left : 150px; width:20%;">
          	</div>
        </form>
      </div>
    </section><!-- End Book A Table Section -->
	<jsp:include page="/Footer.jsp"/>


<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Template Main JS File -->
<script src="<%=request.getContextPath() %>/assets/js/main.js"></script>

</body>

</html>
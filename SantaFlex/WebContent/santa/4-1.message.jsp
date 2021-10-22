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
 
       
    
    <!-- ======= Book A Table Section ======= -->
    <section id="book-a-table" class="book-a-table">
      <div class="container" data-aos="fade-up">

        <div class="section-title" style="margin-top: 100px;">
          <h2>Hello</h2>
          <p>감사메시지</p>
        </div>

        <form action="4-1.message.do" method="post" role="form" data-aos="fade-up" data-aos-delay="100" >
          <div class="row">
            <div class="col-lg-4 col-md-6 form-group mt-3 mt-md-0">
               <p>받는 이</p>
              <input type="text" class="form-control" name="send" id="send" placeholder="받는 이" data-rule="minlen:4" data-msg="Please enter at least 4 chars" style="margin-top : 20px;">
              <div class="validate"></div>
            </div>
            <div class="col-lg-2 col-md-6 form-group mt-3 mt-md-0">
              <div class="validate"></div>
            </div>
            <div class="col-lg-2 col-md-6 form-group mt-3 mt-md-0">
              <div class="validate"></div>
            </div>
            <div class="col-lg-8 col-md-6 form-group mt-3">
               <p>제목</p>
              <input type="text" name="title" class="form-control" id="title" placeholder="제목" data-rule="minlen:4" data-msg="Please enter at least 4 chars" style="margin-top : 20px;">
              <div class="validate"></div>
            </div>
            <div class="col-lg-8 col-md-8 form-group mt-3">
               <p>메세지</p>
              <textarea class="form-control" name="content" rows="5" placeholder="메시지" style="margin-top : 20px;"></textarea>
              <div class="validate"></div>
            </div>
          </div>
          <!-- <div class="col-lg-4 col-md-6 form-group mt-3">
            <input type="text" name="name" class="form-control" id="name" placeholder="제목" data-rule="minlen:4" data-msg="Please enter at least 4 chars">
            <div class="validate"></div>
          </div> -->
          <!-- <div class="mb-3">
            <div class="loading">Loading</div>
            <div class="error-message"></div>
            <div class="sent-message">Your booking request was sent. We will call back or send an Email to confirm your reservation. Thank you!</div>
          </div> -->
          <div class="text-left">
             <input type="submit" value="작성 완료" style="margin-left : 350px; margin-top : 20px">&nbsp
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<script src="<%=request.getContextPath() %>/assets/js/jquery-3.6.0.min.js"></script>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Santa Flex</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

<script>
  $(function() {
      $(".index1-1").on("click", function(e) {
          e.preventDefault();
          $("#img1-1").show();
          $("#img1-2").hide();
          $("#img1-3").hide();
          $("#img1-4").hide();
      });
      $(".index1-2").on("click", function(e) {
          e.preventDefault();
          $("#img1-2").show();
          $("#img1-1").hide();
          $("#img1-3").hide();
          $("#img1-4").hide();
      });
      $(".index1-3").on("click", function(e) {
          e.preventDefault();
          $("#img1-3").show();
          $("#img1-1").hide();
          $("#img1-2").hide();
          $("#img1-4").hide();
      });
      $(".index1-4").on("click", function(e) {
          e.preventDefault();
          $("#img1-4").show();
          $("#img1-1").hide();
          $("#img1-2").hide();
          $("#img1-3").hide();
      });
      $(".index2-1").on("click", function(e) {
          e.preventDefault();
          $("#img2-1").show();
          $("#img2-2").hide();
        
      });
      $(".index2-2").on("click", function(e) {
          e.preventDefault();
          $("#img2-2").show();
          $("#img2-1").hide();
      
      });
      $(".index3-1").on("click", function(e) {
          e.preventDefault();
          $("#img3-1").show();
          $("#img3-2").hide();
        
      });
      $(".index3-2").on("click", function(e) {
          e.preventDefault();
          $("#img3-2").show();
          $("#img3-1").hide();
      
      });
      $(".index4-1").on("click", function(e) {
          e.preventDefault();
          $("#img4-1").show();
          $("#img4-2").hide();
        
      });
      $(".index4-2").on("click", function(e) {
          e.preventDefault();
          $("#img4-2").show();
          $("#img4-1").hide();
      
      });
      $(".index5-1").on("click", function(e) {
          e.preventDefault();
          $("#img5-1").show();
          $("#img5-2").hide();
        
      });
      $(".index5-2").on("click", function(e) {
          e.preventDefault();
          $("#img5-2").show();
          $("#img5-1").hide();
      
      });
   
      

      $(".nav-category").on("click", function(e) {
          e.preventDefault();
          $("#img1-1").hide();
          $("#img1-2").hide();
          $("#img1-3").hide();
          $("#img1-4").hide();
          $("#img2-1").hide();
          $("#img2-2").hide();
          $("#img3-1").hide();
          $("#img3-2").hide();
          $("#img4-1").hide();
          $("#img4-2").hide();
          $("#img5-1").hide();
          $("#img5-2").hide();
        
          
      });
  });
</script>
</head>

<body>
<jsp:include page="/Header.jsp"/>

    <!-- ======= Specials Section ======= -->
    <section id="specials" class="specials">
      <div class="container" data-aos="fade-up">

        <div class="section-title" style="margin-top: 70px;">
          <h2>??????</h2>
          <p>?????? ?????????</p>
        </div>

        <div class="row" data-aos="fade-up" data-aos-delay="100">
          <div class="col-lg-3">
            <ul class="nav nav-tabs flex-column">
              <li class="nav-item">
                <a class="nav-link nav-category active show" data-bs-toggle="tab" href="#tab-1">???????????????</a>
              </li>
              <li class="nav-item">
                <a class="nav-link nav-category" data-bs-toggle="tab" href="#tab-2">??????, ?????????</a>
              </li>
              <li class="nav-item">
                <a class="nav-link nav-category" data-bs-toggle="tab" href="#tab-3">?????????, ??????, ??????, ??????</a>
              </li>
              <li class="nav-item">
                <a class="nav-link nav-category" data-bs-toggle="tab" href="#tab-4">?????????, ????????? ??????</a>
              </li>
              <li class="nav-item">
                <a class="nav-link nav-category" data-bs-toggle="tab" href="#tab-5">?????????, ??????</a>
              </li>
            </ul>
          </div>
          <div class="deep_category col-lg-6 mt-4 mt-lg-0">
            <div class="tab-content">
              <div class="tab-pane active show" id="tab-1">
                <ul class="nav nav-tabs flex-column">
                    <li class="nav-item">
                      <a class="nav-link active show index1-1" data-bs-toggle="tab" href="#tab1-img" >?????????</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link index1-2" data-bs-toggle="tab"  >??????</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link index1-3" data-bs-toggle="tab" >??????</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link index1-4" data-bs-toggle="tab" >?????????</a>
                    </li>
                  </ul>
                </div>
              <div class="tab-pane" id="tab-2">
                <ul class="nav nav-tabs flex-column">
                    <li class="nav-item">
                      <a class="nav-link active show index2-1" data-bs-toggle="tab"  >??????</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link index2-2" data-bs-toggle="tab" >??????</a>
                    </li>
                  </ul>
              </div>
              <div class="tab-pane" id="tab-3">
                <ul class="nav nav-tabs flex-column">
                    <li class="nav-item">
                      <a class="nav-link active show index3-1" data-bs-toggle="tab"  >??????</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link index3-2" data-bs-toggle="tab"  >??????</a>
                    </li>
                  </ul>
              </div>
              <div class="tab-pane" id="tab-4">
                <ul class="nav nav-tabs flex-column">
                    <li class="nav-item">
                      <a class="nav-link active show index4-1" data-bs-toggle="tab" >?????????</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link index4-2" data-bs-toggle="tab" >?????????</a>
                    </li>
                    
                  </ul>
              </div>
              <div class="tab-pane" id="tab-5">
                <ul class="nav nav-tabs flex-column">
                    <li class="nav-item">
                      <a class="nav-link active show index5-1" data-bs-toggle="tab" >?????????</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link index5-2" data-bs-toggle="tab" >??????</a>
                    </li>
                    
                  </ul>
              </div>
            </div>
          </div>
          <div class="img_category col-lg-3 mt-3 ">
              <div class="content_img">
                  <img src="<%=request.getContextPath() %>/assets/img/cart/?????????.jpg" alt="" class="img_size" id="img1-1" >
                  <img src="<%=request.getContextPath() %>/assets/img/cart/??????.jpg" alt="" class="img_size" id="img1-2" >
                  <img src="<%=request.getContextPath() %>/assets/img/cart/?????????.jpg" alt="" class="img_size" id="img1-3" >
                  <img src="<%=request.getContextPath() %>/assets/img/cart/?????????.jpg" alt="" class="img_size" id="img1-4" >
                  <img src="<%=request.getContextPath() %>/assets/img/cart/??????.jpg" alt="" class="img_size" id="img2-1" >
                  <img src="<%=request.getContextPath() %>/assets/img/cart/??????.jpg" alt="" class="img_size" id="img2-2" >
                  <img src="<%=request.getContextPath() %>/assets/img/cart/??????.jpg" alt="" class="img_size" id="img3-1" >
                  <img src="<%=request.getContextPath() %>/assets/img/cart/??????.jpg" alt="" class="img_size" id="img3-2" >
                  <img src="<%=request.getContextPath() %>/assets/img/cart/???????????????.jpg" alt="" class="img_size" id="img4-1" >
                  <img src="<%=request.getContextPath() %>/assets/img/cart/?????????.jpg" alt="" class="img_size" id="img4-2" >
                  <img src="<%=request.getContextPath() %>/assets/img/cart/?????????.jpg" alt="" class="img_size" id="img5-1" >
                  <img src="<%=request.getContextPath() %>/assets/img/cart/??????.jpg" alt="" class="img_size" id="img5-2" >
                  
              </div>
          </div>
        </div>

      </div>
    </section><!-- End Specials Section -->
<jsp:include page="/Footer.jsp"/>


<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Template Main JS File -->
<script src="<%=request.getContextPath() %>/assets/js/main.js"></script>

</body>

</html>
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

  <!-- ======= Menu Section .선물하기 ======= -->

  <section id="menu" class="menu section-bg">
    <div class="container" data-aos="fade-up">
      <div class="section-title" style="margin-top: 70px;">
        <h2>선물하기</h2>
        <p>호스트의 선물리스트에서 선물을 골라주세요</p>
      </div>
      <div class="row">
        <div class="col-lg-12 d-flex justify-content-center">
          <ul id="menu-flters">
            <li data-filter="*" class="filter-active">All</li>
            <li data-filter=".filter-starters">Kitchen</li>
            <li data-filter=".filter-salads">Room</li>
            <li data-filter=".filter-specialty">HoneyMoon</li>
          </ul>
        </div>
      </div>

      <div class="row menu-container">

        <div class="col-lg-6 menu-item filter-starters">
          <img src="<%=request.getContextPath() %>/assets/img/menu/odense.jpg" class="menu-img" alt="">
          <div class="menu-content">
            <a href="#">그릇</a>
            <label class="btn btn-outline-light btn-sm">37,000 <input type="radio" name="1" id="" ></label>
          </div>
          <div class="menu-ingredients">
            오텐데 한식기 세트
          </div>
        </div>

        
        <div class="col-lg-6 menu-item filter-starters">
          <img src="<%=request.getContextPath() %>/assets/img/menu/cake.jpg" class="menu-img" alt="">
          <div class="menu-content">
            <a href="#">그릇</a>
            <label class="btn btn-outline-light btn-sm">35,800 <input type="radio" name="1" id="" ></label>
          </div>
          <div class="menu-ingredients">
            카모메 양식기 그릇세트
          </div>
        </div>
        
        <div class="col-lg-6 menu-item filter-starters">
          <img src="<%=request.getContextPath() %>/assets/img/menu/airfrier.jpg" class="menu-img" alt="">
          <div class="menu-content">
            <a href="#">에어프라이기</a>
            <label class="btn btn-outline-light btn-sm">118,000 <input type="radio" name="1" id="" ></label>
          </div>
          <div class="menu-ingredients">
            아이닉 에어프라이기
          </div>
        </div>

        <div class="col-lg-6 menu-item filter-starters">
          <img src="<%=request.getContextPath() %>/assets/img/menu/mille.jpg" class="menu-img" alt="">
          <div class="menu-content">
            <a href="#">식기세척기</a>
            <label class="btn btn-outline-light btn-sm">1,729,000 <input type="radio" name="1" id="" ></label>
          </div>
          <div class="menu-ingredients">
            밀레 식기세척기
          </div>
        </div>
        
        
        
        <div class="col-lg-6 menu-item filter-salads">
          <img src="<%=request.getContextPath() %>/assets/img/menu/almang.jpg" class="menu-img" alt="">
          <div class="menu-content">
            <a href="#">침구세트</a>
            <label class="btn btn-outline-light btn-sm">769,250 <input type="radio" name="1" id="" ></label>
          </div>
          <div class="menu-ingredients">
            알레르망 이불, 베개세트
          </div>
        </div>
        
        <div class="col-lg-6 menu-item filter-salads">
          <img src="<%=request.getContextPath() %>/assets/img/menu/loboten.jpg" class="menu-img" alt="">
          <div class="menu-content">
            <a href="#">테이블</a>
            <label class="btn btn-outline-light btn-sm">70,000 <input type="radio" name="1" id="" ></label>
          </div>
          <div class="menu-ingredients">
            로포텐 테이블
          </div>
        </div>

        
        <div class="col-lg-6 menu-item filter-specialty">
          <img src="<%=request.getContextPath() %>/assets/img/menu/koreanair.jpg" class="menu-img" alt="">
          <div class="menu-content">
            <a href="#">항공권</a>
            <label class="btn btn-outline-light btn-sm">120,000 <input type="radio" name="1" id="" ></label>
          </div>
          <div class="menu-ingredients">
            대한항공 항공권
          </div>
        </div>

        <div class="col-lg-6 menu-item filter-specialty">
          <img src="<%=request.getContextPath() %>/assets/img/menu/hotel.jpg" class="menu-img" alt="">
          <div class="menu-content">
            <a href="#">제주호텔</a>
            <label class="btn btn-outline-light btn-sm">600,000 <input type="radio" name="1" id="" ></label>
          </div>
          <div class="menu-ingredients">
            제주호텔 3박 숙박권
          </div>
        </div>

        <div class="col-lg-6 menu-item filter-specialty">
          <img src="<%=request.getContextPath() %>/assets/img/menu/vilebrequin.jpg" class="menu-img" alt="">
          <div class="menu-content">
            <a href="#">수영복</a>
            <label class="btn btn-outline-light btn-sm">150,000<input type="radio" name="1" id="" ></label>
          </div>
          <div class="menu-ingredients">
            빌보콰 수영복
          </div>
        </div>

      </div>

    </div>
  </section><!-- End Menu Section -->

<!-- 답례품 선택 -->
  <section id="menu" class="menu section-bg">
    <div class="container" data-aos="fade-up">
      <div class="section-title" style="margin-top: 70px;">
        <p>원하는 답례품과 수령방법을 선택해주세요</p>
        <h2 style="margin-top: 10px;">답례품 선택</h2>
      </div>

      <div class="row menu-container">

        <div class="col-lg-6 menu-item">
          <img src="<%=request.getContextPath() %>/assets/img/menu/nonfiction.jpg" class="menu-img" alt="">
          <div class="menu-content">
            <a href="#">핸드워시&크림</a> 
          <label class="btn btn-outline-light btn-sm"> <input type="radio" name="2" id="" ></label>
          </div>
          <div class="menu-ingredients">
            NONFICTION 핸드워시&크림
          </div>
        </div>

        <div class="col-lg-6 menu-item">
          <img src="<%=request.getContextPath() %>/assets/img/menu/lush.jpg" class="menu-img" alt="">
          <div class="menu-content">
            <a href="#">입욕제</a>
            <label class="btn btn-outline-light btn-sm"> <input type="radio" name="2" id="" ></label>
          </div>
          <div class="menu-ingredients">
            LUSH 입욕제 (goddess)
          </div>
        </div>

        <div class="col-lg-6 menu-item">
          <img src="<%=request.getContextPath() %>/assets/img/menu/sosomoso.jpg" class="menu-img" alt="">
          <div class="menu-content">
            <a href="#">호텔수건</a>
            <label class="btn btn-outline-light btn-sm"> <input type="radio" name="2" id="" ></label>
          </div>
          <div class="menu-ingredients">
            SOSOMOSO 호텔수건
          </div>
        </div>

        <div class="col-lg-6 menu-item">
          <img src="<%=request.getContextPath() %>/assets/img/menu/tbb.jpg" class="menu-img" alt="">
          <div class="menu-content">
            <a href="#">마카롱</a>
            <label class="btn btn-outline-light btn-sm"> <input type="radio" name="2" id="" ></label>
          </div>
          <div class="menu-ingredients">
            더브레드블루 마카롱
          </div>
        </div>

     
      </div>

    </div>
  </section><!-- End Menu Section -->

 <!--수령방법-->
 <section id="menu" class="menu section-bg">
  <div class="container" data-aos="fade-up">
    <div class="section-title" style="margin-top: 70px;">
     <H2 style="margin-bottom: 30px;">수령 방법</H2>
     <label class="btn btn-outline-light btn-sm" style="margin-bottom: 10px;"> 현장수령 <input type="radio" name="3" id="" ></label>
     <p></p>
     <label class="btn btn-outline-light btn-sm"> 택배수령 <input type="radio" name="3" id="" ></label>
    </div>

<!-- 선택완료 버튼 -->
<section id="menu" class="menu section-bg">
  <div class="container" data-aos="fade-up">
    <div class="section-title" style="margin-top: 15px;">
      
      <!-- 결제화면으로 연결 -->
      <div><label for="" class="btn btn-outline-danger" style="margin-left: 50%;"><a href="3-2.payment.jsp">선택 완료</a></label></div>
    </div>

	<jsp:include page="/Footer.jsp"/>

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

 
  <!-- Template Main JS File -->
  <script src="<%=request.getContextPath() %>/assets/js/main.js"></script>

</body>

</html>
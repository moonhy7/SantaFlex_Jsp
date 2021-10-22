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


  <!-- ======= Menu Section .결제하기 ======= -->

  <section id="pay" class="pay section-bg">
    <div class="container" data-aos="fade-up">
      <div class="section-title" style="margin-top: 70px;">
        <h3>결제하기</h3>
      </div>
      <!-- 개인결제 혹은 같이결제 선택 -->
      <!-- santaone, santatoge -->
      <div class="santaone">
        <img src="<%=request.getContextPath() %>/assets/img/menu/santaone2.jpg" class="santa-img" alt="" 
        onclick="javascript:location.href='3-3.santaone.jsp';" style="cursor: pointer;" src="image url"
        onmouseover="this.src='<%=request.getContextPath() %>/assets/img/menu/santaone.jpg'" onmouseout="this.src='<%=request.getContextPath() %>/assets/img/menu/santaone2.jpg'"
        >
    
    
      </div>
      <div class="santatoge">
        <img src="<%=request.getContextPath() %>/assets/img/menu/santatoge2.jpg" class="santa-img" alt="" 
        onclick="javascript:location.href='3-4.santatoge.jsp';" style="cursor: pointer;" src="image url"
        onmouseover="this.src='<%=request.getContextPath() %>/assets/img/menu/santatoge.jpg'" onmouseout="this.src='<%=request.getContextPath() %>/assets/img/menu/santatoge2.jpg'"
        >
  
       
      </div>
      
      <div>
          <!-- 개인결제 선택 시 결제방법 선택 화면으로 -->
          <!-- 같이결제 선택 시 금액선택화면->결제방법 -->
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
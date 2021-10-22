<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="en">

<head>
 
  <!-- Template Main CSS File -->
  <link href="<%=request.getContextPath()%>/assets/css/style.css" rel="stylesheet">

  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/event_modify.css">
  <script src="<%=request.getContextPath()%>/assets/js/jquery-3.6.0.min.js"></script>
  <script>
    $(document).ready(function(){
      var $btn_content = $(".member-info");
      var $present_info = $(".present_info");

      $btn_content.mouseenter(function(){
        $present_info.css('display','block');
      });
      $btn_content.mouseleave(function(){
        $present_info.css('display','none');
      });

    })
  </script>
  <style>
    @font-face {
      font-family: 'ELAND_Choice_M';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts-20-12@1.0/ELAND_Choice_M.woff') format('woff');
      font-weight: normal;
      font-style: normal;
    }
    .chefs{
      font-family: 'ELAND_Choice_M';
    }
  </style>

</head>

<body>
	<jsp:include page="/Header.jsp"/>

  <!-- ======= Chefs Section ======= -->
  <section id="chefs" class="chefs">
    <div class="container" data-aos="fade-up">
      <div class="section-title" style="margin-top: 100px;">
        <h2>마이페이지</h2>
        <p>이벤트 보기</p>
      </div>

        <div data-aos="fade-up" id="friend_list">
			<!-- FAQ section -->
	<section id="events" class="events" style="margin-top: 100px">
		<div class="container" data-aos="fade-up">
		
		<h1><a href="7-3.event_list.do">이벤트 게시판</a></h1>
		<table border="1" width="1200">
		<tr>
			<th width="10%">이벤트이름</th>
			<th width="10%">이벤트 날짜</th>
			<th width="15%">초대장 받는 사람</th>
			<th width="15%">장소</th>
			<th width="30%">내용</th>
			<th width="20%">등록일</th>
		</tr>
		<c:forEach var="santa" items="${santas }">
			<tr>
				<td><a href="7-5.event_modify.do?name=${santa.name }">${santa.name}</a></td>
				<td>${santa.eventDate}</td>
				<td>${santa.receiver}</td>
				<td>${santa.location}</td>
				<td>${santa.content}</td>
				<td>${santa.regDate}</td>
			</tr>
		</c:forEach>
	</table>
	
	<div class="member-info">
       <div class="btn_content">
            <button class="btn_sujung"><a href="7-5.event_modify.do">수정</a></button>
            <button class="btn_delete"><a href="delete.do">삭제</a></button>
       </div>
     </div>
</div></section>
	<!-- end FAQ section -->

   	 </div>
        <div class="col-lg-2 col-md-6">
          <div class="member" data-aos="zoom-in" data-aos-delay="300">
          </div>
        </div>
      </div>
    </div>
  </section><!-- End Chefs Section -->
<jsp:include page="/Footer.jsp"/>


<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="<%=request.getContextPath()%>/assets/vendor/aos/aos.js"></script>
<script src="<%=request.getContextPath()%>/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/vendor/php-email-form/validate.js"></script>
<script src="<%=request.getContextPath()%>/assets/vendor/swiper/swiper-bundle.min.js"></script>

<!-- Template Main JS File -->
<script src="<%=request.getContextPath()%>/assets/js/main.js"></script>

</body>

</html>
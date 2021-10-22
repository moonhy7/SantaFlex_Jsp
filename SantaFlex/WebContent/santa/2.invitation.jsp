<%@ page import="santaflex.vo.Member" %>
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

  <!-- Template Main CSS File -->
  <link href="<%=request.getContextPath() %>/assets/css/style.css" rel="stylesheet">

</head>

<body>
	<jsp:include page="/Header.jsp"/>

      <!-- ======= Contact Section ======= --> <!--버튼이랑 아이콘 간격 늘리기-->
<%
	Object event = session.getAttribute("event");
%>
    
    <section id="contact" class="contact">
        <!-- ======= Gallery Section ======= -->
    <section id="gallery" class="gallery">

      <div class="container" data-aos="fade-up">
        <div class="section-title" style="margin-top: 100px;">
          <h2>Card</h2>
          <p>초대장 고르기</p>
        </div>
      </div>
      <div class="container-fluid" data-aos="fade-up" data-aos-delay="100">

        <div class="row g-0">

          <div class="col-lg-2 col-md-3">
            <div class="gallery-item">
              <a href="<%=request.getContextPath() %>/assets/img/invitation/01.png" class="gallery-lightbox" data-gall="gallery-item">
                <img src="<%=request.getContextPath() %>/assets/img/invitation/01.png" alt="" class="img-fluid">
               <a href="#Invitation" class="book-a-table-btn scrollto d-none d-lg-flex text-A">초대장1</a>
              </a>
            </div>
          </div>

          <div class="col-lg-2 col-md-4">
            <div class="gallery-item">
              <a href="<%=request.getContextPath() %>/assets/img/invitation/02.png" class="gallery-lightbox" data-gall="gallery-item">
                <img src="<%=request.getContextPath() %>/assets/img/invitation/02.png" alt="" class="img-fluid">
              <a href="#Invitation" class="book-a-table-btn scrollto d-none d-lg-flex" style="margin-top:20px;">초대장2</a>
              </a>
            </div>
          </div>

          <div class="col-lg-2 col-md-4">
            <div class="gallery-item">
              <a href="<%=request.getContextPath() %>/assets/img/invitation/03.png" class="gallery-lightbox" data-gall="gallery-item">
                <img src="<%=request.getContextPath() %>/assets/img/invitation/03.png" alt="" class="img-fluid">
              <a href="#Invitation" class="book-a-table-btn scrollto d-none d-lg-flex" style="margin-top:20px;">초대장3</a>
              </a>
            </div>
          </div>

          <div class="col-lg-2 col-md-4">
            <div class="gallery-item">
              <a href="<%=request.getContextPath() %>/assets/img/invitation/04.png" class="gallery-lightbox" data-gall="gallery-item">
                <img src="<%=request.getContextPath() %>/assets/img/invitation/04.png" alt="" class="img-fluid">
              <a href="#Invitation" class="book-a-table-btn scrollto d-none d-lg-flex" style="margin-top:20px;">초대장4</a>
              </a>
            </div>
          </div>

          <div class="col-lg-2 col-md-4">
            <div class="gallery-item">
              <a href="<%=request.getContextPath() %>/assets/img/invitation/05.png" class="gallery-lightbox" data-gall="gallery-item">
                <img src="<%=request.getContextPath() %>/assets/img/invitation/05.png" alt="" class="img-fluid">
              <a href="#Invitation" class="book-a-table-btn scrollto d-none d-lg-flex" style="margin-top:20px;">초대장5</a>
              </a>
            </div>
          </div>

          <div class="col-lg-2 col-md-4">
            <div class="gallery-item">
              <a href="<%=request.getContextPath() %>/assets/img/invitation/06.png" class="gallery-lightbox" data-gall="gallery-item">
                <img src="<%=request.getContextPath() %>/assets/img/invitation/06.png" alt="" class="img-fluid">
              <a href="#Invitation" class="book-a-table-btn scrollto d-none d-lg-flex" style="margin-top:20px;">초대장6</a>
              </a>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End Gallery Section -->


    <div class="container" data-aos="fade-up" id="Invitation">
      <div class="section-title" style="margin-top: 50px;">
        <h2>Invitation</h2>
        <p>초대장</p>
      </div>
    </div>
    <form action="/santa/2.invitation.do" method="post">
        
        <div class="container" data-aos="fade-up">
          
  
          <div class="row mt-5">
  
            <div class="col-lg-8">
              <div class="info">
              
                <div class="phone">
                   <!-- 밸류에 추가, 결 수정.. / regDate는 빼도됨 -->
                   <input type="hidden" placeholder="아이디" name="id" class="form-control" id="event_id" value="${Member.id }" required readonly>
                  <h4>초대자 :<br> <input style="" value="${Member.name }" required readonly></h4> 
                </div>
                
                <div class="address" style="margin-top: 50px;">
                   <h4>초대받는 사람들:<br><input type="text" placeholder="받는 사람들" name="receiver" class="" id="receiver"   required></h4>
                </div>
                
                <div class="address" style="margin-top: 50px;">
                  <h4>장소:<br><input type="text" name="location" class="" id="location" placeholder="장소"  required ></h4>
                </div>
  
                <div class="open-hours">
                  <i class="bi bi-clock"></i>
                  <h4>이벤트 날짜:<br></h4>
                    <p><input type="date" name="eventDate" style="background-color: rgb(50, 50, 50);"></p>
                </div>
                
                <div class="Invitation">
                  <i class="bi bi-envelope"></i>
                  <div class="form-group mt-4">
                    <h4>Invitation:</h4>
                      <input type="text" class="form-control" name="name" id="Invitation" style="margin-top: 50px;" placeholder="제목" required>
                  </div>
                    <div class="form-group mt-3">
                      <textarea class="form-control" name="content" rows="8" placeholder="Message" required></textarea>
                    </div>
                </div>
                    <div class="my-3">
                      <div class="loading"></div>
                      <div class="error-message"></div>
                    </div>
                    <div class="text-center">
                    	<input type="submit" value="초대장 보내기" style="color: black">	
                    		<!-- <a href="1.cart.jsp" style="color: white;"> -->
                    		
                    		<!-- </a> -->
                    	
                    </div>
              </div>
            </div>
          </div>
        </div>
    	</form>
      </section>
  
      <!-- End Contact Section -->





      <script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=ee0ea3541db40645c4d4e7d5659d2f98"></script>
      <script>
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
          mapOption = { 
          center: new kakao.maps.LatLng(37.499442020964196, 127.02903581467291), // 지도의 중심좌표
          level: 3 // 지도의 확대 레벨
          };

          var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

          // 마커가 표시될 위치입니다 
          var markerPosition  = new kakao.maps.LatLng(37.499442020964196, 127.02903581467291); 

        // 마커를 생성합니다
            var marker = new kakao.maps.Marker({
            position: markerPosition
            });

      // 마커가 지도 위에 표시되도록 설정합니다
      marker.setMap(map);

      // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
      // marker.setMap(null);    
      </script>
	<jsp:include page="/Footer.jsp"/>

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>


  <!-- Template Main JS File -->
  <script src="<%=request.getContextPath() %>/assets/js/main.js"></script>

</body>

</html>
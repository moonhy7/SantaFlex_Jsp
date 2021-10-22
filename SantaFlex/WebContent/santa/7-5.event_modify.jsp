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

    <div class="container" data-aos="fade-up" id="Invitation">
      <div class="section-title" style="margin-top: 50px;">
        <h2>Invitation</h2>
        <p>이벤트 수정</p>
      </div>
    </div>
    <form action="7-5.event_modify.do" method="post">
        <div class="container" data-aos="fade-up">
          <div class="row mt-5">
  
            <div class="col-lg-8">
              <div class="info">
              
              <div class="Invitation">
                  <i class="bi bi-envelope"></i>
                  <div class="form-group mt-4">
                    <h4>초대장 정보</h4></div></div>

              
              
              
                <div class="phone">
                   <!-- 밸류에 추가, 결 수정.. / regDate는 빼도됨 -->
                   <input type="hidden" placeholder="아이디" name="id" class="form-control" id="event_id" style="margin-top: 50px;" value="${Member.id }" required readonly>
                  <h4>초대자 :<br><input style="" value="${Member.name }" required readonly></h4> 
                </div>
                
                <div class="address" style="margin-top: 50px;">
                   <h4>초대받는 사람들:<br><input value="${santa.receiver }"></h4>
                </div>
                
                <div class="address" style="margin-top: 50px;">
                  <h4>장소:<br><input value="${santa.location }"></h4>
                </div>
  
                <div class="open-hours">
                  <i class="bi bi-clock"></i>
                  <h4>이벤트 날짜:<br></h4>
                    <p><input value="${santa.eventDate }"></p>
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
     
                   <div style="margin-left: 150px">
				      	<input type="submit" value="저장">
				      	<input type="button" value="삭제" onclick="location.href='delete.do?no=${santa.name}'">
				      	<input type="button" value="취소" onclick="location.href='7-3.event_list.do'">
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
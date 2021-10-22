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

	<!-- Nucleo Icons -->
  <link href="<%=request.getContextPath()%>/assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="<%=request.getContextPath()%>/assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <link href="<%=request.getContextPath()%>/assets/css/nucleo-svg.css" rel="stylesheet" />
 <!--     Fonts and icons     -->
 <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />

  <!-- Favicons -->
  <link href="<%=request.getContextPath()%>/assets/img/icon.png" rel="icon">
  <link href="<%=request.getContextPath()%>/assets/img/icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="<%=request.getContextPath()%>/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="<%=request.getContextPath()%>/assets/css/style.css" rel="stylesheet">


<!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
  <!-- Nucleo Icons -->
  <link href="<%=request.getContextPath()%>/assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="<%=request.getContextPath()%>/assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <link href="<%=request.getContextPath()%>/assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- CSS Files -->
  <%-- <link id="pagestyle" href="<%=request.getContextPath()%>/assets/css/soft-ui-dashboard.css?v=1.0.3" rel="stylesheet" /> --%>

  <style>
    @font-face {
      font-family: 'paybooc-Bold';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/paybooc-Bold.woff') format('woff');
      font-weight: normal;
      font-style: normal;
    }
    .login-container{
      font-family: 'paybooc-Bold';
    }
    .card{
      background-color: bisque;
    }
    .list-group-item{
      background-color:rgba(192, 53, 43, 0.1);
    }
  </style>
</head>

<body>
	<jsp:include page="/Header.jsp"/>

  <!--profile-->
<div class="container login-container" data-aos="fade-up">
  <div class="col-12" style="border-radius: 15px; background-color: rgba(192, 53, 43, 0.6);">
      <div class="page-header min-height-300 border-radius-xl mt-4" style="background-image: url('<%=request.getContextPath() %>/assets/img/curved-images/curved0.jpg'); background-position-y: 50%;">
        <span class="mask bg-gradient-primary opacity-6"></span>
      </div>
  <div>
    <div class="row gx-4" style="margin-top:200px;">
      <div class="col-auto">
        <div class="avatar avatar-xl position-relative">
          <img src="<%=request.getContextPath() %>/assets/img/kd.png" alt="profile_image" class="w-100 border-radius-lg shadow-sm" width="200px" height="200px" style="border-radius: 15px; margin:10px;">
        </div>
      </div>
      <div class="col-auto my-auto">
        <div class="h-100">
          <h2 class="mb-1">
             ${Member.name }
          </h2>
         
        </div>
      </div>
    </div>
  </div>
 </div>
 <div class="container-fluid py-4">
  <div class="row py-2">
    <div class="col-12 col-xl-6">
      <div class="card h-100">
        <div class="card-header pb-0 p-3">
          <h6 class="mb-0" style="color:black">계정 설정</h6>
        </div>
        <div class="card-body p-3">
          <h6 class="text-uppercase text-body text-xs font-weight-bolder">계정</h6>
          <ul class="list-group" >
            <li class="list-group-item border-0 px-0">
              <div class="form-check form-switch ps-0">
                <input class="form-check-input ms-auto" type="checkbox" id="flexSwitchCheckDefault" checked>
                <label class="form-check-label text-body ms-3 text-truncate w-80 mb-0" for="flexSwitchCheckDefault">팔로워에게만 메세지 받기</label>
              </div>
            </li>
            <li class="list-group-item border-0 px-0">
              <div class="form-check form-switch ps-0">
                <input class="form-check-input ms-auto" type="checkbox" id="flexSwitchCheckDefault1">
                <label class="form-check-label text-body ms-3 text-truncate w-80 mb-0" for="flexSwitchCheckDefault1">계정 비활성화</label>
              </div>
            </li>
            <li class="list-group-item border-0 px-0">
              <div class="form-check form-switch ps-0">
                <input class="form-check-input ms-auto" type="checkbox" id="flexSwitchCheckDefault2" checked>
                <label class="form-check-label text-body ms-3 text-truncate w-80 mb-0" for="flexSwitchCheckDefault2">비공개 계정</label>
              </div>
            </li>
          </ul>
          <h6 class="text-uppercase text-body text-xs font-weight-bolder mt-4">알람</h6>
          <ul class="list-group">
            <li class="list-group-item border-0 px-0">
              <div class="form-check form-switch ps-0">
                <input class="form-check-input ms-auto" type="checkbox" id="flexSwitchCheckDefault3">
                <label class="form-check-label text-body ms-3 text-truncate w-80 mb-0" for="flexSwitchCheckDefault3">친구가 이벤트를 생성하면 알림</label>
              </div>
            </li>
            <li class="list-group-item border-0 px-0">
              <div class="form-check form-switch ps-0">
                <input class="form-check-input ms-auto" type="checkbox" id="flexSwitchCheckDefault4" checked>
                <label class="form-check-label text-body ms-3 text-truncate w-80 mb-0" for="flexSwitchCheckDefault4">선물을 받게되면 알림</label>
              </div>
            </li>
            <li class="list-group-item border-0 px-0 pb-0">
              <div class="form-check form-switch ps-0">
                <input class="form-check-input ms-auto" type="checkbox" id="flexSwitchCheckDefault5">
                <label class="form-check-label text-body ms-3 text-truncate w-80 mb-0" for="flexSwitchCheckDefault5">전체 알림</label>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="col-12 col-xl-6">
      <div class="card h-100">
        <div class="card-header pb-0 p-3">
          <div class="row">
            <div class="col-md-8 d-flex align-items-center">
              <h6 class="mb-0"  style="color:black">내 정보</h6>
            </div>
            <div class="col-md-4 text-end">
              <a href="javascript:;">
                <i class="fas fa-user-edit text-secondary text-sm" data-bs-toggle="tooltip" data-bs-placement="top" title="Edit Profile"></i>
              </a>
            </div>
          </div>
        </div>
        <div class="card-body p-3">
          <p class="text-sm" style="color:black">
            안녕하세요 저는 돈이 갖고싶습니다.
          </p>
          <hr class="horizontal gray-light my-4">
          <ul class="list-group">
            <li class="list-group-item border-0 ps-0 pt-0 text-sm"><strong class="text-dark">Id : </strong> ${Member.id }</li>
            <li class="list-group-item border-0 ps-0 text-sm"><strong class="text-dark">Mobile : </strong> ${Member.tel }</li>
            <li class="list-group-item border-0 ps-0 text-sm"><strong class="text-dark">Email : </strong> ${Member.email }</li>
            <li class="list-group-item border-0 ps-0 text-sm"><strong class="text-dark">Location : </strong> ${Member.address }</li>
            <li class="list-group-item border-0 ps-0 pb-0" style="color:black">
              <strong class="text-dark text-sm">Social :</strong> &nbsp;
              <a class="btn btn-facebook btn-simple mb-0 ps-1 pe-2 py-0" href="javascript:;">
                <i class="fab fa-facebook fa-lg"></i>
              </a>
              <a class="btn btn-twitter btn-simple mb-0 ps-1 pe-2 py-0" href="javascript:;">
                <i class="fab fa-twitter fa-lg"></i>
              </a>
              <a class="btn btn-instagram btn-simple mb-0 ps-1 pe-2 py-0" href="javascript:;">
                <i class="fab fa-instagram fa-lg"></i>
              </a>
            </li><br>
            <li>
            	<div class="btn_content" style='margin-left: 300px'>
		            <button class="btn_sujung"><a href="7-2.member_modify.do">수정</a></button>
       			</div>
            </li>
           
          </ul>
        </div>
      </div>
    </div>
</div>
    
	<jsp:include page="/Footer.jsp"/>

<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!--   Core JS Files   -->
<script src="<%=request.getContextPath() %>/assets/js/core/popper.min.js"></script>
<script src="<%=request.getContextPath() %>/assets/js/core/bootstrap.min.js"></script>
<script src="<%=request.getContextPath() %>/assets/js/plugins/perfect-scrollbar.min.js"></script>
<script src="<%=request.getContextPath() %>/assets/js/plugins/smooth-scrollbar.min.js"></script>

<!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
<script src="<%=request.getContextPath() %>/assets/js/soft-ui-dashboard.min.js?v=1.0.3"></script>

<!-- Vendor JS Files -->
<script src="<%=request.getContextPath() %>/assets/vendor/aos/aos.js"></script>
<script src="<%=request.getContextPath() %>/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="<%=request.getContextPath() %>/assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="<%=request.getContextPath() %>/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="<%=request.getContextPath() %>/assets/vendor/php-email-form/validate.js"></script>
<script src="<%=request.getContextPath() %>/assets/vendor/swiper/swiper-bundle.min.js"></script>

<!-- Template Main JS File -->
<script src="<%=request.getContextPath() %>/assets/js/main.js"></script>

</body>

</html>
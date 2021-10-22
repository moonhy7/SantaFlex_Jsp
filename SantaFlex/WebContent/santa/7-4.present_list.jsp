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


  <link href="<%=request.getContextPath() %>/assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="<%=request.getContextPath() %>/assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <link href="<%=request.getContextPath() %>/assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link id="pagestyle" href="<%=request.getContextPath() %>/assets/css/soft-ui-dashboard.css?v=1.0.3" rel="stylesheet" />
  <style>
    body {
      background-color: black;
    }
  </style>

</head>

<body>
	<jsp:include page="/Header.jsp"/>


  <!-- ======= 선물 내역 페이지 Section ======= -->
  <section id="why-us" class="why-us bg-dark">
    <div class="container" data-aos="fade-up">

      <div class="section-title" style="margin-top: 100px;">
        <h2>선물 내역 보기</h2>
        <p>친구들과 주고 받은 선물을 한 눈에 확인하기</p>
      </div>

      <div class="row">
        <a class="nav-link scrollto" href="#give_sent">
        <div class="col-lg-4">
          <div class="box" data-aos="zoom-in" data-aos-delay="100">
            <span>01</span>
            <h4>내가 보낸 선물</h4>
            <p>내가 친구들한테 보낸 선물 내역을 확인해보세요.</p>
          </div>
        </a>
        </div>

        <div class="col-lg-4 mt-4 mt-lg-0">
          <a class="nav-link scrollto" href="#receive_sent">
          <div class="box" data-aos="zoom-in" data-aos-delay="200">
            <span>02</span>
            <h4>내가 받은 선물</h4>
            <p>내가 친구들한테 받은 선물 내역을 확인해보세요.</p>
          </div>
        </a>
        </div>

        <div class="col-lg-4 mt-4 mt-lg-0">
          <a class="nav-link scrollto" href="#friend_list">
          <div class="box" data-aos="zoom-in" data-aos-delay="300">
            <span>03</span>
            <h4>선물을 주고 받은 친구 목록</h4>
            <p>선물을 주고 받은 친구 목록을 확인해보세요.</p>
          </div>
        </a>
        </div>

      </div>

    </div>
  </section><!-- End Why Us Section -->

  <!-- 내가 보낸 선물 section -->
  <div class="container" data-aos="fade-up" id="give_sent" style="margin-top: 100px">
  <div class="col-12 mt-4" >
    <div class="card mb-4">
      <div class="section-title">
        <p style="margin: 20px; color: black;">내가 보낸 선물</p>
      </div>
      <div class="card-body p-3">
        <div class="row">
          <div class="col-xl-4 col-md-6 mb-xl-0 mb-4">
            <div class="card card-blog card-plain">
              <div class="position-relative">
                <a class="d-block shadow-xl border-radius-xl">
                  <img src="<%=request.getContextPath() %>/assets/img/menu/tbb.jpg" alt="img-blur-shadow" class="img-fluid shadow border-radius-xl">
                </a>
              </div>
              <div class="card-body px-1 pb-0">
                  <h5>
                    마카롱
                  </h5>
                </a>
                <div class="d-flex align-items-center justify-content-between">
                  <button type="button" class="btn btn-outline-primary btn-sm mb-0">배송중</button>
                  <div class="avatar-group mt-2">
                    <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Elena Morison">
                      <img alt="Image placeholder" src="<%=request.getContextPath() %>/assets/img/team-1.jpg">
                    </a>
                    <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Ryan Milly">
                      <img alt="Image placeholder" src="<%=request.getContextPath() %>/assets/img/team-2.jpg">
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-4 col-md-6 mb-xl-0 mb-4">
            <div class="card card-blog card-plain">
              <div class="position-relative">
                <a class="d-block shadow-xl border-radius-xl">
                  <img src="<%=request.getContextPath() %>/assets/img/menu/odense.jpg" alt="img-blur-shadow" class="img-fluid shadow border-radius-lg">
                </a>
              </div>
              <div class="card-body px-1 pb-0">
                  <h5>
                    그릇 세트
                  </h5>
                </a>
                <div class="d-flex align-items-center justify-content-between">
                  <button type="button" class="btn btn-outline-dark btn-sm mb-0">배송완료</button>
                  <div class="avatar-group mt-2">
                    <!-- <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Nick Daniel">
                      <img alt="Image placeholder" src="<%=request.getContextPath() %>/assets/img/team-3.jpg">
                    </a> -->
                    <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Peterson">
                      <img alt="Image placeholder" src="<%=request.getContextPath() %>/assets/img/team-4.jpg">
                    </a>
                    <!-- <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Elena Morison">
                      <img alt="Image placeholder" src="<%=request.getContextPath() %>/assets/img/team-1.jpg">
                    </a>
                    <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Ryan Milly">
                      <img alt="Image placeholder" src="<%=request.getContextPath() %>/assets/img/team-2.jpg">
                    </a> -->
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-4 col-md-6 mb-xl-0 mb-4">
            <div class="card card-blog card-plain">
              <div class="position-relative">
                <a class="d-block shadow-xl border-radius-xl">
                  <img src="<%=request.getContextPath() %>/assets/img/menu/mille.jpg" alt="img-blur-shadow" class="img-fluid shadow border-radius-xl">
                </a>
              </div>
              <div class="card-body px-1 pb-0">
                  <h5>
                    식기 세척기
                  </h5>
                </a>
                <div class="d-flex align-items-center justify-content-between">
                  <button type="button" class="btn btn-outline-dark btn-sm mb-0">배송완료</button>
                  <div class="avatar-group mt-2">
                    <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Peterson">
                      <img alt="Image placeholder" src="<%=request.getContextPath() %>/assets/img/team-4.jpg">
                    </a>
                    <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Nick Daniel">
                      <img alt="Image placeholder" src="<%=request.getContextPath() %>/assets/img/team-3.jpg">
                    </a>
                    <!-- <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Ryan Milly">
                      <img alt="Image placeholder" src="<%=request.getContextPath() %>/assets/img/team-2.jpg">
                    </a>
                    <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Elena Morison">
                      <img alt="Image placeholder" src="<%=request.getContextPath() %>/assets/img/team-1.jpg">
                    </a> -->
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div><!-- end 내가 보낸 선물 section -->



  <!-- 내가 받은 선물 section -->
  <div class="container" data-aos="fade-up" id="receive_sent" style="margin-top: 100px">
    <div class="col-12 mt-4">
      <div class="card mb-4">
        <div class="section-title">
          <p style="margin: 20px; color: black;">내가 받은 선물</p>
        </div>
        <div class="card-body p-3">
          <div class="row">
            <div class="col-xl-4 col-md-6 mb-xl-0 mb-4">
              <div class="card card-blog card-plain">
                <div class="position-relative">
                  <a class="d-block shadow-xl border-radius-xl">
                    <img src="<%=request.getContextPath() %>/assets/img/menu/airfrier.jpg" alt="img-blur-shadow" class="img-fluid shadow border-radius-xl">
                  </a>
                </div>
                <div class="card-body px-1 pb-0">
                    <h5>
                      에어프라이어
                    </h5>
                  </a>
                  <div class="d-flex align-items-center justify-content-between">
                    <button type="button" class="btn btn-outline-primary btn-sm mb-0">배송중</button>
                    <div class="avatar-group mt-2">
                      <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Elena Morison">
                        <img alt="Image placeholder" src="<%=request.getContextPath() %>/assets/img/team-1.jpg">
                      </a>
                      <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Ryan Milly">
                        <img alt="Image placeholder" src="<%=request.getContextPath() %>/assets/img/team-2.jpg">
                      </a>
                      <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Nick Daniel">
                        <img alt="Image placeholder" src="<%=request.getContextPath() %>/assets/img/team-3.jpg">
                      </a>
                      <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Peterson">
                        <img alt="Image placeholder" src="<%=request.getContextPath() %>/assets/img/team-4.jpg">
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-4 col-md-6 mb-xl-0 mb-4">
              <div class="card card-blog card-plain">
                <div class="position-relative">
                  <a class="d-block shadow-xl border-radius-xl">
                    <img src="<%=request.getContextPath() %>/assets/img/menu/loboten.jpg" alt="img-blur-shadow" class="img-fluid shadow border-radius-lg">
                  </a>
                </div>
                <div class="card-body px-1 pb-0">
                    <h5>
                      탁자
                    </h5>
                  </a>
                  <div class="d-flex align-items-center justify-content-between">
                    <button type="button" class="btn btn-outline-primary btn-sm mb-0">배송중</button>
                    <div class="avatar-group mt-2">
                      <!-- <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Nick Daniel">
                        <img alt="Image placeholder" src="<%=request.getContextPath() %>/assets/img/team-3.jpg">
                      </a> -->
                      <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Peterson">
                        <img alt="Image placeholder" src="<%=request.getContextPath() %>/assets/img/team-4.jpg">
                      </a>
                      <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Elena Morison">
                        <img alt="Image placeholder" src="<%=request.getContextPath() %>/assets/img/team-1.jpg">
                      </a>
                      <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Ryan Milly">
                        <img alt="Image placeholder" src="<%=request.getContextPath() %>/assets/img/team-2.jpg">
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-4 col-md-6 mb-xl-0 mb-4">
              <div class="card card-blog card-plain">
                <div class="position-relative">
                  <a class="d-block shadow-xl border-radius-xl">
                    <img src="<%=request.getContextPath() %>/assets/img/menu/cake.jpg" alt="img-blur-shadow" class="img-fluid shadow border-radius-xl">
                  </a>
                </div>
                <div class="card-body px-1 pb-0">
                    <h5>
                      수저 세트
                    </h5>
                  </a>
                  <div class="d-flex align-items-center justify-content-between">
                    <button type="button" class="btn btn-outline-dark btn-sm mb-0">배송완료</button>
                    <div class="avatar-group mt-2">
                      <!-- <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Peterson">
                        <img alt="Image placeholder" src="<%=request.getContextPath() %>/assets/img/team-4.jpg">
                      </a>
                      <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Nick Daniel">
                        <img alt="Image placeholder" src="<%=request.getContextPath() %>/assets/img/team-3.jpg">
                      </a> -->
                      <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Ryan Milly">
                        <img alt="Image placeholder" src="<%=request.getContextPath() %>/assets/img/team-2.jpg">
                      </a>
                      <!-- <a href="javascript:;" class="avatar avatar-xs rounded-circle" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Elena Morison">
                        <img alt="Image placeholder" src="<%=request.getContextPath() %>/assets/img/team-1.jpg">
                      </a> -->
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div><!-- end 내가 받은 선물 section -->




<!-- 선물을 주고 받은 친구 목록 section -->
<div class="container" data-aos="fade-up" id="friend_list" style="margin-top: 100px">
  <div class="col-12 mt-4" >
    <div class="card mb-4">
      <div class="section-title">
        <p style="margin: 20px; color: black;">선물을 주고 받은 친구 목록</p>
      </div>

      <div class="card card-body border-light shadow-sm table-wrapper table-responsive pt-0" style="background-color: rgba(250, 250, 250, 0.9);">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th style="text-align:center;">번호</th>
                    <th>성함</th>						
                    <th>날짜</th>
                    <th>선물 목록</th>
                    <th>금액</th>
                </tr>
            </thead>
            <tbody>
                <!-- Item -->
                <tr>
                    <td style="text-align:center;">1</td>
                    <td>
                      <div class="avatar me-3">
                        <img src="<%=request.getContextPath() %>/assets/img/people/kk.png" alt="" class="border-radius-lg shadow chat-img">
                        <p style="color: gray; margin: 30px;">결</p>
                      </div>
                    </td>
                    <td>2021년 8월 25일</td>                        
                    <td>수저 세트</td>
                    <td>30,000원</td>
                </tr>
                <!-- Item -->
                <tr>
                  <td style="text-align:center;">2</td>
                  <td>
                    <div class="avatar me-3">
                      <img src="<%=request.getContextPath() %>/assets/img/people/hj.png" alt="" class="border-radius-lg shadow chat-img">
                      <p style="color: gray; margin: 30px;">혜지</p>
                    </div>
                  </td>
                  <td>2021년 8월 29일</td>                        
                  <td>탁자</td>
                  <td>25,000원</td>
              </tr>
                <!-- Item -->
                <tr>
                  <td style="text-align:center;">3</td>
                  <td>
                    <div class="avatar me-3">
                      <img src="<%=request.getContextPath() %>/assets/img/people/hy.png" alt="" class="border-radius-lg shadow chat-img">
                      <p style="color: gray; margin: 30px;">하윤</p>
                    </div>
                  </td>
                  <td>2021년 9월 12일</td>                        
                  <td>식기 세척기</td>
                  <td>10,000원</td>
              </tr>
                <!-- Item -->
                <tr>
                  <td style="text-align:center;">4</td>
                  <td>
                    <div class="avatar me-3">
                      <img src="<%=request.getContextPath() %>/assets/img/people/cw.png" alt="" class="border-radius-lg shadow chat-img">
                      <p style="color: gray; margin: 30px;">철우</p>
                    </div>
                  </td>
                  <td>2021년 9월 19일</td>                        
                  <td>그릇 세트</td>
                  <td>20,000원</td>
              </tr>
                <!-- Item -->
                <tr>
                  <td style="text-align:center;">5</td>
                  <td>
                    <div class="avatar me-3">
                      <img src="<%=request.getContextPath() %>/assets/img/people/dl.png" alt="" class="border-radius-lg shadow chat-img">
                      <p style="color: gray; margin: 30px;">둘리</p>
                    </div>
                  </td>
                  <td>2021년 9월 30일</td>                        
                  <td>마카롱</td>
                  <td>7,000원</td>
              </tr>       
            </tbody>
        </table>


        <div class="card-footer px-3 border-0 d-flex align-items-center justify-content-center"> 
            <nav aria-label="Page navigation example">
                <ul class="pagination mb-0">
                    <li class="page-item">
                        <a class="page-link" href="#">Pre</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">1</a>
                    </li>
                    <li class="page-item active">
                        <a class="page-link" href="#">2</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">3</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">4</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">5</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link" href="#">Next</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    </div>
  </div>
</div>
      
  
<jsp:include page="/Footer.jsp"/>

<div id="loader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!--   Core JS Files   -->
<script src="<%=request.getContextPath() %>/assets/js/core/popper.min.js"></script>
<script src="<%=request.getContextPath() %>/assets/js/core/bootstrap.min.js"></script>
<script src="<%=request.getContextPath() %>/assets/js/plugins/perfect-scrollbar.min.js"></script>
<script src="<%=request.getContextPath() %>/assets/js/plugins/smooth-scrollbar.min.js"></script>
<script>
  var win = navigator.platform.indexOf('Win') > -1;
  if (win && document.querySelector('#sidenav-scrollbar')) {
    var options = {
      damping: '0.5'
    }
    Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
  }
</script>



<!-- Template Main JS File -->
<script src="<%=request.getContextPath() %>/assets/js/main.js"></script>

</body>

</html>
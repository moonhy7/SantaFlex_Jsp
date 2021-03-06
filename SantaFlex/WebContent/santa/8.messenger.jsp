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

  <!-- Favicons -->
  <link href="assets/img/icon.png" rel="icon">
  <link href="assets/img/icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Restaurantly - v3.1.0
  * Template URL: https://bootstrapmade.com/restaurantly-restaurant-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  <script src="assets/js/jquery-3.6.0.min.js"></script>
  

</head>

<body>	
	<jsp:include page="/Header.jsp"/>

  <script>
    function kkdisplay() {
      $('#kk-chat').show();
    }
    function hjdisplay() {
      $('#hj-chat').show();
    }
    function hydisplay() {
      $('#hy-chat').show();
    }
    function cwdisplay() {
      $('#cw-chat').show();
    }
    function hjoffdisplay() {
      $('#kk-chat, #hy-chat, #cw-chat').hide();
    }
    function hyoffdisplay() {
      $('#kk-chat, #hj-chat, #cw-chat').hide();
    }
    function kkoffdisplay() {
      $('#hy-chat, #hj-chat, #cw-chat').hide();
    }
    function cwoffdisplay() {
      $('#hy-chat, #hj-chat, #kk-chat').hide();
    }
  </script>






  <div class="container">
    <div class="row">
      <div class="col-6 col-sm-4">
        <section class="col-6 chat" data-aos="fade-up" style="margin-top: 20%; margin-left: 10%; width: 500px;" >
    <div class="card h-100">
      <div class="card-header col-6 pb-0 p-3">
        <h6 class="mb-0 chat-send">?????? ????????? ?????????</h6>
      </div>
      <div class="card-body p-3">
        <ul class="list-group">
          <li class="list-group-item border-0 d-flex align-items-center px-0 mb-2">
            <div class="avatar me-3">
              <img src="assets/img/people/kk.png" alt="" class="border-radius-lg shadow chat-img" >
            </div>
            <div class="d-flex align-items-start flex-column justify-content-center">
              <h6 class="mb-0 text-sm">??????</h6>
              <p class="mb-0 text-xs">???????????????</p>
            </div>
            <a class="btn btn-link pe-3 ps-0 mb-0 ms-auto" onclick="kkdisplay(), kkoffdisplay()" >?????????</a>
          </li>
          <li class="list-group-item border-0 d-flex align-items-center px-0 mb-2">
            <div class="avatar me-3">
              <img src="assets/img//people/hj.png" alt="kal" class="border-radius-lg shadow chat-img">
            </div>
            <div class="d-flex align-items-start flex-column justify-content-center">
              <h6 class="mb-0 text-sm">?????????</h6>
              <p class="mb-0 text-xs">Hi :D</p>
            </div>
            <a class="btn btn-link pe-3 ps-0 mb-0 ms-auto" onclick="hjdisplay(), hjoffdisplay()">?????????</a>
          </li>
          <li class="list-group-item border-0 d-flex align-items-center px-0 mb-2">
            <div class="avatar me-3">
              <img src="assets/img/people/hy.png" alt="kal" class="border-radius-lg shadow chat-img">
            </div>
            <div class="d-flex align-items-start flex-column justify-content-center">
              <h6 class="mb-0 text-sm">?????????</h6>
              <p class="mb-0 text-xs">Hello :)</p>
            </div>
            <a class="btn btn-link pe-3 ps-0 mb-0 ms-auto" onclick="hydisplay(), hyoffdisplay()">?????????</a>
          </li>
          <li class="list-group-item border-0 d-flex align-items-center px-0 mb-2">
            <div class="avatar me-3">
              <img src="assets/img/people/cw.png" alt="kal" class="border-radius-lg shadow chat-img">
            </div>
            <div class="d-flex align-items-start flex-column justify-content-center">
              <h6 class="mb-0 text-sm">?????????</h6>
              <p class="mb-0 text-xs">Hello world!</p>
            </div>
            <a class="btn btn-link pe-3 ps-0 mb-0 ms-auto" href="javascript:;" onclick="cwdisplay(), cwoffdisplay()">?????????</a>
          </li>
          <li class="list-group-item border-0 d-flex align-items-center px-0">
            <div class="avatar me-3">
              <img src="assets/img/people/dl.png" alt="kal" class="border-radius-lg shadow chat-img">
            </div>
            <div class="d-flex align-items-start flex-column justify-content-center">
              <h6 class="mb-0 text-sm">??????</h6>
              <p class="mb-0 text-xs">??????</p>
            </div>
            <a class="btn btn-link pe-3 ps-0 mb-0 ms-auto" href="javascript:;">?????????</a>
          </li>
        </ul>
      </div>
    </div>
  </section>
  </div>
      <div class="col-md-6">
        <div class="messenger page-content page-container" id="kk-chat" data-aos="fade-up" style="margin-top: 17%; margin-left: 20%; width: 500px; display: none;">
          <div class="padding" style="padding: 0%; margin: 0%;">
              <div class=" container d-flex justify-content-center">
                <div>
                  <!-- <div class="col-md-6"> -->
                      <div class="card card-bordered">
                          <div class="card-header">
                              <h4 class="card-title"><strong>Chat</strong></h4> <a class="btn btn-xs btn-secondary" href="#" data-abc="true">Let's Chat App</a>
                          </div>
                          <div class="ps-container ps-theme-default ps-active-y" id="chat-content" style="overflow-y: scroll !important; height:400px !important;">
                              <div class="media media-chat"> <img class="avatar" src="assets/img/people/kk.png" alt="...">
                                  <div class="media-body">
                                      <p></p>
                                      <p>??????????????????</p>
                                      <p>24??? ???????????? ?????????????<br>?????? ?????? ???????????</p>
                                      <p class="meta"><time datetime="2018">23:58</time></p>
                                  </div>
                              </div>
                              <div class="media media-meta-day">Today</div>
                              <div class="media media-chat media-chat-reverse">
                                  <div class="media-body">
                                      <p>??????~</p>
                                      <p>?????? ????????? ?????????</p>
                                      <p>?????? ???????????????! ?????? ?????????. ???????????? ????????????.</p>
                                      <p class="meta"><time datetime="2018">00:06</time></p>
                                  </div>
                              </div>
                              <div class="media media-chat"> <img class="avatar" src="assets/img/people/kk.png" alt="...">
                                  <div class="media-body">
                                      <p>??????</p>
                                      <p>???????????? ??????????? </p>
                                      <p class="meta"><time datetime="2018">00:07</time></p>
                                  </div>
                              </div>
                              <div class="media media-chat media-chat-reverse">
                                  <div class="media-body">
                                      <p>awesome!</p>
                                      <p>?????????????????? 11?????? ?????????</p>
                                      <p>???????</p>
                                      <p class="meta"><time datetime="2018">00:09</time></p>
                                  </div>
                              </div>
                              <div class="media media-chat"> <img class="avatar" src="assets/img/people/kk.png" alt="...">
                                  <div class="media-body">
                                      <p>?????? ?????????????????? ????????? </p>
                                      <p class="meta"><time datetime="2018">00:10</time></p>
                                  </div>
                              </div>
                              <div class="media media-chat media-chat-reverse">
                                  <div class="media-body">
                                      <p>??? ?????? ????????? ?????? ???????</p>
                                      <p class="meta"><time datetime="2018">00:10</time></p>
                                  </div>
                              </div>
                              <div class="media media-chat"> <img class="avatar" src="assets/img/people/kk.png" alt="...">
                                  <div class="media-body">
                                      <p>?????? ??? ??????. ???????????? ?????????????????????.</p>
                                      <p class="meta"><time datetime="2018">00:12</time></p>
                                  </div>
                              </div>
                              <div class="media media-chat media-chat-reverse">
                                  <div class="media-body">
                                      <p>????????? ?????????!!???????????? ??????</p>
                                      <p class="meta"><time datetime="2018">00:12</time></p>
                                  </div>
                              </div>
                              <div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 0px;">
                                  <div class="ps-scrollbar-x" tabindex="0" style="left: 0px; width: 0px;"></div>
                              </div>
                              <div class="ps-scrollbar-y-rail" style="top: 0px; height: 0px; right: 2px;">
                                  <div class="ps-scrollbar-y" tabindex="0" style="top: 0px; height: 2px;"></div>
                              </div>
                          </div>
                          <div class="publisher bt-1 border-light"> <img class="avatar avatar-xs" src="assets/img/people/kk.png" alt="..."> <input class="publisher-input" type="text" placeholder="Write something"> <span class="publisher-btn file-group"> <i class="fa fa-paperclip file-browser"></i> <input type="file"> </span> <a class="publisher-btn" href="#" data-abc="true"><i class="fa fa-smile"></i></a> <a class="publisher-btn text-info" href="#" data-abc="true"><i class="fa fa-paper-plane"></i></a> </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>  
    <div class="messenger page-content page-container" id="hj-chat" data-aos="fade-up" style="margin-top: 17%; margin-left: 20%; width: 500px; display: none;">
    <div class="padding" style="padding: 0%; margin: 0%;">
        <div class=" container d-flex justify-content-center">
          <div>
            <!-- <div class="col-md-6"> -->
                <div class="card card-bordered">
                    <div class="card-header">
                        <h4 class="card-title"><strong>Chat</strong></h4> <a class="btn btn-xs btn-secondary" href="#" data-abc="true">Let's Chat App</a>
                    </div>
                    <div class="ps-container ps-theme-default ps-active-y" id="chat-content" style="overflow-y: scroll !important; height:400px !important;">
                        <div class="media media-chat"> <img class="avatar" src="assets/img/people/hj.png" alt="...">
                            <div class="media-body">
                                <p>????????????</p>
                                <p>????????? ...???</p>
                                <p>?????????????<br> ???????????? ???????</p>
                                <p class="meta"><time datetime="2018">23:58</time></p>
                            </div>
                        </div>
                        <div class="media media-meta-day">Today</div>
                        <div class="media media-chat media-chat-reverse">
                            <div class="media-body">
                                <p>??????</p>
                                <p>?????? ?????????????</p>
                                <p>???????????????! ?????? ???????????? ?????? ?????????..</p>
                                <p class="meta"><time datetime="2018">00:06</time></p>
                            </div>
                        </div>
                        <div class="media media-chat"> <img class="avatar" src="assets/img/people/hj.png" alt="...">
                            <div class="media-body">
                                <p>????????????</p>
                                <p>?????? ?????????? </p>
                                <p class="meta"><time datetime="2018">00:07</time></p>
                            </div>
                        </div>
                        <div class="media media-chat media-chat-reverse">
                            <div class="media-body">
                                <p>???????????????</p>
                                <p>?????? ?????? 8?????? 9?????? ?????? ????????? ?????????</p>
                                <p>?????? ??????????</p>
                                <p class="meta"><time datetime="2018">00:09</time></p>
                            </div>
                        </div>
                        <div class="media media-chat"> <img class="avatar" src="assets/img/people/hj.png" alt="...">
                            <div class="media-body">
                                <p>?????? ?????????????????? ????????? ??? ????????? </p>
                                <p class="meta"><time datetime="2018">00:10</time></p>
                            </div>
                        </div>
                        <div class="media media-chat media-chat-reverse">
                            <div class="media-body">
                                <p>?????? 8?????? ?????? ???????</p>
                                <p class="meta"><time datetime="2018">00:10</time></p>
                            </div>
                        </div>
                        <div class="media media-chat"> <img class="avatar" src="assets/img/people/hj.png" alt="...">
                            <div class="media-body">
                                <p>??????.</p>
                                <p class="meta"><time datetime="2018">00:12</time></p>
                            </div>
                        </div>
                        <div class="media media-chat media-chat-reverse">
                            <div class="media-body">
                                <p>??????!?????? ?????? ????????????!</p>
                                <p class="meta"><time datetime="2018">00:12</time></p>
                            </div>
                        </div>
                        <div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 0px;">
                            <div class="ps-scrollbar-x" tabindex="0" style="left: 0px; width: 0px;"></div>
                        </div>
                        <div class="ps-scrollbar-y-rail" style="top: 0px; height: 0px; right: 2px;">
                            <div class="ps-scrollbar-y" tabindex="0" style="top: 0px; height: 2px;"></div>
                        </div>
                    </div>
                    <div class="publisher bt-1 border-light"> <img class="avatar avatar-xs" src="assets/img/people/hj.png" alt="..."> <input class="publisher-input" type="text" placeholder="Write something"> <span class="publisher-btn file-group"> <i class="fa fa-paperclip file-browser"></i> <input type="file"> </span> <a class="publisher-btn" href="#" data-abc="true"><i class="fa fa-smile"></i></a> <a class="publisher-btn text-info" href="#" data-abc="true"><i class="fa fa-paper-plane"></i></a> </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="messenger page-content page-container" id="hy-chat" data-aos="fade-up" style="margin-top: 17%; margin-left: 20%; width: 500px; display: none;">
  <div class="padding" style="padding: 0%; margin: 0%;">
      <div class=" container d-flex justify-content-center">
        <div>
          <!-- <div class="col-md-6"> -->
              <div class="card card-bordered">
                  <div class="card-header">
                      <h4 class="card-title"><strong>Chat</strong></h4> <a class="btn btn-xs btn-secondary" href="#" data-abc="true">Let's Chat App</a>
                  </div>
                  <div class="ps-container ps-theme-default ps-active-y" id="chat-content" style="overflow-y: scroll !important; height:400px !important;">
                      <div class="media media-chat"> <img class="avatar" src="assets/img/people/hy.png" alt="...">
                          <div class="media-body">
                            <p></p>
                            <p>????????????</p>
                            <p>24??? ???????????? ?????????????<br>?????? ?????? ???????????</p>
                            <p class="meta"><time datetime="2018">23:58</time></p>
                        </div>
                    </div>
                    <div class="media media-meta-day">Today</div>
                    <div class="media media-chat media-chat-reverse">
                        <div class="media-body">
                            <p>??????~</p>
                            <p>?????? ????????? ?????????</p>
                            <p>?????? ???????????????! ?????? ?????????. ???????????? ????????????.</p>
                            <p class="meta"><time datetime="2018">00:06</time></p>
                        </div>
                    </div>
                      <div class="media media-chat"> <img class="avatar" src="assets/img/people/hy.png" alt="...">
                          <div class="media-body">
                              <p>?????????</p>
                              <p>???????????? ?????????? </p>
                              <p class="meta"><time datetime="2018">00:07</time></p>
                          </div>
                      </div>
                      <div class="media media-chat media-chat-reverse">
                          <div class="media-body">
                              <p>??????!</p>
                              <p>?????? 10??? ????????? ??????????????? </p>
                              <p>????????? ???????</p>
                              <p class="meta"><time datetime="2018">00:09</time></p>
                          </div>
                      </div>
                      <div class="media media-chat"> <img class="avatar" src="assets/img/people/hy.png" alt="...">
                          <div class="media-body">
                              <p>?????? ?????? ????????? ??????????????? ??????? </p>
                              <p class="meta"><time datetime="2018">00:10</time></p>
                          </div>
                      </div>
                      <div class="media media-chat media-chat-reverse">
                          <div class="media-body">
                              <p>??????! ???????????????</p>
                              <p class="meta"><time datetime="2018">00:10</time></p>
                          </div>
                      </div>
                      <div class="media media-chat"> <img class="avatar" src="assets/img/people/hy.png" alt="...">
                          <div class="media-body">
                              <p> 12?????? ?????????</p>
                              <p class="meta"><time datetime="2018">00:12</time></p>
                          </div>
                      </div>
                      <div class="media media-chat media-chat-reverse">
                          <div class="media-body">
                              <p>????????????</p>
                              <p class="meta"><time datetime="2018">00:12</time></p>
                          </div>
                      </div>
                      <div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 0px;">
                          <div class="ps-scrollbar-x" tabindex="0" style="left: 0px; width: 0px;"></div>
                      </div>
                      <div class="ps-scrollbar-y-rail" style="top: 0px; height: 0px; right: 2px;">
                          <div class="ps-scrollbar-y" tabindex="0" style="top: 0px; height: 2px;"></div>
                      </div>
                  </div>
                  <div class="publisher bt-1 border-light"> <img class="avatar avatar-xs" src="assets/img/people/hy.png" alt="..."> <input class="publisher-input" type="text" placeholder="Write something"> <span class="publisher-btn file-group"> <i class="fa fa-paperclip file-browser"></i> <input type="file"> </span> <a class="publisher-btn" href="#" data-abc="true"><i class="fa fa-smile"></i></a> <a class="publisher-btn text-info" href="#" data-abc="true"><i class="fa fa-paper-plane"></i></a> </div>
              </div>
          </div>
      </div>
  </div>
</div>
<div class="messenger page-content page-container" id="cw-chat" data-aos="fade-up" style="margin-top: 17%; margin-left: 20%; width: 500px; display: none;">
  <div class="padding" style="padding: 0%; margin: 0%;">
      <div class=" container d-flex justify-content-center">
        <div>
          <!-- <div class="col-md-6"> -->
              <div class="card card-bordered">
                  <div class="card-header">
                      <h4 class="card-title"><strong>Chat</strong></h4> <a class="btn btn-xs btn-secondary" href="#" data-abc="true">Let's Chat App</a>
                  </div>
                  <div class="ps-container ps-theme-default ps-active-y" id="chat-content" style="overflow-y: scroll !important; height:400px !important;">
                      <div class="media media-chat"> <img class="avatar" src="assets/img/people/cw.png" alt="...">
                          <div class="media-body">
                              <p>?????????</p>
                              <p>???????????? ...???</p>
                              <p>??? ????????? ??????????<br> ????????? ??????????</p>
                              <p class="meta"><time datetime="2018">23:58</time></p>
                          </div>
                      </div>
                      <div class="media media-meta-day">Today</div>
                      <div class="media media-chat media-chat-reverse">
                          <div class="media-body">
                              <p>Hiii, I'm good.</p>
                              <p>How are you doing?</p>
                              <p>Long time no see! Tomorrow office. will be free on sunday.</p>
                              <p class="meta"><time datetime="2018">00:06</time></p>
                          </div>
                      </div>
                      <div class="media media-chat"> <img class="avatar" src="assets/img/people/cw.png" alt="...">
                          <div class="media-body">
                              <p>Okay</p>
                              <p>We will go on sunday? </p>
                              <p class="meta"><time datetime="2018">00:07</time></p>
                          </div>
                      </div>
                      <div class="media media-chat media-chat-reverse">
                          <div class="media-body">
                              <p>That's awesome!</p>
                              <p>I will meet you Sandon Square sharp at 10 AM</p>
                              <p>Is that okay?</p>
                              <p class="meta"><time datetime="2018">00:09</time></p>
                          </div>
                      </div>
                      <div class="media media-chat"> <img class="avatar" src="assets/img/people/cw.png" alt="...">
                          <div class="media-body">
                              <p>Okay i will meet you on Sandon Square </p>
                              <p class="meta"><time datetime="2018">00:10</time></p>
                          </div>
                      </div>
                      <div class="media media-chat media-chat-reverse">
                          <div class="media-body">
                              <p>Do you have pictures of Matley Marriage?</p>
                              <p class="meta"><time datetime="2018">00:10</time></p>
                          </div>
                      </div>
                      <div class="media media-chat"> <img class="avatar" src="assets/img/people/cw.png" alt="...">
                          <div class="media-body">
                              <p>Sorry I don't have. i changed my phone.</p>
                              <p class="meta"><time datetime="2018">00:12</time></p>
                          </div>
                      </div>
                      <div class="media media-chat media-chat-reverse">
                          <div class="media-body">
                              <p>Okay then see you on sunday!!</p>
                              <p class="meta"><time datetime="2018">00:12</time></p>
                          </div>
                      </div>
                      <div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 0px;">
                          <div class="ps-scrollbar-x" tabindex="0" style="left: 0px; width: 0px;"></div>
                      </div>
                      <div class="ps-scrollbar-y-rail" style="top: 0px; height: 0px; right: 2px;">
                          <div class="ps-scrollbar-y" tabindex="0" style="top: 0px; height: 2px;"></div>
                      </div>
                  </div>
                  <div class="publisher bt-1 border-light"> <img class="avatar avatar-xs" src="assets/img/people/cw.png" alt="..."> <input class="publisher-input" type="text" placeholder="Write something"> <span class="publisher-btn file-group"> <i class="fa fa-paperclip file-browser"></i> <input type="file"> </span> <a class="publisher-btn" href="#" data-abc="true"><i class="fa fa-smile"></i></a> <a class="publisher-btn text-info" href="#" data-abc="true"><i class="fa fa-paper-plane"></i></a> </div>
              </div>
          </div>
      </div>
  </div>
</div>
</div>





</div>
</div>



<jsp:include page="/Footer.jsp"/>


<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>



<!-- Template Main JS File -->
<script src="assets/js/main.js"></script>

</body>

</html>
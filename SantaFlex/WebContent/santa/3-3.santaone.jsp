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
  <script src="<%=request.getContextPath() %>/assets/js/jquery-3.6.0.min.js"></script>
  <script>
   $(function(){
     var $pt1 = $(".col_pt_first");
     var $pt2 = $(".col_pt_second");
   }) ;
      function drop1(){
        $("#collapseExample2").removeClass("show");
        console.log("321")
      }
      function drop2(){
        $("#collapseExample").removeClass("show");
        console.log("123")
      }
  </script>
</head>

<body>

	<jsp:include page="/Header.jsp"/>


  <!-- ======= Menu Section .결제하기 ======= -->

  <section id="pay" class="pay section-bg">
    <div class="" data-aos="fade-up">
      <div class="section-title" style="margin-top: 70px; margin-left: 10%;">
        <h3>결제하기</h3>
      </div>
      
      <p style="margin-left: 10%;">
        <a class="btn btn-outline-danger col_pt_first" data-bs-toggle="collapse" href="#collapseExample" 
        role="button" aria-expanded="false" aria-controls="collapseExample" onclick="drop1();">
          카드결제
        </a>
        <button class="btn btn-outline-danger col_pt_second" type="button" 
        onclick="drop2();" data-bs-toggle="collapse" data-bs-target="#collapseExample2" aria-expanded="false" aria-controls="collapseExample">
         계좌이체
        </button>
      </p>
      <div class="collapse col_1" id="collapseExample" style="margin-left: 10%;" >
        <div class="card card-body">
             <!-- 카드결제 선택시...은행선택 -->
             <div class="dropdown" style="margin-bottom: 20px;">
              <select class="form-select" aria-label="Default select example" style="width: 80px;">
                <option selected>은행</option>
                <option value="1">우리</option>
                <option value="2">하나</option>
                <option value="3">국민</option>
                <option value="3">카카오</option>
                <option value="3">기업</option>
                <option value="3">신한</option>
              </select>

                <div id="transfer"  style="color:black; margin-top:20px; margin-bottom: 10px;">
                    <label for="">카드번호</label>
                    <input type="text"  autocomplete="on">
                </div>
                <div id="transfer"  style="color:black; margin-bottom: 10px; margin-left: 32px;">
                    <label for="">cvc</label>
                    <input type="text" autocomplete="on" required placeholder="000">
                </div>
                <div id="transfer"  style="color:black; margin-bottom: 10px;">
                    <label for="">유효기간</label>
                    <input type="text" autocomplete="on" required placeholder="2000-00-00">
                </div>
                <div>
                    <label for="" class="btn btn-outline-dark btn-sm">결제완료</label></div>
              </div>
        </div>
      </div>

      <div class="collapse col_2" id="collapseExample2" style="margin-left: 10%;" onclick="drop2()">
        <div class="card card-body">
            <!-- 계좌이체 선택시...계좌번호와 이름 , 은행 입력창 -->
            <form action="">
                <div class="dropdown" style="margin-bottom: 20px;">
                  <select class="form-select" aria-label="Default select example" style="width: 80px;">
                    <option selected>은행</option>
                    <option value="1">우리</option>
                    <option value="2">하나</option>
                    <option value="3">국민</option>
                    <option value="3">카카오</option>
                    <option value="3">기업</option>
                    <option value="3">신한</option>
                  </select>

                    <div id="transfer"  style="color:black; margin-top:20px; margin-bottom: 10px;">
                        <label for="">입금자명</label>
                        <input type="text">
                    </div>
                    <div id="transfer"  style="color:black; margin-bottom: 10px;">
                        <label for="">계좌번호</label>
                        <input type="text">
                    </div>
                    <div>
                        <label for="" class="btn btn-outline-dark btn-sm" style="margin-top: 20px;">결제완료</label></div>
                  </div>
            </form>
        </div>
      </div>
    
            <!-- 뒤로가기 버튼 -->
      <div style="margin-top: 50px; margin-left: 10%;" >
        <label for="" class="btn btn-outline-light btn-sm"><a href="3-2.payment.jsp">뒤로가기</a> </label></div>
      </div>
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
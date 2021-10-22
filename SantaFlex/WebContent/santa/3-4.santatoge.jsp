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
        $("#select").removeClass("show");
        console.log("321")
      }
      function drop2(){
        $("#self").removeClass("show");
        console.log("123")
      }
  </script>
</head>

<body>

  	<jsp:include page="/Header.jsp"/>
  

  <!-- ======= Menu Section . 결제하기 ======= -->

  
        <section id="pay" class="pay section-bg">
            <div class="" data-aos="fade-up">
              <div class="section-title" style="margin-top: 70px; margin-left: 10%;">
                <h3>결제하기</h3>
              </div>
              
              <p style="margin-left: 10%;">
                <a class="btn btn-outline-danger col_pt_first" onclick="drop1();" data-bs-toggle="collapse" href="#self" role="button" aria-expanded="false" aria-controls="collapseExample">
                    금액 직접 작성하기
                </a>
                <button class="btn btn-outline-danger col_pt_second" onclick="drop2()" type="button" data-bs-toggle="collapse" data-bs-target="#select" aria-expanded="false" aria-controls="collapseExample" style="margin-left: 10px;">
                    금액 결정하기
                </button>
              </p>
              <div class="collapse" id="self" style="margin-left: 10%; width: 500px;">
                <div class="card card-body">
                     <!-- 금액 직접 입력 -->
                     <input type="text" autocomplete="on" required placeholder="금액을 입력해주세요" style="margin: 10px;">
                        <div style="margin-left: 5px;">
                            <label for="" class="btn btn-outline-dark btn-sm"> <a href="3-3. santaone.jsp">결제하기</a></label></div>
                      </div>
                </div>
             
              <div class="collapse" id="select" style="margin-left: 10%; width: 500px;">
                <div class="card card-body" style="color:black; ">
                    <!-- 금액 선택 -->
                    <label class="btn btn-outline-light btn-sm" style="color: black;">30,000 <input type="radio" name="1" id="" ></label>
                    <label class="btn btn-outline-light btn-sm" style="color: black;">50,000 <input type="radio" name="1" id="" ></label>
                    <label class="btn btn-outline-light btn-sm" style="color: black;">70,000 <input type="radio" name="1" id="" ></label>
                    <label class="btn btn-outline-light btn-sm" style="color: black;">100,000 <input type="radio" name="1" id="" ></label>
                    <div style="margin-left: 5px;">
                        <label for="" class="btn btn-outline-dark btn-sm"><a href="3-3.santaone.jsp">결제하기</a></label></div>
                  </div>
                    </div>
                    </form>
                </div>
              </div>
              <div style="margin-top: 50px; margin-left: 10%; float: left;"  >
                  <label for="" class="btn btn-outline-light btn-sm"><a href="3-2.payment.jsp">뒤로가기</a> </label></div>
              </div>
            </div>
        </section> 

        
        <div>
    
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
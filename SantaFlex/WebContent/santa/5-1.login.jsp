<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<link href="<%=request.getContextPath() %>/assets/css/login.css" rel="stylesheet">
	<script src="<%=request.getContextPath() %>/assets/js/jquery-3.6.0.min.js"></script>
  <script src="<%=request.getContextPath() %>/assets/js/login.js"></script>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Santa Flex</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

</head>

<body>
	<jsp:include page="/Header.jsp"/>

    <!-- ======= Login Section ======= -->
    <section id="events" class="events">
      <div class="container" data-aos="fade-up">

        <div class="section-title" style="margin-top: 70px;">
          <h2></h2>
          <p>LOGIN</p>
        </div>

        <div class="login-reg-panel">
  
                    
          <div class="register-info-box">
            <div>
              <h3 style="color: aliceblue;">산타플랙스 <br>회원이 <br>아니신가요?</h3>
            </div>
            <p>지금 바로 가입하기</p>
            <label id="label-login" for="log-login-show"><a href="5-2.signUp.jsp" style="color: aliceblue;">회원가입</a></label>
            <input type="radio" name="active-log-panel" id="log-login-show">
          </div>
                    
          <div class="white-panel">
            <div class="login-show">
              <h2>LOGIN</h2><br>
              <form action="5-1.login.do" method="post">
              <!-- "/santa/5-1.login.do" -->
              <c:if test="${!empty Msg and Msg eq 'incorrect'}">
              	<p style="color:red;">아이디나 비밀번호가 틀렸습니다.</p>
              </c:if>
              <c:if test="${!empty Msg and Msg eq 'empt'}">
              	<p style="color:red;">아이디와 비밀번호를 입력하세요.</p>
              </c:if>
              <input type="text" name="id" placeholder="Id">
              <input type="password" name="pwd" placeholder="Password">
              <div class="form-check form-switch ps-0" >
                <input class="form-check-input ms-auto" type="checkbox" id="flexSwitchCheckDefault" checked>
                <label class="form-check-label text-body ms-3 text-truncate w-80 mb-0" for="flexSwitchCheckDefault">
                  	로그인 상태 유지
                </label>
              </div><br>
              <div class="row justify-content-md-center">
                <input type="submit" value="login" id="label-register" for="log-reg-show"><a href="7-1.profile.jsp"style="color: rgb(192, 53, 43);"><b>Login</b></a>
                  <a href="5-3.forgot_pwd.jsp" style="text-align: center; color: rgb(192, 53, 43);"><b>아이디 · 비밀번호 찾기</b></a>
              </div>
              </form>
              </div>
            </div>
            
            <div class="register-show">
              <h2>REGISTER</h2>
              <input type="text" placeholder="Email">
              <input type="password" placeholder="Password">
              <input type="password" placeholder="Confirm Password">
              <input type="button" value="Register">
            </div>
          </div>
        </div>

      </div>
    </section><!-- End Login Section -->

	<jsp:include page="/Footer.jsp"/>



<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Template Main JS File -->
<script src="<%=request.getContextPath() %>/assets/js/main.js"></script>

</body>

</html>
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
  <script src="<%=request.getContextPath() %>/assets/js/login.js"></script>
</head>

<body>

	<jsp:include page="/Header.jsp"/>
	
  
    <!-- ======= Login Section ======= -->
    <section id="events" class="events">
      <div class="container" data-aos="fade-up">

        <div class="section-title" style="margin-top: 70px;">
          <h2></h2>
          <p>login</p>
        </div>

        <div class="login-reg-panel">
          <div class="login-info-box">
            <h2>Have an account?</h2>
            <p>Lorem ipsum dolor sit amet</p>
            <label id="label-register" for="log-reg-show" cl>Login</label>
            <input type="radio" name="active-log-panel" id="log-reg-show"  checked="checked">
          </div>
                    
          <div class="register-info-box">
            <h2>Don't have an account?</h2>
            <p>Lorem ipsum dolor sit amet</p>
            <label id="label-login" for="log-login-show">Register</label>
            <input type="radio" name="active-log-panel" id="log-login-show">
          </div>
                    
          <div class="white-panel">
            <div class="login-show">
              <h2>LOGIN</h2>
              <input type="text" placeholder="Email">
              <input type="password" placeholder="Password">
              <input type="button" value="Login">
              <a href="">Forgot password?</a>
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
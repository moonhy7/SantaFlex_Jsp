<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Santa Flex</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
</head>
<style>
/*--------------------------------------------------------------
# Footer
--------------------------------------------------------------*/
#footer {
  background: black;
  padding: 0 0 30px 0;
  color: #fff;
  font-size: 14px;
}

#footer .footer-top {
  background: #0c0b09;
  border-top: 1px solid #37332a;
  border-bottom: 1px solid #28251f;
  padding: 60px 0 30px 0;
}

#footer .footer-top .footer-info {
  margin-bottom: 30px;
}

#footer .footer-top .footer-info h3 {
  font-size: 24px;
  margin: 0 0 20px 0;
  padding: 2px 0 2px 0;
  line-height: 1;
  font-weight: 300;
  text-transform: uppercase;
  font-family: "Poppins", sans-serif;
}

#footer .footer-top .footer-info p {
  font-size: 14px;
  line-height: 24px;
  margin-bottom: 0;
  font-family: "Playfair Display", serif;
  color: #fff;
}

#footer .footer-top .social-links a {
  font-size: 18px;
  display: inline-block;
  background: #28251f;
  color: #fff;
  line-height: 1;
  padding: 8px 0;
  margin-right: 4px;
  border-radius: 50%;
  text-align: center;
  width: 36px;
  height: 36px;
  transition: 0.3s;
}

#footer .footer-top .social-links a:hover {
  background: #cda45e;
  color: #fff;
  text-decoration: none;
}

#footer .footer-top h4 {
  font-size: 16px;
  font-weight: 600;
  color: #fff;
  position: relative;
  padding-bottom: 12px;
}

#footer .footer-top .footer-links {
  margin-bottom: 30px;
}

#footer .footer-top .footer-links ul {
  list-style: none;
  padding: 0;
  margin: 0;
}

#footer .footer-top .footer-links ul i {
  padding-right: 2px;
  color: #cda45e;
  font-size: 18px;
  line-height: 1;
}

#footer .footer-top .footer-links ul li {
  padding: 10px 0;
  display: flex;
  align-items: center;
}

#footer .footer-top .footer-links ul li:first-child {
  padding-top: 0;
}

#footer .footer-top .footer-links ul a {
  color: #fff;
  transition: 0.3s;
  display: inline-block;
  line-height: 1;
}

#footer .footer-top .footer-links ul a:hover {
  color: #cda45e;
}

#footer .footer-top .footer-newsletter form {
  margin-top: 30px;
  background: #28251f;
  padding: 6px 10px;
  position: relative;
  border-radius: 50px;
  border: 1px solid #454035;
}

#footer .footer-top .footer-newsletter form input[type="email"] {
  border: 0;
  padding: 4px;
  width: calc(100% - 110px);
  background: #28251f;
  color: white;
}

#footer .footer-top .footer-newsletter form input[type="submit"] {
  position: absolute;
  top: -1px;
  right: -1px;
  bottom: -1px;
  border: 0;
  background: none;
  font-size: 16px;
  padding: 0 20px 2px 20px;
  background: #cda45e;
  color: #fff;
  transition: 0.3s;
  border-radius: 50px;
}

#footer .footer-top .footer-newsletter form input[type="submit"]:hover {
  background: #d3af71;
}

#footer .copyright {
  text-align: center;
  padding-top: 30px;
}

#footer .credits {
  padding-top: 10px;
  text-align: center;
  font-size: 13px;
  color: #fff;
}

</style>
<body>
<!-- ======= Footer ======= -->
   <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">
          <div class="col-lg-1 col-md-6">
            <div class="footer-info" float="right">  
              </div>
            </div>

          <div class="col-lg-4 col-md-6">
            <div class="footer-info">
                <h3>Santa Flex</h3>
                <p>서울특별시 강남구 역삼동 819-3, KOREA<br></p>
              </div>
            </div>

            <div class="col-lg-4 col-md-6">
              <div class="footer-info" float="right">
                  <p>
                    <strong>Phone:</strong> +82 010 1234 5678<br>
                    <strong>Email:</strong> santaflex@google.co.kr<br>
                  </p>
                </div>
                <div class="social-links mt-3">
                  
                  <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                  <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                  <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                  <a href="https://github.com/moonhy7/SantaFlex" class="github"><i class="bx bxl-github"></i></a>
                  <!-- <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a> -->
                </div>
              </div>

          <div class="col-md-auto footer-links">
            <ul>
               <div class="logo">
                 <a href="0.index.jsp">
                   <p><img src="<%=request.getContextPath() %>/assets/img/logo_transparency.png" width = "50px" height= "50px" alt=""><span style="font-size: 30px"><sub>&nbspSantaFlex</sub></span></p>
                  </a>
               </div>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>SantaFlex</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/restaurantly-restaurant-template/ -->
        Designed by <a href="https://bootstrapmade.com/">SantaFlex</a>
      </div>
    </div>
  </footer><!-- End Footer -->
  
  <!-- Vendor JS Files -->
	<script src="<%=request.getContextPath() %>/assets/vendor/aos/aos.js"></script>
	<script src="<%=request.getContextPath() %>/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="<%=request.getContextPath() %>/assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="<%=request.getContextPath() %>/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="<%=request.getContextPath() %>/assets/vendor/php-email-form/validate.js"></script>
	<script src="<%=request.getContextPath() %>/assets/vendor/swiper/swiper-bundle.min.js"></script>
</body>
</html>
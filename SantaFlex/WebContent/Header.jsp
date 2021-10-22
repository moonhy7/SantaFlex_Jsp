<%@ page import="santaflex.vo.Member" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD jsp 4.01 Transitional//EN" "http://www.w3.org/TR/jsp4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Santa Flex</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="<%=request.getContextPath() %>/assets/img/icon.png" rel="icon">
  <link href="<%=request.getContextPath() %>/assets/img/icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="<%=request.getContextPath() %>/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath() %>/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="<%=request.getContextPath() %>/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath() %>/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="<%=request.getContextPath() %>/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath() %>/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath() %>/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <!-- Template Main CSS File -->
  <link href="<%=request.getContextPath() %>/assets/css/style.css" rel="stylesheet">
  <script src="<%=request.getContextPath() %>/assets/js/jquery-3.6.0.min.js"></script>
 
<style>
/*--------------------------------------------------------------
# Top Bar
--------------------------------------------------------------*/
#topbar {
  height: 40px;
  font-size: 14px;
  transition: all 0.5s;
  z-: 996;
}

#topbar.topbar-scrolled {
  top: -40px;
}

#topbar .contact-info i {
  font-style: normal;
  color: #d9ba85;
}

#topbar .contact-info i span {
  padding-left: 5px;
  color: #fff;
}

#topbar .languages ul {
  display: flex;
  flex-wrap: wrap;
  list-style: none;
  padding: 0;
  margin: 0;
  color: #cda45e;
}

#topbar .languages ul a {
  color: white;
}

#topbar .languages ul li + li {
  padding-left: 10px;
}

#topbar .languages ul li + li::before {
  display: inline-block;
  padding-right: 10px;
  color: rgba(255, 255, 255, 0.5);
  content: "/";
}

/*--------------------------------------------------------------
# Header
--------------------------------------------------------------*/
#header {
  background: rgba(192, 52, 43, 0.6);
  border-bottom: 1px solid rgba(12, 11, 9, 0.6);
  transition: all 0.5s;
  z-index: 997;
  padding: 15px 0;
  top: 40px;
}

#header.header-scrolled {
  top: 0;
  background: rgba(192, 52, 43, 0.85);
  border-bottom: 1px solid #37332a;
}

#header .logo {
  font-size: 28px;
  margin: 0;
  padding: 0;
  line-height: 1;
  font-weight: 300;
  letter-spacing: 1px;
  text-transform: uppercase;
  font-family: "Poppins", sans-serif;
}

#header .logo a {
  color: #fff;
}

#header .logo img {
  max-height: 40px;
}

</style>
</head>
<body>
  <!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-flex align-items-center fixed-top">
    <div class="container d-flex justify-content-center justify-content-md-between">

      <div class="contact-info d-flex align-items-center">
        <i class="bi bi-phone d-flex align-items-center"><span>+1 02-3486-9600</span></i>
        <i class="bi bi-clock d-flex align-items-center ms-4"><span> Mon-Sat: 9AM - 21PM</span></i>
      </div>

      </div>
    </div>
  </div>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-cente" >
    <div class="container-fluid container-xl d-flex align-items-center justify-content-lg-between">
	<span class="notranslate">
      <h1 class="logo me-auto me-lg-0">
        <a href="0.index_project.jsp"><img src="<%=request.getContextPath() %>/assets/img/logo_transparency.png"> Santa Flex</a>
      </h1>
      </span>
      <!-- Uncomment below if you prefer to use an image logo -->
      <a href="0.index_project.jsp" class="logo me-auto me-lg-0"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <span class="notranslate"><li><a class="nav-link scrollto" href="0.index_project.jsp">Home</a></li></span>
          <li><a class="nav-link scrollto" href="1.cart.jsp">선물담기</a></li>
          <li><a class="nav-link scrollto" href="3-1.present.jsp">선물하기</a></li>
          <li><a class="nav-link scrollto" href="4-1.message.jsp">감사메시지</a></li>
          <li>
             <c:if test="${empty Member or empty Member.id }">
            <a style="color:white;" href="<%=request.getContextPath() %>/santa/5-1.login.do">로그인</a>
         </c:if>
         <c:if test="${!empty Member and !empty Member.id }">
            <a style="color:white;" href="<%=request.getContextPath() %>/santa/logout.do">로그아웃</a>
         </c:if>
          </li>
          <li><a class="nav-link scrollto" href="6-1.FAQ.do">Q&A</a></li>
          <li>
         <c:if test="${empty Member or empty Member.id }">
               <a style="color:white;"></a>
            </c:if>
            <c:if test="${!empty Member and !empty Member.id }">
               
               <a style="color:white;" href="<%=request.getContextPath() %>/santa/7-1.profile.jsp"> ${Member.name } 님 환영합니다♡</a>
            </c:if>          
         </li>
             <li class="dropdown"><a href="#"><span>마이페이지</span> <i class="bi bi-chevron-down"></i></a>
               <ul>
               
               
               	<c:if test="${empty Member or empty Member.id }">
				    <li><a onclick="alert('로그인이 필요합니다')" href="5-1.login.jsp">계정 정보</a></li>
			    </c:if>
				<c:if test="${!empty Member and !empty Member.id }">
		    		  <li><a href="7-1.profile.jsp">계정 정보</a></li>
			    </c:if>
	    
               <c:if test="${empty Member or empty Member.id }">
	 		 		<li><a onclick="alert('로그인이 필요합니다')" href="5-1.login.jsp">회원 정보 수정</a></li>
			    </c:if>
				<c:if test="${!empty Member and !empty Member.id }">
		    		  <li><a href="7-2.member_modify.jsp">회원 정보 수정</a></li>
			    </c:if>
               
                              
                                
                 <li><a href="7-3.event_list.do">이벤트 내역</a></li>
                 <li><a href="7-4.present_list.jsp">선물 내역 보기</a></li>
               </ul>
             </li>
             
            
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav>

      
      	<c:if test="${empty Member or empty Member.id }">
	 		 <a onclick="alert('로그인이 필요합니다')" href="5-1.login.jsp" class="book-a-table-btn scrollto d-none d-lg-flex" style="margin: 0px;">초대장 만들기</a>	
	    </c:if>
		<c:if test="${!empty Member and !empty Member.id }">
    		  <a href="2.invitation.jsp" class="book-a-table-btn scrollto d-none d-lg-flex" style="margin: 0px;">초대장 만들기</a>			
	    </c:if>
	    
	    
      
      <div class="languages d-none d-md-flex align-items-center">
       
      <span class="notranslate">
      <div id="google_translate_element" style="display:none;"></div>
			<!-- "새 번역 링크 UI" -->
			<ul class="translation-links" style="list-style:none;">
				<li style="float:left"><a href="javascript:void(0)" class="english" data-lang="en">En</a></li>
				<li  style="float:left">&nbsp / &nbsp</li>
				<li style="float:left"><a href="javascript:void(0)" class="korean" data-lang="ko">Ko</a></li>
				
			</ul>
			<script src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
			<script type="text/javascript">
				/* 구글 번역 초기화 */
				function googleTranslateElementInit() {new google.translate.TranslateElement({pageLanguage: 'ko',autoDisplay: true}, 'google_translate_element');}
			</script>
			<script type="text/javascript">
				/* 새 UI 선택 클릭 이벤트가 발생하면
			       감춤 처리한 구글 번역 콤보리스트에
			       선택한 언어를 적용해 변경 이벤트를 발생시키는 코드  */
				document.querySelector('.translation-links').addEventListener('click',function(event) {
					let el = event.target;
					if(el != null){
						while(el.nodeName == 'FONT'){el = el.parentElement;}//data-lang 속성이 있는 태그 찾기
						const tolang = el.dataset.lang; // 변경할 언어 코드 얻기
						const gtcombo = document.querySelector('.goog-te-combo');
						if (gtcombo == null) {
							alert("Error: Could not find Google translate Combolist.");
							return false;
						}
						gtcombo.value = tolang; // 변경할 언어 적용
						gtcombo.dispatchEvent(new Event('change')); // 변경 이벤트 트리거
					}
					return false;
				});
			</script>
			</span>
   </div>
    </div>
  </header>

</body>
</html>
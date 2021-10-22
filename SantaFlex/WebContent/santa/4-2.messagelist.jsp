<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
</head>

<body>
    <jsp:include page="/Header.jsp"/>
 
          <!-- message-list section -->
   <section id="mList" class="mList" style="margin-top: 100px">
      <div class="container" data-aos="fade-up">
      
      
      <a class="nav-link scrollto" href="4-1.message.do"><h4>메세지 작성하기</h4></a>
   <h1><a href="4-2.messagelist.do">보낸 메세지</a></h1>
   <table border="1" width="1000">
      <tr>
         <th width="10%">번호</th>
         <th width="15%">받는사람</th>
         <th width="25%">제목</th>
         <th width="40%">내용</th>
         <th width="10%">날짜</th>
      </tr>
      <c:forEach var="message" items="${messages }">
         <tr>
            <td><c:out value="${message.msgnum}"/></td>
            <td><c:out value="${message.send}"/></td>
            <td><c:out value="${message.title}"/></td>
            <td><c:out value="${message.content}"/></td>
            <td><c:out value="${message.date}"/></td>
            
         
            
            <%-- <td>${message.msgnum}</td>
            <td>${message.to}</td>
            <td>${message.title}</td>
            <td>${message.content}</td>
            <td>${message.date}</td> --%>
         </tr>
      </c:forEach>
   </table>
      </div>
   </section>
   <jsp:include page="/Footer.jsp"/>


<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>


<!-- Template Main JS File -->
<script src="<%=request.getContextPath() %>/assets/js/main.js"></script>

</body>

</html>
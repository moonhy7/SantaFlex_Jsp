<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Santa Flex</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Template Main CSS File -->
<link href="<%=request.getContextPath() %>/assets/css/style.css" rel="stylesheet">

    <style>
  	ul {
		padding : 0;
	}
	li {
		list-style : none;
	}
  </style>
</head>

<body>
	<jsp:include page="/Header.jsp" />

	<!-- FAQ section -->
	<section id="events" class="events" style="margin-top: 100px">
		<div class="container" data-aos="fade-up">
		
		<a class="nav-link scrollto" href="6-2.QnA.jsp"><h5>1:1 문의하기</h5></a>
		<h1><a href="6-1.FAQ.do">FAQ 게시판</a></h1>
		<table border="1" width="1200">
			<tr>
				<th width="5%">번호</th>
				<th width="15%">구분</th>
				<th width="60%">내용</th>
				<th width="15%">작성일</th>
				<th width="5%">조회수</th>
			</tr>
		<c:forEach var="santa" items="${santas }">
			<tr>
				<td>${santa.no}</td>
				<td>${santa.title}</td>
				<td><a href="6-3.update.do?no=${santa.no }&hit=${santa.hit }">${santa.content}</a></td>
				<td>${santa.regDate}</td>
				<td>${santa.hit}</td>
			</tr>
		</c:forEach>
	</table>
			
			
		</div></section>
	<!-- end FAQ section -->

	<jsp:include page="/Footer.jsp" />



	<div id="preloader"></div>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Template Main JS File -->
	<script src="<%=request.getContextPath() %>/assets/js/main.js"></script>
</body>

</html>
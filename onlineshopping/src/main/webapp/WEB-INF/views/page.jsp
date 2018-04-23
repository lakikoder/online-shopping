<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- ${title} dobijamo iz objekta ModelAndView iz klase PageController kome ovo stavljamo kao atrinbut -->
<title>Online Shopping - ${title}</title>

<!-- Ubacujemo mali skript, ${title} dobijamo iz PageControlera, tj. za kljuc title dobijamo vrednosti Home, About Us, i Contact Us -->
<script>
	window.menu = '${title}';
</script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Litera Theme -->
<link href="${css}/bootstrap-litera-theme.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>

	<!-- Navigation -->
	`
	<!-- CUVAMO KOD ZA NAVIGACIJU UNUTAR NAVBAR.JSP -->
	<%@include file="./shared/navbar.jsp"%>



	<!-- Page Content -->
	<!-- OVDE IDE SADRZAJ STRANICE -->

	<div class="content">

		<!-- ${userClickHome} dobijamo iz objekta ModelAndViev iz klase PageController kome ovo stavljamo kao atribut -->
		<!-- Load only when user clicks home -->
		<c:if test="${userClickHome == true }">
			<%@include file="home.jsp"%>
		</c:if>

		<!-- Load only when user clicks about -->
		<c:if test="${userClickAbout == true }">
			<%@include file="about.jsp"%>
		</c:if>

		<!-- Load only when user clicks contact -->
		<c:if test="${userClickContact == true }">
			<%@include file="contact.jsp"%>
		</c:if>

	</div>

	<!-- FOOTER IDE NA OVO MESTO -->
	<%@include file="./shared/footer.jsp"%>

	<!-- Bootstrap core JavaScript -->
	<script src="${js}/jquery.js"></script>
	<script src="${js}/bootstrap.bundle.min.js"></script>

	<!-- Datatable plugin -->
	<script src="${js}/jquery.dataTables.js"></script><!-- Rucno napisani (self coded) javascript kod -->
	<script src="${js}/myapp.js"></script>


</body>

</html>

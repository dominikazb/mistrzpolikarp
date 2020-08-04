<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% response.setStatus(404); %>

<head>
<script src="js/jquery.min.js"></script>
<script src="js/selectize.js"></script>
<script src="js/index.js"></script>
<meta charset="UTF-8">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0" />
<meta name="description" content="Wyszukiwarka wyrobów medycznych. Łatwo sprawdzisz kto i jakie wyroby medyczne może zapisać. Co może wypisać Twój lekarz, jak często i w jakiej ilości?">
<meta name=”keywords” content=”wyroby, medyczne, zaopatrzenie, wyszukiwarka, szukanie, szukaj, wyrób, sprzęt, lista, pieluchy, pieluchomajtki, wózek, chodzi, balkonik, orteza, proteza, lekarz, lekarze, wypisywanie, zlecanie, NFZ, narodowy, fundusz, zdrowia, ministerstwo, rozporządzenie”>
<meta name=”author” content=”mistrzpolikarp.pl”>
<%@ page isErrorPage = "true" %>
<%@ page isELIgnored="false"%>

<title>Wyszukiwarka wyrobów medycznych - MistrzPolikarp</title>

<style>
body {
	background: rgb(217, 216, 216);
	background: linear-gradient(90deg, rgba(217, 216, 216, 1) 0%,
		rgba(254, 254, 254, 1) 93%, rgba(255, 255, 255, 1) 100%);
}

.jumbotron {
	background: none;
}

.textaligncenter {
	text-align:center;
}

</style>

</head>
<body>

	<div class="container">
	
	<br>
	<br>
	
		<div class="textaligncenter">
			<span><a href="/">Wróć do strony głównej.</a></span>
		</div>

	</div>


</body>
</html>
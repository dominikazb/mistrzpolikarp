<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>





<%@ page isELIgnored="false"%>
<meta charset="UTF-8">

<title>MistrzPolikarp - Wyszukiwarka</title>



<style>
html {
	height: 100%;
}

body {
	background: -webkit-linear-gradient(90deg, #EC6F66 10%, #F3A183 90%);
	/* Chrome 10+, Saf5.1+ */
	background: -moz-linear-gradient(90deg, #EC6F66 10%, #F3A183 90%);
	/* FF3.6+ */
	background: -ms-linear-gradient(90deg, #EC6F66 10%, #F3A183 90%);
	/* IE10 */
	background: -o-linear-gradient(90deg, #EC6F66 10%, #F3A183 90%);
	/* Opera 11.10+ */
	background: linear-gradient(90deg, #EC6F66 10%, #F3A183 90%); /* W3C */
	font-size: 20px;
}

.jumbotron {
	background-color: white;
}

.topCaption1 {
	text-align: center;
	margin-bottom: 0px;
	margin-top: -50px;
}

.topCaption2 {
	width: 600px;
	display: inline-block;
}

.vertical-align {
	display: flex;
	align-items: center;
	margin-top: -80px;
}

input[type='text'] {
	font-size: 15px;
	height: 40px;
}

#submit-button {
	font-size: 15px;
	height: 40px;
}

select {
	width: 400px;
	overflow: hidden;
	white-space: pre;
	text-overflow: ellipsis;
	-webkit-appearance: none;
}
</style>


</head>
<body>


	<div class="container">
		<div class="jumbotron">
			<h1>List of medical products</h1>
		</div>
	</div>



	<div class="row">
		<div class="col-xs-2 border col-xs-offset-4">

			<p class="lead">Wyszukaj produkt:</p>
			<form action="/read" method="POST">
				<input list="medicalProductsList">
				<datalist id="medicalProductsList">
					<c:forEach items="${listOfMedicalProducts}" var="element">
						<option
							${listOfMedicalProducts.contains(element) ? 'selected' : ''}>${element}</option>
					</c:forEach>
				</datalist>
			</form>



		</div>
		<div class="col-xs-2 border">


			<p class="lead">Wyszukaj lekarza:</p>
			<form action="/read" method="POST">
				<input list="medicalDoctorsList">
				<datalist id="medicalDoctorsList">
					<c:forEach items="${listOfMedicalDoctors}" var="doctor">
						<option ${listOfMedicalDoctors.contains(doctor) ? 'selected' : ''}>${doctor}</option>
					</c:forEach>
				</datalist>
			</form>



		</div>
	</div>









</body>
</html>
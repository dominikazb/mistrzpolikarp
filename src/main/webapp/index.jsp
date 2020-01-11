<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<%@ page isELIgnored="false"%>
<meta charset="UTF-8">

<title>MistrzPolikarp - Wyszukiwarka</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"
	rel="stylesheet">


<style>
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
			<div class="topCaption1">
				<div class="topCaption2">
					<h4>Witaj na MistrzPolikarp</h4>
				</div>
			</div>
			<hr class="my-4">
		</div>
	</div>


	<div class="container">
		<div class="jumbotron">
			<div class="row vertical-align">
				<div class="col-xs-6">


					<select name="medicalProductsList">
						<c:forEach items="${listOfMedicalProducts}" var="element">
							<option
								${listOfMedicalProducts.contains(element) ? 'selected' : ''}>${element}</option>
						</c:forEach>
					</select>



				</div>
				<div class="col-xs-6">

					<form action="/read" method="post">

						<input type="submit">
					</form>


					<select name="medicalDoctorsList">
						<c:forEach items="${listOfMedicalDoctors}" var="doctor">
							<option
								${listOfMedicalDoctors.contains(doctor) ? 'selected' : ''}>${doctor}</option>
						</c:forEach>
					</select>


				</div>
			</div>
		</div>
	</div>








	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</body>
</html>
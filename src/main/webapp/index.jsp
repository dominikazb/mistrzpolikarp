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
	background: rgb(0, 0, 0);
	background: linear-gradient(90deg, rgba(0, 0, 0, 1) 0%,
		rgba(104, 180, 195, 1) 0%, rgba(207, 244, 251, 1) 100%);
}

.form-group {
	display: inline-block;
	margin-bottom: 0;
	vertical-align: middle;
}

//
In navbar-form, allow folks to * not* use `.form-group `
    .form-control {
	display: inline-block;
	width: auto;
	//
	Prevent
	labels
	from
	stacking
	above
	inputs
	in
	`.form-group`
	vertical-align
	:
	middle;
}

//
Input groups need that 100% width though
    .input-group>.form-control {
	width: 80%;
}

/* body {
	background: -webkit-linear-gradient(90deg, #EC6F66 10%, #F3A183 90%);
	/* Chrome 10+, Saf5.1+ */
background
:
 
-moz-linear-gradient
(90deg
,
#EC6F66
 
10%,
#F3A183
 
90%);
/* FF3.6+ */
background
:
 
-ms-linear-gradient
(90deg
,
#EC6F66
 
10%,
#F3A183
 
90%);
/* IE10 */
background
:
 
-o-linear-gradient
(90deg
,
#EC6F66
 
10%,
#F3A183
 
90%);
/* Opera 11.10+ */
background
:
 
linear-gradient
(90deg
,
#EC6F66
 
10%,
#F3A183
 
90%); /* W3C */
font-size
:
 
20
px
;


}
* /
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

.divdiv {
	text-align: center;
	margin-top:200px;
}

.div1 {
	background: red;
	display: inline-block;
	width: 40%;
	margin-right: 20px;

}

.div2 {
	background: yellow;
	display: inline-block;
	width: 40%;
	margin-left: 20px;
}
</style>


</head>
<body>



	<div class="container">
		<div class="jumbotron">

			<div class="divdiv">

				<div class="div1">

					<p class="lead">Wyszukaj produkt:</p>
					<form action="/read" method="POST">
						<input class="form-control input-lg" list="medicalProductsList" name="inputMedicalProduct"
							placeholder="Wpisz nazwę produktu medycznego" autocomplete="off">
						<datalist id="medicalProductsList">
							<c:forEach items="${listOfMedicalProducts}" var="element">
								<option
									${listOfMedicalProducts.contains(element) ? 'selected' : ''}>${element}</option>
							</c:forEach>
						</datalist>
					</form>


				</div>




				<div class="div2">

					<p class="lead">Wyszukaj lekarza:</p>
					<form action="/read" method="POST">
						<input class="form-control input-lg" list="medicalDoctorsList" name="inputMedicalDoctor"
							placeholder="Wpisz specjalistę" autocomplete="off">
						<datalist id="medicalDoctorsList">
							<c:forEach items="${listOfMedicalDoctors}" var="doctor">
								<option
									${listOfMedicalDoctors.contains(doctor) ? 'selected' : ''}>${doctor}</option>
							</c:forEach>
						</datalist>
					</form>

				</div>



			</div>


		</div>
	</div>







<div class="container">
<div class="jumbotron">


	<%-- 			<table class="table table-striped">
					<thead>
						<tr>
							<th>Name of the product / Doctor</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${listOfMedicalProducts}" var="elementt">
							<tr>
								<td><c:out value="${elementt}" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				 --%>
				
				
								<table class="table table-striped">
					<thead>
						<tr>
							<th>Name of the product / Doctor</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${listOfMedicalDoctorsThatCanPrescribeParticularProduct}" var="medicalDoctor2">
							<tr>
								<td><c:out value="${medicalDoctor2}" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>






</div>


</div>












</body>
</html>
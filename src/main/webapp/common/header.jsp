<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<head>
<script src="js/jquery.min.js"></script>
<script src="js/selectize.js"></script>
<script src="js/index.js"></script>
<meta charset="UTF-8">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">
<meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0" />
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

.mistrzPolikarpPNG1 {
	text-align: center;
}

.mistrzPolikarpPNG2 {
	display: inline-block;
}

.img-fluid {
 max-width:100%;
}

.linkDiv {
	width:100%;
	text-align: right;
	margin-top: 30px;
}

.footer {
	text-align: left;
	color: #8b8b8b;
}

.footer a:link {
	color: #8b8b8b;
}

.footer a:visited {
	color: #8b8b8b;
}

.footer a:hover {
	color: #8b8b8b;
}

.footer a:active {
	color: #8b8b8b;
}

.flexxible-box {
	width: 100%;
	padding: 30px;
	border-radius: 20px;
	margin: 10px 5px;
	overflow-wrap: break-word;
	color: grey;
	display: inline-block;
	box-shadow: 0 4px 8px 0 rgba(255, 255, 255, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}


<!--TABLES ON MOBILE DEVICES-->

table {
	width: 100%;
	border-collapse: collapse;
}

tr:nth-of-type(odd) {
	background: #eee;
}

th {
	background: lightgrey;
	color: #606060;
	font-weight: normal;
}

td, th {
	padding: 6px;
	border: 1px solid #ccc;
	text-align: left;
}

@media only screen and (max-width: 760px) , ( min-device-width : 768px)
	and (max-device-width: 1024px) {

	table, thead, tbody, th, td, tr {
		display: block;
	}
	
	thead tr {
		position: absolute;
		top: -9999px;
		left: -9999px;
	}
	
	tr {
		border: 1px solid #ccc;
	}
	td {
		border: none;
		border-bottom: 1px solid #eee;
		position: relative;
		padding-left: 50%;
	}
	
	td:before {
		position: absolute;
		top: 6px;
		left: 6px;
		width: 45%;
		padding-right: 10px;
		white-space: nowrap;
	}
	
	td:before {
		position: static !important;
		color: grey;
	}
	
	td:nth-of-type(1):before {
		content: "Kod:";
	}
	
	td:nth-of-type(2):before {
		content: "Nazwa:";
	}
	td:nth-of-type(3):before {
		content: "Okres:";
	}
	
	td:nth-of-type(4):before {
		content: "Limit:";
	}
	
	td:nth-of-type(5):before {
		content: "Udział:";
	}
	
	td.doctor:nth-of-type(1):before {
		content: "";
	}
	
}
</style>

</head>
<body>

	<div class="container">
		<div class="jumbotron">
			<div class="mistrzPolikarpPNG1">
				<div class="mistrzPolikarpPNG2">
					<a href="http://mistrzpolikarp.pl"><img class="img-fluid"
						src="common/mistrzpolikarp_no_background.png" width="330"
						height="125"></a>
				</div>
			</div>
		</div>
	</div>
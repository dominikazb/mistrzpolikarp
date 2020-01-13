<div class="container">
<div class="jumbotron">


<div class="row">
	<div class="col-xs-6">
				<form action="/readMedicalDoctor" method="POST"
					id="readMedicalDoctorForm">
					<div class="control-group">
						<select id="inputMedicalDoctor" name="inputMedicalDoctor">
							<option value="">Wybierz specjaliste</option>
							<c:forEach items="${listOfMedicalDoctors}" var="doctor">
								<option value="${doctor}">${doctor}</option>
							</c:forEach>
						</select>
						<button type="submit" class="btn btn-info my-4 btn-block">Szukaj</button>
					</div>
				</form>
	</div>
	<div class="col-xs-6">


				<form action="/readMedicalProduct" method="POST">
					<div class="control-group">
						<select id="inputMedicalProduct" name="inputMedicalProduct">
							<option value="">Wybierz wyrob medyczny</option>
							<c:forEach items="${listOfMedicalProducts}" var="product">
								<option value="${product}">${product}</option>
							</c:forEach>
						</select>
						<button type="submit" class="btn btn-info my-4 btn-block">Szukaj</button>
					</div>
				</form>
			</div>
		</div>


</div>
</div>






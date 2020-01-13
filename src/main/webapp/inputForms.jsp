<div class="container">
	<div class="row">
		<div class="col-xs-6">
			<p class="lead">Wyszukaj produkty:</p>
			<form action="/readMedicalDoctor" id="fedor" method="POST">
				<div class="control-group">
					<select id="inputMedicalDoctor" name="inputMedicalDoctor">
						<option value="">Wybierz specjalistę</option>
						<c:forEach items="${listOfMedicalDoctors}" var="doctor">
							<option value="${doctor}">${doctor}</option>
						</c:forEach>
					</select> <br>
					<button type="submit" class="btn btn-info my-4 btn-block">Szukaj</button>
				</div>
			</form>
		</div>

		<div class="col-xs-6">
			<p class="lead">Wyszukaj lekarzy:</p>
			<form action="/readMedicalProduct" method="POST">
				<div class="control-group">
					<select id="inputMedicalProduct" name="inputMedicalProduct">
						<option value="">Wybierz wyrób medyczny</option>
						<c:forEach items="${listOfMedicalProducts}" var="product">
							<option value="${product}">${product}</option>
						</c:forEach>
					</select> <br>
					<button type="submit" class="btn btn-info my-4 btn-block">Szukaj</button>
				</div>
			</form>
		</div>
	</div>
</div>

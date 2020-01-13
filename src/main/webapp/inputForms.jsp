<div class="container">
	<div class="jumbotron">
		<form action="/readMedicalDoctor" method="POST">
			<div class="control-group">
				<select id="inputMedicalDoctor" name="inputMedicalDoctor">
					<option value="">Wybierz specjaliste</option>
					<c:forEach items="${listOfMedicalDoctors}" var="doctor">
						<option value="${doctor}">${doctor}</option>
					</c:forEach>
				</select>
				<button type="submit" class="btn btn-info my-4 btn-block">Submit</button>
			</div>
		</form>
	</div>
</div>


<div class="container">
	<div class="jumbotron">
		<form action="/readMedicalProduct" method="POST">
			<div class="control-group">
				<select id="inputMedicalProduct" name="inputMedicalProduct">
					<option value="">Wybierz wyrob medyczny</option>
					<c:forEach items="${listOfMedicalProducts}" var="product">
						<option value="${product}">${product}</option>
					</c:forEach>
				</select>
				<button type="submit" class="btn btn-info my-4 btn-block">Submit</button>
			</div>
		</form>
	</div>
</div>
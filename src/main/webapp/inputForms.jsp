	<div class="container">
		<div class="jumbotron">

			<div class="divdiv">

				<div class="div1">

					<p class="lead">Wyszukaj produkt:</p>
					<form action="/readMedicalProduct" method="POST">
						<input class="form-control input-lg" list="medicalProductsList" name="inputMedicalProduct"
							placeholder="Wpisz nazwe produktu medycznego" autocomplete="off">
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
					<form action="/readMedicalDoctor" method="POST">
						<input class="form-control input-lg" list="medicalDoctorsList" name="inputMedicalDoctor"
							placeholder="Wyszukaj specjaliste" autocomplete="off">
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
<div class="container">
	<div class="jumbotron">
		<form action="/readMedicalProduct" method="POST">

			<div class="side-by-side clearfix">

				<div>
					<p class="lead">Wyszukaj produkt:</p>
					<select name="inputMedicalProduct" id="inputMedicalProduct" class="chosen-select">
						<option hidden="true" selected="selected"> -- wybierz produkt z listy -- </option>
						
						<c:forEach items="${listOfMedicalProducts}" var="element">
							<option
								${listOfMedicalProducts.contains(element) ? 'selected' : ''}>${element}</option>
						</c:forEach>
					</select>
					<button type="submit" class="btn btn-info my-4 btn-block">Submit</button>
				</div>
			</div>

		</form>






		<form action="/readMedicalDoctor" method="POST">

			<div class="side-by-side clearfix">

				<div>
					<p class="lead">Wyszukaj lekarza:</p>
					<select name="inputMedicalDoctor" id="inputMedicalDoctor"
						data-placeholder="Wpisz nazwę specjalisty wyrobu"
						class="chosen-select" tabindex="2">

						<c:forEach items="${listOfMedicalDoctors}" var="doctor">
							<option
								${listOfMedicalDoctors.contains(doctor) ? 'selected' : ''}>${doctor}</option>
						</c:forEach>

					</select>
					<button type="submit" class="btn btn-info my-4 btn-block">Submit</button>
				</div>
			</div>

		</form>
	</div>
</div>

			<script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
			<script src="js/chosen.jquery.js" type="text/javascript"></script>
			<script src="js/prism.js" type="text/javascript" charset="utf-8"></script>
			<script src="js/init.js" type="text/javascript" charset="utf-8"></script>
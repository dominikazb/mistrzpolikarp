<div class="container">
	<div class="row">
		<div class="col-lg-6">
			<div class="flexxible-box">
				<p class="lead">Kto przepisuje?</p>
				<form action="/readMedicalDoctor" method="POST">
					<select id="md" name="inputMedicalDoctor"
						placeholder="Wyszukaj specjalistę"
						onchange="this.form.submit()">
						<option value="">Wyszukaj specjalistę</option>
						<c:forEach items="${listOfMedicalDoctors}" var="doctor">
							<option value="${doctor}">${doctor}</option>
						</c:forEach>
					</select>
				</form>
				<script>
	 				$('#md').selectize();			
				</script>
				<c:if test="${!empty(inputMedicalDoctorT)}">${inputMedicalDoctorT} &#8595;</c:if>
			</div>

		</div>
		<div class="col-lg-6">
			<div class="flexxible-box">
				<p class="lead">Co przepisuje?</p>
				<form action="/readMedicalProduct" method="POST">
					<select id="products" name="inputMedicalProduct"
						placeholder="Wyszukaj produkt medyczny"
						onchange="this.form.submit()">
						<option value="">Wyszukaj produkt medyczny</option>
						<c:forEach items="${listOfMedicalProducts}" var="product">
							<option value="${product}">${product}</option>
						</c:forEach>
					</select>
				</form>
				<script>
 					$('#products').selectize();
				</script>
				<c:if test="${!empty(inputMedicalProductT)}">${inputMedicalProductT} &#8595;</c:if>
			</div>
		</div>
	</div>
</div>

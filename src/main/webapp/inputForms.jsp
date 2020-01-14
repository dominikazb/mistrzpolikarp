<div class="container">
	<div class="row">
		<div class="col-xs-6">
			<div class="control-group">
				<p class="lead">Kto przepisuje?</p>
				<form action="/readMedicalDoctor" method="POST">
					<select id="md" name="inputMedicalDoctor" class="demo-default"
						placeholder="Select a doctor" onchange="this.form.submit()">
						<option value="">Wyszukaj specjalistę</option>
						<c:forEach items="${listOfMedicalDoctors}" var="doctor">
							<option value="${doctor}">${doctor}</option>
						</c:forEach>
					</select>
				</form>
			</div>
			<script>
				$('#md').selectize();
			</script>
		</div>

		<div class="col-xs-6">
			<div class="control-group">
				<p class="lead">Co przepisuje?</p>
				<form action="/readMedicalProduct" method="POST">
					<select id="products" name="inputMedicalProduct"
						class="demo-default" placeholder="Select a product"
						onchange="this.form.submit()">
						<option value="">Select a product</option>
						<c:forEach items="${listOfMedicalProducts}" var="product">
							<option value="${product}">${product}</option>
						</c:forEach>
					</select>
				</form>
			</div>
			<script>
				$('#products').selectize();
			</script>
		</div>
	</div>
</div>

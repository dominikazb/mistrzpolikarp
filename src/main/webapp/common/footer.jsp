<div class="container">
	<div class="jumbotron">
		<div class="footer">
			<a
				href="https://mistrzpolikarp.pl/wyroby-medyczne-jak-uzyskac-refundacje/">Przeczytaj
				jak uzyskać refundację na wyroby medyczne?</a>
		</div>
	</div>
</div>

<script>
	var xhr;
	$selectMedicalProduct = $('#inputMedicalProduct').selectize({
		onChange : function(value) {
			if (!value.length)
				return;
			selectMedicalProduct.disable();
			selectMedicalProduct.clearOptions();
			selectMedicalProduct.load(function(callback) {
				xhr && xhr.abort();
				xhr = $.ajax({
					url : '',
					success : function(results) {
						selectMedicalProduct.enable();
						callback(results);
					},
					error : function() {
						callback();
					}
				})
			});
		}
	});
	selectMedicalProduct = $selectMedicalProduct[0].selectize;
</script>

<script>
	var xhr;
	$selectMedicalDoctor = $('#inputMedicalDoctor').selectize({
		onChange : function(value) {
			if (!value.length)
				return;
			selectMedicalDoctor.disable();
			selectMedicalDoctor.clearOptions();
			selectMedicalDoctor.load(function(callback) {
				xhr && xhr.abort();
				xhr = $.ajax({
					url : '',
					success : function(results) {
						selectMedicalDoctor.enable();
						callback(results);
					},
					error : function() {
						callback();
					}
				})
			});
		}
	});
	selectMedicalDoctor = $selectMedicalDoctor[0].selectize;
</script>

</body>
</html>
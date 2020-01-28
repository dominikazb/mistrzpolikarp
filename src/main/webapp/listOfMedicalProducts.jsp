<%@ include file="common/header.jsp"%>
<%@ include file="inputForms.jsp"%>




<div class="container">
	<div class="jumbotron">
		<table class="table">
			<thead>
				<tr>
					<th colspan="5">${inputMedicalDoctor}</th>
				</tr>
				<tr>
					<th scope="col">Lp.</th>
					<th scope="col">Nazwa produktu</th>
					<th scope="col">Okres użytkowania</th>
					<th scope="col">Limit finansowania</th>
					<th scope="col">Udział własny</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="medicalproduct"
					items="${listOfMedicalProductsForParticularSpecialty}">
					<tr>
						<td><c:out value="${medicalproduct.medicalID}" /></td>
						<td><c:out value="${medicalproduct.name}" /></td>
						<td>raz <c:out value="${medicalproduct.timeOfUse}" /></td>
						<td><c:out value="${medicalproduct.limitForFunding}" /> zł</td>
						<td><c:out value="${medicalproduct.patientsShares}" />%</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>





<%@ include file="common/footer.jsp"%>
<%@ include file="common/header.jsp"%>
<%@ include file="inputForms.jsp"%>

<div class="container">
	<div class="jumbotron">
		<h4>${inputMedicalDoctor}</h4>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">Kod</th>
					<th scope="col">Nazwa wyrobu</th>
					<th scope="col">Okres</th>
					<th scope="col">Limit</th>
					<th scope="col">Udział</th>
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
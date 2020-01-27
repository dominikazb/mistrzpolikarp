<%@ include file="common/header.jsp"%>
<%@ include file="inputForms.jsp"%>

<div class="container">
	<div class="jumbotron">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Lp.</th>
					<th>Nazwa produktu</th>
					<th>Okres użytkowania</th>
					<th>Limit finansowania</th>
					<th>Udział własny</th>
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
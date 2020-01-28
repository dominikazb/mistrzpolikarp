<%@ include file="common/header.jsp"%>
<%@ include file="inputForms.jsp"%>

<div class="container">
	<div class="jumbotron">
		<h4>${inputMedicalProduct}</h4>
		<h6>
		Okres: raz <c:out value="${chosenMedicalProduct.timeOfUse}" />   |   
		Limit finansowania: <c:out value="${chosenMedicalProduct.limitForFunding}" /> zł    |    
		Udział pacjenta: <c:out value="${chosenMedicalProduct.patientsShares}" />%</h6>
		<table class="table table-striped">
			<tbody>
			
				<tr><th scope="col">Mogą wypisać:</th></tr>
				
				<c:forEach
					items="${listOfMedicalDoctorsThatCanPrescribeParticularProduct}"
					var="medicalDoctor">
					<tr>
						<td class="doctor"><c:out value="${medicalDoctor}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>

<%@ include file="common/footer.jsp"%>
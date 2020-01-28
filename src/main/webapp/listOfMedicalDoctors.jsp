<%@ include file="common/header.jsp"%>
<%@ include file="inputForms.jsp"%>

<div class="container">
	<div class="jumbotron">
	<h4>${inputMedicalProduct}</h4>
		<table class="table table-striped">
			<tbody>
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
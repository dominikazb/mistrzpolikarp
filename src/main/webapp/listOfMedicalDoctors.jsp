<%@ include file="common/header.jsp"%>







<%@ include file="inputForms.jsp"%>





<div class="container">
<div class="jumbotron">



				
				
								<table class="table table-striped">
					<thead>
						<tr>
							<th>${inputMedicalProduct}</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${listOfMedicalDoctorsThatCanPrescribeParticularProduct}" var="medicalDoctor">
							<tr>
								<td><c:out value="${medicalDoctor}" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

</div>
</div>


<%@ include file="common/footer.jsp"%>
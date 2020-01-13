<%@ include file="common/header.jsp"%>
<%@ include file="inputForms.jsp"%>

<div class="container">
	<div class="jumbotron">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>${inputMedicalDoctor}</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listOfMedicalProductsForParticularSpecialty}"
					var="product">
					<tr>
						<td><c:out value="${product}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>

<%@ include file="common/footer.jsp"%>
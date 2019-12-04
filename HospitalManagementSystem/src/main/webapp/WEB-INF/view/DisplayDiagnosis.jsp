<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Diagnosis Details!!!</h1>
	<table border="1" cellpadding="5">

		<tr>
			<th>Patient Id</th>
			<th>Diagnosis Id</th>
			<th>Symptom</th>
			<th>Diagnosis Provided</th>
			<th>Administered By</th>
			<th>Date of Diagnosis</th>
			<th>Follow Up</th>
			<th>Date of Follow Up</th>
			<th>Bill Amount</th>
			<th>Card No</th>
			<th>Mode Of Payment</th>
		</tr>
		<c:forEach var="list" items="${listdiagnosis}">
			<tr>
				<td><c:out value="${list.patientId}" /></td>
				<td><c:out value="${list.diagnosisId}" /></td>
				<td><c:out value="${list.symptoms}" /></td>
				<td><c:out value="${list.diagnosis}" /></td>
				<td><c:out value="${list.admin}" /></td>
				<td><c:out value="${list.dateOfDiagnosis}" /></td>
				<td><c:out value="${list.followUp}" /></td>
				<td><c:out value="${list.dateOfFollowUp}" /></td>
				<td><c:out value="${list.billAmount}" /></td>
				<td><c:out value="${list.cardNo}" /></td>
				<td><c:out value="${list.modeOfPayment}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
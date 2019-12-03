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
	Symptoms!!!
	${diagnosis.symptoms}
	 <%-- <table border="1" cellpadding="5">
            <h2>List of Employees</h2>
            <tr>
                <th>Emp No</th>
                <th>Employee Name</th>
                <th>Department</th>
                <th>Salary</th>
            </tr>
            <c:forEach var="list" items="${symptomslist}">
                <tr>
                    <td><c:out value="${list.diagnosisId}" /></td>
                    <td><c:out value="${list.patientId}" /></td>
                    <td><c:out value="${list.symptoms}" /></td>
                    <td><c:out value="${list.diagnosis}" /></td>
                </tr>
            </c:forEach>
        </table> --%> 
</body>
</html>
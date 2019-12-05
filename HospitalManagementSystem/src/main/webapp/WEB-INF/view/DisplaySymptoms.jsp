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
	<h1>Symptoms!!!</h1>

	<c:forEach var="list" items="${diagnosis}">
		<c:url value="/displayHistory" var="url">
			<c:param name="patientid" value="${list.patientId}" />
			<c:param name="symptom" value="${list.symptoms}" />
		</c:url>
		<li><a href="${url}"><c:out value="${list.symptoms}" /></a></li>
	</c:forEach>

	<%-- <c:forEach var="list" items="${diagnosis}">
	<c:out value="hai"></c:out>
		<c:url value="/displayHistory" var="url">
			<c:param name="diagnosisid" value="${list.diagnosisId}" />
			<c:param name="patientid" value="${list.patientId}" />
			<c:param name="symptom" value="${list.symptoms}" />
		</c:url>
		<c:set var="nameLookup" value="${list.symptoms}"  />
		<c:out value="${nameLookup}"></c:out>
		<c:if test="${list.symptoms} != nameLookup">
		<c:out value="hai"></c:out>
			<li><a href="${url}"><c:out value="${list.symptoms}" /></a></li>
		</c:if>
	</c:forEach> --%>


	<%-- <c:if test="${not empty entries}">
		<c:forEach var="entry" items="${entries}">
			<!-- <c:set var="nameLookup" value="${entry.name}"  /> -->
			<c:if test="${entry.name} == nameLookup">
                        ${nameLookup}
                    </c:if>
		</c:forEach>
	</c:if> --%>


	<%-- <c:forEach var="instState" items="${unique}" varStatus="loop">
        <c:out value="${instState}"/>
        <c:if test="${!loop.last}">,</c:if>
    </c:forEach> --%>

</body>
</html>
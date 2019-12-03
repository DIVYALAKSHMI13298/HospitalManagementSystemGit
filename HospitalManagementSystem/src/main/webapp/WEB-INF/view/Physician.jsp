<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form:form action="search" method="get">
<table>
<tr>
<td><form:label path="DepartmentName">DepartmentName</form:label></td>
<td><form:input path="department"/></td>
</tr>

<tr>
<td><td><form:label path="state">State</form:label></td>
<td><form:select path="state">
    <option value="Tamil nadu">Tamil nadu</option>
    <option value="andra pradesh">andra pradesh</option>
    <option value="Karnataka">Karanataka</option>
</form:select></td>

</tr>
<tr>
<td><td><form:label path="InsurancePlan">Insurance Plan:</form:label></td>
<td><form:select path="option">
    <option value="privatepolicies">andra pradesh</option>
    <option value="freepolicies">Karanataka</option>
</form:select>
</td>
</tr>
</form:form>
<tr><td><input type="submit" value="submit"/></td>
<td><input type="reset" value="Reset"/></td>
</table>


</body>
</html>
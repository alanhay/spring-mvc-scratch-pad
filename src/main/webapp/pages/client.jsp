<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://certait.co.uk/tags/spring-bootstrap" prefix="t"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>home Page</title>
</head>

<form:form modelAttribute="client" role="form" class="form-horizontal">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">Client Details</h3>
		</div>
		<div class="panel-body">

			<t:input path="forename" cssClass="input-sm" placeHolder="Forename"
				required="true" label="Forename" />

			<t:input path="surname" cssClass="input-sm" placeHolder="Surname"
				required="true" label="Surname" />

			<t:input path="emailAddress" cssClass="input-sm"
				placeHolder="Email Address" required="true" label="Email Address"
				helpText="Help me!" />

		</div>
		<div class="panel-footer">
			<input type="submit" class="btn btn-primary" value="Save" />
		</div>
	</div>
</form:form>

<t:form modelAttribute="client">
	<t:input path="forename" cssClass="input-sm" placeHolder="Forename"
		required="true" label="Forename" />

	<t:input path="surname" cssClass="input-sm" placeHolder="Surname"
		required="true" label="Surname" />

	<t:input path="emailAddress" cssClass="input-sm"
		placeHolder="Email Address" required="true" label="Email Address"
		helpText="Help me!" />
</t:form>

</body>
</html>
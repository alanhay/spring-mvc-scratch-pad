<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://certait.co.uk/tags/spring-bootstrap" prefix="t"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Client Details</title>
</head>

<div class="row">
	<div class="col-md-12">
		<t:form modelAttribute="client" errorMessagesType="tooltip">

			<t:input path="forename" cssClass="input-sm" placeHolder="Forename"
				controlColumnClass="col-lg-2" required="true" label="Forename" />

			<t:input path="surname" cssClass="input-sm" placeHolder="Surname"
				controlColumnClass="col-lg-3" required="true" label="Surname" />

			<t:input path="emailAddress" cssClass="input-sm" prependText="@"
				placeHolder="Email Address" required="true" label="Email Address"
				controlColumnClass="col-lg-4" helpText="Help me!" />

			<t:radioGroup items="${genders}" path="gender" label="Gender"
				itemLabel="name" />

			<t:select label="Age" items="${ages}" cssClass="input-sm" path="age"
				controlColumnClass="col-lg-2" />

		</t:form>
	</div>
</div>
</body>
</html>
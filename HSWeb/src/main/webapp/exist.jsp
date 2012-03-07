<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
    <%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>exist</title>
</head>
<body>
<f:view>
	<h:form>
		<h1>Register Failure</h1>
		<h:outputLabel value="User #{user.name} already exists!Please change another username!"></h:outputLabel>
		<a href="register.jsf">back</a>
	</h:form>
</f:view>
</body>
</html>
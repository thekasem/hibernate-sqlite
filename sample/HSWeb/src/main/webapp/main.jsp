<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
    <%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>main</title>
</head>
<body>
<f:view>
	<h:form>
	<h1>Login Success</h1>
		<h:outputText value="#{user.name},welcome to login!"></h:outputText>
		<h:outputLink value="login.jsf">back</h:outputLink>
	</h:form>
</f:view>
</body>
</html>
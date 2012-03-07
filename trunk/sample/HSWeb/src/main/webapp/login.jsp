<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
    <%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
</head>
<body>
<f:view>
	<h:form>
	<h1>Login</h1>
		<h:outputLabel value="username" for="name"></h:outputLabel>
		<h:inputText id="name" value="#{user.name}"></h:inputText>
		<h:outputLabel value="password" for="pass"></h:outputLabel>
		<h:inputSecret id="pass" value="#{user.password}"></h:inputSecret>
		<h:commandButton action="#{user.login}" value="login"></h:commandButton>
		<h:commandButton action="register" value="register"></h:commandButton>
		<br>
		<hr>
		<h:outputText value="username:apple"></h:outputText><br>
		<h:outputText value="password:123456"></h:outputText>
	</h:form>
</f:view>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
    <%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>register</title>
</head>
<body>
<f:view>
	<h:form>
		<h1>Register</h1>
		<ul>
		<li>
		<h:outputLabel value="username" for="name"></h:outputLabel>		
		<h:inputText id="name" value="#{user.name}"></h:inputText>
		</li>
		<li>
		<h:outputLabel value="password" for="pass"></h:outputLabel>
		<h:inputSecret id="pass" value="#{user.password}"></h:inputSecret>		
		</li>
		<li>
		<h:commandButton action="#{user.register}" value="register" onclick="return confirm('register?');"></h:commandButton>
		<h:outputLink value="login.jsf">back</h:outputLink>		
		</li>
		</ul>
	</h:form>
</f:view>
</body>
</html>
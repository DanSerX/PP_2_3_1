<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
  <title>Input form</title>
  <style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
<h2>User Info</h2>
<br>
<form:form action="saveUser" modelAttribute="user">
  <form:hidden path="id"/>
  Name <form:input path="name"/>
  <br><br>
  Surname <form:input path="surname"/>
  <br><br>
  Age <form:input path="age"/>
  <br><br>
  Phone <form:input path="phone"/>
  <br><br>
  Email <form:input path="email"/>
  <br><br>
  <input id="button4" type="submit" value="OK">
</form:form>
</body>
</html>
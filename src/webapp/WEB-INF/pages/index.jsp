<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Main page</title>
    <style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
<table>
    <tr>
        <th>Name</th>
        <th>SecondName</th>
        <th>Age</th>
        <th>Phone</th>
        <th>Email</th>
        <th>Operations</th>
    </tr>
    <c:forEach var="user" items="${allUsers}">
        <c:url var="updateButton" value="/updateInfo">
            <c:param name="userId" value="${user.id}"/>
        </c:url>
        <c:url var="deleteButton" value="/deleteUser">
            <c:param name="userId" value="${user.id}"/>
        </c:url>
        <tr>
            <td>${user.name}</td>
            <td>${user.surname}</td>
            <td>${user.age}</td>
            <td>${user.phone}</td>
            <td>${user.email}</td>
            <td>
                <input id="button1" type="button" value="Update" onclick="window.location.href = '${updateButton}'"/>
                <input id="button2" type="button" value="Delete" onclick="window.location.href = '${deleteButton}'"/>
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<input id="button3" type="button" value="Add" onclick="window.location.href = 'addNewUser'"/>
</body>
</html>
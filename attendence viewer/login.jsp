<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Login</title>
</head>
<body>
    <h2>Student Login</h2>

    <form action="jsp/processLogin.jsp" method="post">
        Student ID: <input type="text" name="studentId" required><br>
        Name: <input type="text" name="studentName" required><br>
        <input type="submit" value="Login">
    </form>

    <%
        String error = request.getParameter("error");
        if ("1".equals(error)) {
    %>
        <p style="color:red;">Invalid credentials or missing data.</p>
    <%
        }
    %>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    // Session-based access control
    String studentId = (String) session.getAttribute("studentId");
    String studentName = (String) session.getAttribute("studentName");

    if (studentId == null || studentName == null) {
        // No valid session → redirect to login
        response.sendRedirect("../login.jsp");
        return;
    }
%>

<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
</head>
<body>
    <h2>Attendance Dashboard</h2>

    <p><strong>ID:</strong> <%= studentId %></p>
    <p><strong>Name:</strong> <%= studentName %></p>

    <%
        Integer attendancePercent = (Integer) session.getAttribute("attendancePercent");
        if (attendancePercent == null) {
            attendancePercent = 0;
        }
    %>

    <p><strong>Attendance:</strong> <%= attendancePercent %> %</p>

    <%
        // Conditional checks on attendance
        if (attendancePercent >= 75) {
    %>
        <p style="color:green;">Status: Eligible for exams.</p>
    <%
        } else {
    %>
        <p style="color:red;">Status: Short attendance! Please contact your advisor.</p>
    <%
        }
    %>
</body>
</html>


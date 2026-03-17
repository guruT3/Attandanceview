<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String studentId = request.getParameter("studentId");
    String studentName = request.getParameter("studentName");

    // Simple example "authentication"
    if (studentId != null && !studentId.isEmpty()
            && studentName != null && !studentName.isEmpty()) {

        // Store data in session
        session.setAttribute("studentId", studentId);
        session.setAttribute("studentName", studentName);

        // Example: store dummy attendance in session or elsewhere
        Integer attendance = 85; // pretend we fetched from DB
        session.setAttribute("attendancePercent", attendance);

        response.sendRedirect("dashboard.jsp");
    } else {
        response.sendRedirect("../login.jsp?error=1");
    }
%>

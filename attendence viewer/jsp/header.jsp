<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div style="background:#f0f0f0; padding:10px; margin-bottom:20px;">
    <span>Attendance Viewer</span>
    <span style="float:right;">
        <%
            String name = (String) session.getAttribute("studentName");
            if (name != null) {
        %>
            Welcome, <%= name %> |
            <a href="logout.jsp">Logout</a>
        <%
            }
        %>
    </span>
</div>

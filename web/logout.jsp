<!DOCTYPE html>
<html id="top">
    <body>
        <script>confirm("Are you sure you want to logout?");</script>
<%
session.invalidate();
response.sendRedirect("bulletin.jsp");
%>
    </body>
</html> 
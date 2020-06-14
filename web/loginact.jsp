<!DOCTYPE html>
<html id="top">
<body>
<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
           
    <%
       String id_ = request.getParameter("id");
       String password = request.getParameter("password");
       String type;
       String id=id_.toLowerCase();
       String name;
       
       String query = "select *from login where id='"+id+"' and password='"+password+"'";
       Statement st = connection.createStatement();
       ResultSet rs = st.executeQuery(query);
       if(rs.next())
       {
           type=rs.getString("type");
           if(type.endsWith("admin"))
            {
                name=rs.getString("name");
                session.setAttribute("user", name);
                response.sendRedirect("adminhome.jsp?msg=success");   
            }
           else if(type.endsWith("teacher"))
            {
                name=rs.getString("name");
                session.setAttribute("user", name);
                response.sendRedirect("teacherhome.jsp?msg=success");   
            }
           else if(type.endsWith("student"))
            {
                name=rs.getString("name");
                session.setAttribute("user", name);
                response.sendRedirect("studenthome.jsp?msg=success");   
            }
       }
       else
       {%>
           <script>alert("Enter correct login information!");</script>
            <%response.sendRedirect("login.jsp?m1=Failed");
       }
    %>
    </body>
    </html>

<!DOCTYPE html>
<html lang="en">
    <body>
        <%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

<%
        
        
        String sql="select * from sample"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(sql);
        
        String image = null;
        
        while(rs.next()){
            
            image = rs.getString("image");
            
        }
	%>
        
        <div class="style7" style="margin:10px 13px 10px 13px;" >
    <img height="200" width="120" src="Gallery\<%=image%>"></img></div>
    </body>
</html>


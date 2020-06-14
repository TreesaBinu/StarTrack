<%@page import="com.sun.xml.internal.bind.CycleRecoverable.Context"%>
<%@page import="com.example.MainForumRecordBean" %>
<%@ include file="connect.jsp" %>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert an Image into MySQL Database</title>
    </head>
    <body>
         <%
PreparedStatement pstmt = null;
ResultSet rs=null;
FileInputStream fis=null;
String name=request.getParameter("name");
String myloc=request.getParameter("myimg");
//out.print("First Name :"+fname+"myloc="+myloc);
try{
File image= new File(myloc);
pstmt = connection.prepareStatement("insert into image(name,image) " + "values(?,?)");
pstmt.setString(1, name);
fis=new FileInputStream(image);
pstmt.setBinaryStream(2, (InputStream) fis, (int) (image.length()));
int count = pstmt.executeUpdate();
if(count>0)
{
out.println("inserted successfully");
}
else
{
out.println("not successfully");
}
}
catch(Exception ex)
{
ex.printStackTrace();
}
finally{
try{
if(rs!=null){
rs.close();
rs= null;
}
if(pstmt !=null)
{
pstmt.close();
pstmt=null;
}
if(connection!=null)
{
connection.close();
connection=null;
}
}
catch(Exception e)
{
e.printStackTrace();
}
}
%>
    </body>
</html>

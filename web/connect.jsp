<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%
	Connection connection = null;
 	try {
     	
	  	Class.forName("org.apache.derby.jdbc.ClientDriver");	
		connection = DriverManager.getConnection("jdbc:derby://localhost:1527/project","root","root");
                String sql="";
                if(connection!=null)
                 {
                     System.out.println("Connected to database");
                 } 
                else
                    {
                        System.out.println("Not connected to database");
                    }

	}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ include file="connect.jsp" %>
<%
    Statement statement = null;
    ResultSet resultSet = null;
    String year=request.getParameter("year");
    String degree=request.getParameter("degree");
    String department=request.getParameter("dept");
    String section=request.getParameter("section");
    String subject=request.getParameter("subject");
%>

<!DOCTYPE html>
<html id="top">
    <head>
        <title>Stella Maris College || View and Edit Marks</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link type="text/css" rel="stylesheet" href="./css/style1.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    </head>
    <body id="Student Home">
        <form>
            <div>
                <header>
                <a href="#top">
                    <div class="logo" style="display:inline-block;">
                        <img src="logo.png">
                    </div>
                </a>
                <nav>
                    <ul>
                        <li><a class="active" href="logout.jsp">Logout</a></li>
                    </ul>
                </nav>
                </header>
                            <div class="sidenav">
                            <hr class="navb">
                            <hr class="navb">
                                    <a href="markview.jsp">View Mark</a>
                                    <a href="achievementupload.jsp">Achievements</a>
                                    <a href="studentmentoring.jsp">Mentoring</a>
                                    <hr class="navb">
                            </div>
                <div class="content" style="display: block;">
                    <div class="form-div animated flip">
                    
                        <div class="userdetails"><h2>user</h2></div>
                        <div class="details">
                            <%=subject%>
                            <div>
                                <table class="view-table">
                                    <tr>
                                        <th>Department Number</th>
                                        <th>CA 1</th>
                                        <th>CA-IT</th>
                                        <th>CA</th>
                                        <th>Semester</th>
                                        <th>Final Marks</th>
                                    </tr>
                                    <%
                                        try{
                                            
                                        statement=connection.createStatement();
                                        String sql ="select * from marks";
                                        resultSet = statement.executeQuery(sql);
                                        while(resultSet.next()){
                                    %>  
                                    <tr>
                                        <td><%=resultSet.getString("id") %></td>
                                        <td><%=resultSet.getString("ca1") %></td>
                                        <td><%=resultSet.getString("ca2") %></td>
                                        <td><%=resultSet.getString("internals") %></td>
                                        <td><%=resultSet.getString("semester") %></td>
                                        <td><%=resultSet.getString("finals") %></td>
                                    </tr>
                                    <%
                                        }
                                            connection.close();
                                        } catch (Exception e) {
                                        e.printStackTrace();
                                        }
                                    %>
                                </table>
                            </div>
                            </div>
                    </div>
                </div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <footer class="text-center">
                <br/>
                <p> © Copyright Stella Maris College <br/> 17, Cathedral Road,Chennai - 600086. </p>
            </footer>
            </div>
        </form>
    </body>
</html>
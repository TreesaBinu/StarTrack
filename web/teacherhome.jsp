<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html id="top">
    <head>
        <title>Stella Maris College||Teacher Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link type="text/css" rel="stylesheet" href="./css/style1.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    </head>
    <body id="Student Home">
        
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
				<a href="mark.jsp">View Mark</a>
				<a href="achievementupload.jsp">Achievements</a>
				<a href="studentmentoring.jsp">Mentoring</a>
				<hr class="navb">
			</div>
            <div class="content" style="display: block;">
                <div class="form-div animated flip">
                <%
                    String user = session.getAttribute("user").toString();
                %>
                    <div class="userdetails"><h2><%=user%></h2></div>
                    <div class="details">
                        <h3>You can use this website for the following:</h3>
                            <ul>
                            <li>To view and delete the achievements of a student after proper cross checking.</li>
                            <li>Marks of students can be updated.</li>
                            <li>Marks can be viewed of individual students and of the whole class.</li>
                            <li>The overall marks of a class can be calculated in the order of their grades</li>
                            <li>The General Proficiency holders can be determined</li>
                        </ul>
                    </div>
                </div>
            </div>
        <footer class="text-center">
            <br/>
            <p> © Copyright Stella Maris College <br/> 17, Cathedral Road,Chennai - 600086. </p>
        </footer>
        </div>
    </body>
</html>
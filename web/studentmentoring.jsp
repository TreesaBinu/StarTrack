<!DOCTYPE html>
<html id="top">
    <head>
        <title>Stella Maris College||Student Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link type="text/css" rel="stylesheet" href="style1.css">
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
                    <li><a class="active" href="">Logout</a></li>
		</ul>
            </nav>
            </header>
			<div class="sidenav">
			<hr class="navb">
			<hr class="navb">
                                <a href="studenthome.jsp">Home</a>
				<a href="markview.jsp">View Marks</a>
				<a href="#achievementupload.jsp">Upload Achievements</a>
				<hr class="navb">
			</div>
            <div class="form-div animated flip">
        <%
        String user = session.getAttribute("user").toString();
        %>
        <h2>Welcome <%=user%></h2>
       
    </div>
        </div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <footer class="text-center">
            <br/>
            <p> © Copyright Stella Maris College <br/> 17, Cathedral Road,Chennai - 600086. </p>
        </footer>
    </body>
</html>
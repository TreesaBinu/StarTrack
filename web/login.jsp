<!DOCTYPE html>
<html id="top">
    <head>
        <title>Stella Maris College||Login Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link type="text/css" rel="stylesheet" href="./css/style.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    </head>
    <body id="login">
        <%
        if (request.getParameter("m1") != null) {%>
        <script>alert('Enter correct login information!');</script> 
        <%}%>
        <div>
            <header>
	    <a href="#top">
                <div class="logo" style="display:inline-block;">
                    <img src="logo.png">
                </div>
            </a>
            </header>
        </div>
        
        <br><br><br><br><br><br>
        <form action="loginact.jsp" method="post" onsubmit="return validate()">
        <div class="form-div animated flip">
        <img src="pictures\user.png">
        <h2> Login </h2>
        
            <input type="text" placeholder="User ID" name="id" required="" autocomplete="off">
            <br>
            <input type="password" placeholder="Password" name="password" required="">
            <br>
            <input type="submit" value="Login">
            <br>
            <br>
        
        </div>
        </form><br>
        <footer class="text-center">
            <br/>
            <p> © Copyright Stella Maris College <br/> 17, Cathedral Road,Chennai - 600086. </p>
        </footer>
    </body>
</html>
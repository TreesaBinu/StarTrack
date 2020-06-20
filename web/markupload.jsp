<!DOCTYPE html>
<html id="top">
    <head>
        <title>Stella Maris College||Upload Mark</title>
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
				<a href="markview.jsp">Home</a>
				<a href="achievementupload.jsp">Achievements</a>
				<a href="studentmentoring.jsp">Mentoring</a>
				<hr class="navb">
			</div>
            <div class="content" style="display: block;">
                <div class="form-div animated flip">
                
                    <div class="userdetails"><h2>User</h2></div>
                    <div class="details">
                        <h3> Marks</h3>
                        ---------------------
                        <br><br>
                        <select name="year" id="elements">
                            <option default>Select year</option>
                            <option value="19">First year</option>
                            <option value="18">Second year</option>
                            <option value="17">Third year</option>
                        </select>
                        <br>
                        <select name="degree" id="elements">
                            <option default>Select degree</option>
                            <option value="u">UG</option>
                            <option value="p">PG</option>
                        </select>
                        <br>
                        <select name="department" id="elements">
                            <option default>Select departmrnt</option>
                            <option value="cs">Computer Application</option>
                        </select>
                        <br>
                        <select name="section" id="elements">
                            <option default>Select Section</option>
                            <option value="a">A</option>
                            <option value="b">B</option>
                        </select>
                        <br>
                        <input type="submit" value="UPLOAD" name="upload" />
                        <br>
                        <input type="submit" value="EDIT" name="edit" />
                        <br>
                        <input type="submit" value="VIEW" name="view" />
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
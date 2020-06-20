<!DOCTYPE html>
<html id="top">
    <head>
        <title>Stella Maris College || Student Marks</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link type="text/css" rel="stylesheet" href="./css/style1.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
        <script type="text/javascript">
            var created = 0;
            function displayAccordingly() {

                if (created == 1) {
                removeDrop();
            }

            //Call mainMenu the main dropdown menu
            var mainMenu = document.getElementById('semester');

                //Create the new dropdown menu
                var whereToPut = document.getElementById('subject');
                var newDropdown = document.createElement('select');
                newDropdown.setAttribute('id',"subject");
                whereToPut.appendChild(newDropdown);

                if (semester.value == "1") {

                    var language=document.createElement("option");
                    language.text="Language";
                    newDropdown.add(language,newDropdown.options[ln]);

                    //Add an option called "Banana"
                    var english=document.createElement("option");
                    english.text="English";
                    newDropdown.add(english,newDropdown.options[ec]);
                    
                    var cpractical=document.createElement("option");
                    cpractical.text="C-Practical";
                    newDropdown.add(cpractical,newDropdown.options[p112]);
                    
                    var multimedia=document.createElement("option");
                    multimedia.text="Multimedia-Practical";
                    newDropdown.add(multimedia,newDropdown.options[p212]);
                    
                    var ctheory=document.createElement("option");
                    ctheory.text="C-Theory";
                    newDropdown.add(ctheory,newDropdown.options[p014]);
                    
                    var accounts=document.createElement("option");
                    accounts.text="Financial Statement and Analysis";
                    newDropdown.add(accounts,newDropdown.options[fs15]);
                    
                    var evs=document.createElement("option");
                    evs.text="Environmental Studies";
                    newDropdown.add(evs,newDropdown.options[es12]);
                    
                    var ss=document.createElement("option");
                    ss.text="Soft Skills";
                    newDropdown.add(ss,newDropdown.options[ss12]);
                    
                    var ve=document.createElement("option");
                    ve.text="Value Education";
                    newDropdown.add(ve,newDropdown.options[et]);
                    
                } 
                else if (subject.value == "2") { //The person chose vegetabes

                    //Add an option called "Spinach"
                    var optionSpinach=document.createElement("option");
                    optionSpinach.text="Spinach";
                    newDropdown.add(optionSpinach,newDropdown.options[null]);

                    //Add an option called "Zucchini"
                    var optionZucchini=document.createElement("option");
                    optionZucchini.text="Zucchini";
                    newDropdown.add(optionZucchini,newDropdown.options[null]);

                }

                created = 1

            }

            function removeDrop() {
                var d = document.getElementById('semester');

                var oldmenu = document.getElementById('newDropdownMenu');

                d.removeChild(oldmenu);
            }
        </script>
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
				<a href="studenthome.jsp">Home</a>
				<a href="achievementupload.jsp">Achievements</a>
				<a href="studentmentoring.jsp">Mentoring</a>
				<hr class="navb">
			</div>
            <form method="post" id="mark" class="demoForm">
            <div class="content" style="display: block;">
                <div class="form-div animated flip">
                    <div class="userdetails"><h2>User</h2></div>
                    <div class="innercontent">
                        <table class="form-table center">
                            <th colspan="2">
                                Enter the details:
                            </th>
                            <tr>
                                <td>
                                    Department
                                </td>
                                <td>
                                    <select name="dept">
                                        <option value="">
                                            --Select--
                                        </option>
                                        <option value="cs">
                                            Computer Science
                                        </option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   Degree
                                </td>
                                <td>
                                    <select name="course">
                                        <option value="">
                                            --Select--
                                        </option>
                                        <option value="u">
                                            UG
                                        </option>
                                        <option value="p">
                                            PG
                                        </option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Year
                                </td>
                                <td>
                                    <select name="year">
                                        <option value="">
                                            --Select--
                                        </option>
                                        <option value="19">
                                            First Year
                                        </option>
                                        <option value="18">
                                            Second Year
                                        </option>
                                        <option value="17">
                                            Third Year
                                        </option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Semester
                                </td>
                                <td>
                                    <select name="semester" id="semester" onchange="displayAccordingly()">
                                        <option value="">
                                            --Select--
                                        </option>
                                        <option value="1">
                                            First Semester
                                        </option>
                                        <option value="2">
                                            Second Semester
                                        </option>
                                        <option value="3">
                                            Third Semester
                                        </option>
                                        </option>
                                        <option value="4">
                                            Fourth Semester
                                        </option>
                                        <option value="5">
                                            Fifth Semester
                                        </option>
                                        <option value="6">
                                            Sixth Semester
                                        </option>
                                    </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Subject
                                    </td>
                                    <td>
                                        <div id="subject"></div>
                                    </td>
                                </tr>
                            <tr>
                                <td>
                                    Section
                                </td>
                                <td>
                                    <select name="section">
                                        <option value="">
                                            --Select--
                                        </option>
                                        <option value="a">
                                            A
                                        </option>
                                        <option value="b">
                                            B
                                        </option>
                                        <option value="all">
                                            All Sections
                                        </option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="submit" value="VIEW & EDIT MARKS" name="markview" formaction="markviewedit.jsp" class="button">
                                </td>
                                <td>
                                    <input type="submit" value="UPLOAD MARKS" name="markupload" formaction="markupload.jsp" class="button">
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            </form>
        <footer class="text-center">
            <br/>
            <p> © Copyright Stella Maris College <br/> 17, Cathedral Road,Chennai - 600086. </p>
        </footer>
        </div>
    </body>
</html>
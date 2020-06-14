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
        <form method="post" id="mark" class="demoForm"> 
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
            <div class="content" style="display: block;">
                <div class="form-div animated flip">
                
                    <div class="userdetails"><h2>User</h2></div>
                    <div class="innercontent">
                        <table>
                            <tr>
                                <td>
                                    Department
                                </td>
                                <td>
                                    <select name="dept">
                                        <option value="">
                                            --Select--
                                        </option>
                                        <option value="comp">
                                            Computer Science
                                        </option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   Course
                                </td>
                                <td>
                                    <select name="course">
                                        <option value="">
                                            --Select--
                                        </option>
                                        <option value="ug">
                                            UG
                                        </option>
                                        <option value="pg">
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
                                        <option value="1">
                                            First Year
                                        </option>
                                        <option value="2">
                                            Second Year
                                        </option>
                                        <option value="3">
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
                                    <select name="choices[]" id="choices" multiple="multiple" size="6">
                                        <script>
                                            function removeAllOptions(sel, removeGrp) 
                                            {
                                                var len, groups, par;
                                                if (removeGrp) {
                                                    groups = sel.getElementsByTagName('optgroup');
                                                    len = groups.length;
                                                    for (var i=len; i; i--) {
                                                        sel.removeChild( groups[i-1] );
                                                    }
                                                }

                                                len = sel.options.length;
                                                for (var i=len; i; i--) {
                                                    par = sel.options[i-1].parentNode;
                                                    par.removeChild( sel.options[i-1] );
                                                }
                                            }

                                            function appendDataToSelect(sel, obj) {
                                                var f = document.createDocumentFragment();
                                                var labels = [], group, opts;

                                                function addOptions(obj) {
                                                    var f = document.createDocumentFragment();
                                                    var o;

                                                    for (var i=0, len=obj.text.length; i<len; i++) {
                                                        o = document.createElement('option');
                                                        o.appendChild( document.createTextNode( obj.text[i] ) );

                                                        if ( obj.value ) {
                                                            o.value = obj.value[i];
                                                        }

                                                        f.appendChild(o);
                                                    }
                                                    return f;
                                                }

                                                if ( obj.text ) {
                                                    opts = addOptions(obj);
                                                    f.appendChild(opts);
                                                } else {
                                                    for ( var prop in obj ) {
                                                        if ( obj.hasOwnProperty(prop) ) {
                                                            labels.push(prop);
                                                        }
                                                    }

                                                    for (var i=0, len=labels.length; i<len; i++) {
                                                        group = document.createElement('optgroup');
                                                        group.label = labels[i];
                                                        f.appendChild(group);
                                                        opts = addOptions(obj[ labels[i] ] );
                                                        group.appendChild(opts);
                                                    }
                                                }
                                                sel.appendChild(f);
                                            }

                                            // anonymous function assigned to onchange event of controlling select list
                                            document.forms['demoForm'].elements['category'].onchange = function(e) {
                                                // name of associated select list
                                                var relName = 'choices[]';

                                                // reference to associated select list 
                                                var relList = this.form.elements[ relName ];

                                                // get data from object literal based on selection in controlling select list (this.value)
                                                var obj = Select_List_Data[ relName ][ this.value ];

                                                // remove current option elements
                                                removeAllOptions(relList, true);

                                                // call function to add optgroup/option elements
                                                // pass reference to associated select list and data for new options
                                                appendDataToSelect(relList, obj);
                                            };

                                            // object literal holds data for optgroup/option elements
                                            var Select_List_Data = {

                                                // name of associated select list
                                                'choices[]': {

                                                    // names match option values in controlling select list
                                                    js: {
                                                        // optgroup label
                                                        'Free Scripts': {
                                                            text: ['Slider Control', 'Scrollers', 'Banner Rotator'],
                                                            value: ['slider', 'scrollers', 'banner']
                                                        },
                                                        'License': {
                                                            text: ['Scrolling Divs', 'Tooltips', 'Rotate Images'],
                                                            value: ['scroll', 'tooltips', 'rotate']
                                                        }
                                                    },
                                                    php: {
                                                        // example without optgroups
                                                        text: ['Random Image', 'Rotate Images', 'Form Class', 'Table Class', 'Order Form'],
                                                        value: ['random', 'rotate', 'form', 'table', 'order']
                                                    },
                                                    tuts: {
                                                        'Download Demos': {
                                                            // example without values
                                                            text: ['Iframes', 'PHP to JS', 'Unobtrusive JS']
                                                        },

                                                        'No Download': {
                                                            text: ['Object Literals', 'Initializing JS', 'JS Errors']
                                                        }
                                                    }
                                                }

                                            };

                                            // populate associated select list when page loads
                                            window.onload = function() {
                                                var form = document.forms['mark'];

                                                // reference to controlling select list
                                                var sel = form.elements['year'];
                                                sel.selectedIndex = 0;

                                                // name of associated select list
                                                var relName = 'choices[]';
                                                // reference to associated select list
                                                var rel = form.elements[ relName ];

                                                // get data for associated select list passing its name
                                                // and value of selected in controlling select list
                                                var data = Select_List_Data[ relName ][ sel.value ];

                                                // add options to associated select list
                                                appendDataToSelect(rel, data);
                                            };
                                            </script>
                                        </select>
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
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="submit" name="VIEW MARKS" value="markview">
                                </td>
                                <td>
                                    <input type="submit" name="ULOAD MARKS" value="markupload">
                                </td>
                            </tr>
                        </table>
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
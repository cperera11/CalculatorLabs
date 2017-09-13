<%-- 
    Document   : lab2
    Created on : Sep 12, 2017, 11:40:33 PM
    Author     : CPerera
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <style type="text/css">
            .container {
                width: 150px;
                clear: both;
            }
            .container input {
                width: 80%;
                clear: both;
            } </style>

    </head>
    <body>

        <h2 style="color:blue;">Rectangle Area Calculator</h2>
        <div class="container" >
            <img src="https://www.montereyinstitute.org/courses/DevelopmentalMath/COURSE_TEXT2_RESOURCE/U07_L2_T2_text_final_3_files/image006.jpg" style="width:250px">
            <form name="form2" id="form2" method="POST" action="Lab2Controller">
                Length: <input type="number" value="" name="length"><br><br>
                Width: <input type="number" value="" name="width"><br><br>
                <p id ="area"> ${msg} </p>
                <input type="submit" name="submit" value="Calculate Area"> <br><br>

                </div>

            </form>
    </body>
</html>

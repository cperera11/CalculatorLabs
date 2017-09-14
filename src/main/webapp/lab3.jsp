<%-- 
    Document   : lab3
    Created on : Sep 13, 2017, 12:13:38 AM
    Author     : CPere
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

        <h3> Result: ${msg}</h3><br>

        <h2 style="color:blue;">Rectangle Area Calculator</h2>
        <div class="container" >
            <img src="https://www.montereyinstitute.org/courses/DevelopmentalMath/COURSE_TEXT2_RESOURCE/U07_L2_T2_text_final_3_files/image006.jpg" style="width:250px">
            <form name="form1" id="form1" method="POST" action="Lab3Controller?calcType=rectangle">
                Length: <input type="number" value="" name="length"><br><br>
                Width: <input type="number" value="" name="width"><br><br>
                <input type="submit" name="submit" value="Calculate Area"> <br><br>
                </div>

                <h2 style="color:blue;">Circle Area Calculator</h2>
                <div class="container" >
                    <img src="https://www.calculateme.com/img/formulas/circle-area.png" style="width:150px">
                    <form name="form2" id="form2" method="POST" action="Lab3Controller?calcType=circle">
                        Radius: <input type="number" value="" name="radius"><br><br>
                        <input type="submit" name="submit" value="Calculate Area"> <br><br>
                        </div>

                        <h2 style="color:blue;">Hypotenuse Side of a Triangle Calculator</h2>
                        <div class="container" >
                            <img src="http://www.mathsteacher.com.au/year10/ch15_trigonometry/01_ratios/Image3123.gif" style="width:250px">
                            <form name="form3" id="form3" method="POST" action="Lab3Controller?calcType=triangle">
                                Adjacent Side: <input type="number" value="" name="adjacent"><br><br>
                                Opposite Side: <input type="number" value="" name="opposite"><br><br>
                                <input type="submit" name="submit" value="Calculate Area"> <br><br>
                                </div>
                                <h3> Result: ${msg}</h3><br>

                                </body>
                                </html>

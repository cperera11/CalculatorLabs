<%-- 
    Document   : lab1
    Created on : Sep 12, 2017, 8:18:17 PM
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
        <form name="form1" id="form1" method="POST" action="lab1Controller">
            Length: <input type="number" value="" name="length"><br><br>
            Width: <input type="number" value="" name="width"><br><br>
            <input type="submit" name="submit" value="Calculate Area">
            </div>
            
        </form>
        
    </body>
</html>

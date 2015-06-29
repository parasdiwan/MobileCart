<%-- 
    Document   : image
    Created on : Jul 18, 2013, 1:19:38 AM
    Author     : paras diwan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
     <script type="text/javascript">
function changeImage()
{
  var img = document.getElementById("img1");
   img.src = images[x];
   x++;
if(x >= images.length){
        x = 0;
    }
	setTimeout("changeImage()", 3000);
}
var images = [],
x = 0;
images[0] = "hd1.jpg";
images[1] = "hd2.jpg";
images[2] = "hd3.jpg";
images[3] = "hd4.jpg";
images[4] = "hd5.jpg";
setTimeout("changeImage()", 3000);
 </script>
        <style type="text/css">
            #div91{

            float:left;
            position:absolute;
           margin-top:40px;
           border-style:solid;
           border-width:4px;
            }

        </style>
 </head>
    <body>
       <div id="div91">
<img id="img1" src="hd1.jpg">
</div>
    </body>
</html>

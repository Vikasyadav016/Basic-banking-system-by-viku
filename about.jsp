<%-- 
    Document   : about
    Created on : 15 Jan, 2021, 11:38:38 AM
    Author     : vikas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>! About Us !</title>
        <style>
            
        .responsive {
  width: 100%;
  max-width: 1345px;
  
}
            </style>
            <style>
                body, html {
	
	font-family: Roboto, Arial, helvetica, sans-serif;
       
}

a {
	outline: none;
}

.navbar-container {
	text-align: center;
	background-color: #009688;
	box-shadow: 0px -20px 5px 20px #333333;
	padding: 10px;
	font-size: 0;
}

.navbar-container ul {
	margin: 0;
	padding: 0;
	text-align: right;
	display: inline-block;
	vertical-align: middle;
}

.navbar-container ul li {
	display: inline-block;
	font-size: 16px;
}

.navbar-container ul li a {
	color: #ffffff;
	text-decoration: none;
	display: inline-block;	
	padding: 10px;
	transition: color 0.5s;
}

.navbar-container ul li .underline {
	height: 3px;
	background-color: transparent;
	width: 0%;
	transition: width 0.2s, background-color 0.5s;
	margin: 0 auto;
}



.navbar-container ul li:hover .underline {
	background-color: white;
	width: 100%;
}

.navbar-container ul li:hover a {
}

.navbar-container ul li:active a {
	transition: none;
	color: rgba(255,255,255,0.76);
}

.navbar-container ul li:active .underline {
	transition: none;
	background-color: rgba(255,255,255,0.76);
}
</style>
<style>
    .container{
        position: relative;
        text-align: center;
        color: #990000;
        font-weight: bold;
        
    }
    .centered{
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
    }
    .top-left{
        position: absolute;
        top: 8px;
        left: 16px;
        color: #006600;
        font-weight: bolder;
    }
    .bottom-right{
        position: absolute;
        bottom: 8px;
        right: 16px;
        color: #000000;
        font-weight: bolder;
     
    }
    .bottom-left{
        position: absolute;
        bottom: 8px;
        left: 16px;
        color: #680000;
    }
</style>
    
    </head>
    
        <body>
        
            
            <div class="navbar-container">
	<ul>
		<li class="nav-link active-link">
			<a onclick="location.href ='index.html'">Home
			</a>
			<div class="underline"></div>
		</li>
                <li class="nav-link">
                    <a onclick="location.href ='customerdata.jsp'">All Customer</a>
			<div class="underline"></div>
		</li>
                <li class="nav-link">
			<a onclick="location.href ='transfer.jsp'">Money Transfer</a>
			<div class="underline"></div>
		</li>
		<li class="nav-link">
                    <a href="#" onclick="myFunction()">About Technology Used</a>
			<div class="underline"></div>
		</li>
		<li class="nav-link">
			<a href="#" onclick="myProject()">Project Details</a>
			<div class="underline"></div>
		</li>
		<li class="nav-link">
			<a href="#" onclick="myAbout()">Contact Us</a>
			<div class="underline"></div>
		</li>
                <li class="nav-link">
			<a href="#" onclick="myService()">Services</a>
			<div class="underline"></div>
		</li>
                
	</ul>
            </div>
            <div class="container">
           <img src="3.jpg" width="1347px" height="550px" alt="placeholder image" class="responsive img-fluid"/>
           <div class="centered">
               <div id="myDIV"  style="color: #ffffff">
                   <p style="font-weight:bolder">In the designe & development of this website mostly used programmig languages are</p>
                <p style="font-weight:bolder">Bootstrap , Javascript  and Java</p>.
                </div>
               
               <h3>Website Designed & Developed </h3>
               <h1>By</h1>
            <h1>VIKAS KUMAR</h1>
            
           </div>
           <div class="top-left">
               <div id="myDIVV">
                   Functioning Of this Website :
                   <p>Show All Customers Details</p>
                   <p>Store transfer details</p>
                
            </div>
           </div>
<div class="bottom-right">
               <div id="myDIVVK">
                Email-me: vikasyadav016k@gmail.com
                <p>Mob No: 75.......7</p>.
            </div>
           </div>
           
           <div class="bottom-left">
               <div id="myDIVVKY">
                Serices :
                <p>1) Store User data.</p>
                <p>2) Show their data back</p>.
            </div>
           </div>
        </div>
            
        <script>
            $('.nav-link').on('click', function() {
	$('.active-link').removeClass('active-link');
	$(this).addClass('active-link');
});
</script>
        <hr width:70%>
            
        <script>
            function myFunction(){
                var x= document.getElementById("myDIV");
                if (x.style.display === "none")
                {
                    x.style.display ="block";
                }
                else
                {
                    x.style.display ="none";
                }
            }
            </script>
            
            <script>
            function myProject(){
                var y= document.getElementById("myDIVV");
                if (y.style.display === "none")
                {
                    y.style.display ="block";
                }
                else
                {
                    y.style.display ="none";
                }
            }
            
            </script>
            <script>
            function myAbout(){
                var z= document.getElementById("myDIVVK");
                if (z.style.display === "none")
                {
                    z.style.display ="block";
                }
                else
                {
                    z.style.display ="none";
                }
            }
            </script>
            
            <script>
            function myService(){
                var q= document.getElementById("myDIVVKY");
                if (q.style.display === "none")
                {
                    q.style.display ="block";
                }
                else
                {
                    q.style.display ="none";
                }
            }
            </script>
            
    </body>
</html>

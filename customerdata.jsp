<%-- 
    Document   : customerdata
    Created on : 11 Jan, 2021, 11:00:20 AM
    Author     : vikas
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>! Customer Details !</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
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
			<a onclick="location.href ='about.jsp'">Contact Us</a>
			<div class="underline"></div>
		</li>
                
	</ul>
            </div>
        <script>
            $('.nav-link').on('click', function() {
	$('.active-link').removeClass('active-link');
	$(this).addClass('active-link');
});
</script>
        <div class="table-responsive">
  <table class="table">
      <thead>
      <tr>
                <td>UID</td>
                <td>User Name</td>
                <td>E-mail</td>
                <td>Current Balance</td>
            </tr>
      </thead>
            <% 
    
          
   try { 
        Class.forName("com.mysql.jdbc.Driver"); 
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bbs","root","vikas"); 
        Statement smt = con.createStatement(); //Create Statement to interact 
        ResultSet r = smt.executeQuery("select * from userdetails;"); 
        while (r.next()) { 
            %>
  </tbody>
    <tr>
        
        <td><%= r.getString(1) %></td>
         <td><%= r.getString(2) %></td>
          <td><%= r.getString(3) %></td>
           <td><%= r.getString(4) %></td>
    </tr>
  </tbody>
        
              <%
        } 
       
   } catch (Exception e) { 
        e.printStackTrace(); 
   } 
%> 

    
  </table>
</div>
        
    </body>
</html>

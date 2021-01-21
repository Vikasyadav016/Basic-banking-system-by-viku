<%-- 
    Document   : transfer
    Created on : 8 Jan, 2021, 10:55:27 AM
    Author     : vikas
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <head>
    <title>! Transfer Here !</title>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: #990000;
}

* {
  box-sizing: border-box;
}

/* Style inputs */
input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

/* Style the container/contact section */
.container {
  border-radius: 5px;
  background-color: #006666;
  padding: 10px;
}

/* Create two columns that float next to eachother */
.column {
  float: left;
  width: 50%;
  margin-top: 6px;
  padding: 20px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
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


    

<div class="container">
  <div style="text-align:center">
    <h2>Transfer Your Money Here</h2>
    <p>Make a safe transaction here:</p>
  </div>
  <div class="row">
    <div class="column">
      <img src="4.jpg" style="width:100%">
    </div>
    <div class="column">
      <form action="/index.html" method="get">
        <label for="uid">UID</label>
        <input type="text" id="uid" name="userid" placeholder="Your UID">
        
        <label for="customer to">Customer To</label>
        <input type="text" id="customer" name="customerto" placeholder="Customer to">
        <label for="transfer to">Transfer To</label>
        <input type="text" id="transferto" name="transferto" placeholder="Transfer To">
        <label for="amount">Amount</label>
        <input type="text" id="amount" name="amount" placeholder="Amount">
        <label for="remarks">Remarks</label>
        <textarea id="subject" name="remarks" placeholder="Write something.." style="height:170px"></textarea>
        <input type="submit" value="Submit">
      </form>
    </div>
  </div>
</div>
<%
    try
    {
        String UID=request.getParameter("uid");
        String Customerto=request.getParameter("customerto");
        String Transferto=request.getParameter("transferto");
        String Amount=request.getParameter("amount");
        String Remarks=request.getParameter("remarks");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bbs","root","vikas");
        String qry="insert into transfertables values(?,?,?,?,?)";
        PreparedStatement pst=con.prepareStatement(qry);
        pst.setString(1, UID);
        pst.setString(2, Customerto);
        pst.setString(3, Transferto);
        pst.setString(4, Amount);
        pst.setString(5, Remarks);
        
    }
    catch(Exception ex)
    {
        out.print("not suppored");
    }
    %>
    
    
</body>
</html>

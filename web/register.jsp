

<!DOCTYPE HTML>
<html lang="zxx">

    <%@page import="java.sql.*" %>
  
   

    
    <%
        
         if(request.getParameter("submit") !=null){

Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/csc506web","root","");
Statement st=con.createStatement();
  String usname = request.getParameter("uname");
  String email = request.getParameter("mail");
  String phone = request.getParameter("phone");
  String address = request.getParameter("address");
  String pasword = request.getParameter("pword");
  
String strQuery = "SELECT COUNT(*) FROM register where email='"+email+"'";
ResultSet rs = st.executeQuery(strQuery);
rs.next();
String Countrow = rs.getString(1);
if(Countrow.equals("0")){
int i=st.executeUpdate("insert into register(`name`, `email`, `phone`, `address`, `password`)values('"+usname+"','"+email+"','"+phone+"','"+address+"','"+pasword+"')");
 %> 

  <script>
               alert("Registered Successfully !");
       </script>
              
<%
  }

         
else{
 %> 
    <script>
               alert("User name or Email already exists !");
       </script>
<%     
}
         }
%>
    
    
    
    
<head>
    <title>CSC506 Web Programming</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content="My School Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
    <!-- //Meta tag Keywords -->

    <!-- Custom-Files -->
    <link href="csss/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- Bootstrap-CSS -->
    <link href="csss/style.css" rel='stylesheet' type='text/css' />
    <!-- Style-CSS -->
    <link href="csss/font-awesome.min.css" rel="stylesheet">
    <!-- Font-Awesome-Icons-CSS -->
    <!-- //Custom-Files -->

    <!-- Web-Fonts -->
    <link href="//fonts.googleapis.com/css?family=Lora:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese"
        rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800&amp;subset=latin-ext" rel="stylesheet">
    <!-- //Web-Fonts -->
</head>

<body>
    <!-- header -->
    <header>
        <div class="container">
            <div class="header d-lg-flex justify-content-between align-items-center py-2 px-sm-2 px-1">
                <!-- logo -->
                <div id="logo">
                    <h1><a href="index.html">CSC506 Web Programming</a></h1>
                </div>
                <!-- //logo -->
                <!-- nav -->
                <div class="nav_w3ls ml-lg-5">
                    <nav>
                        <label for="drop" class="toggle">Menu</label>
                        <input type="checkbox" id="drop" />
                        <ul class="menu">

                            </li>
                            <li><a href="login.jsp">Login</a></li>
                            <li><a href="register.jsp">Register</a></li>
                        </ul>
                    </nav>
                </div>
                <!-- //nav -->
            </div>
        </div>
    </header>
    <!-- //header -->

    <!-- inner banner -->
    <div class="inner-banner-w3ls py-5" id="home">
        <div class="container py-xl-5 py-lg-3">
            <!-- register  -->
            <div class="modal-body mt-md-2 mt-5">
                <h3 class="title-w3 mb-5 text-center text-wh font-weight-bold">Register Now</h3>
               
                
                <form action="register.jsp" method="post">
                    <div class="form-group">
                        <label class="col-form-label">Name</label>
                        <input type="text" class="form-control" placeholder="your name" name="uname" required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Email</label>
                        <input type="email" class="form-control" placeholder="usermail@email.com" name="mail"
                            required="">
                    </div>
                    
                    <div class="form-group">
                        <label class="col-form-label">Phone</label>
                        <input type="text" class="form-control" placeholder="Phone Number" name="phone" required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Address</label>
                        <input type="text" class="form-control" placeholder="Address" name="address" required="">
                    </div>
                    
                    <div class="form-group">
                        <label class="col-form-label">Password</label>
                        <input type="password" class="form-control" placeholder="*****" name="pword" required="">
                    </div>
                
                    <div class="sub-w3l my-3">
                       
                    </div>
                    <button type="submit" class="btn button-style-w3" name="submit">Register</button>
                </form>
            </div>
            <!-- //register -->
        </div>
    </div>
    <!-- //inner banner -->

    <!-- copyright -->
    <div class="copyright-w3ls py-4">
        <div class="container">
            <div class="row">
                <!-- copyright -->
                <p class="col-lg-8 copy-right-grids text-wh text-lg-left text-center mt-lg-2">© 2021 CSC506 Web Programming. All
                    Rights Reserved | Design by
                    <a href="#" target="_blank">CSC506 Group</a>
                </p>
                <!-- //copyright -->

            </div>
        </div>
    </div>
    <!-- //copyright -->
    <!-- move top icon -->
    <a href="#home" class="move-top text-center">
        <span class="fa fa-angle-double-up" aria-hidden="true"></span>
    </a>
    <!-- //move top icon -->

</body>

</html>

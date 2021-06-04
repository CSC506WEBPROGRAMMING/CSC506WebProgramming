<%@page import="java.sql.*" %>
<%@page import="usercontroller.UserBean"%>
<!DOCTYPE HTML>

 <% UserBean currentUser = (UserBean) (session.getAttribute("currentSessionUser"));%>
<html>
<head>
<title>My profile</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />

<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />

<!-- font-awesome icons CSS -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons CSS -->

 <!-- side nav css file -->
 <link href='css/SidebarNav.min.css' media='all' rel='stylesheet' type='text/css'/>
 <!-- side nav css file -->

 <!-- js-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>

<!--webfonts-->
<link href="//fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext" rel="stylesheet">
<!--//webfonts-->

<!-- Metis Menu -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<link href="csss/custom.css" rel="stylesheet">
<!--//Metis Menu -->
<style>
#chartdiv {
  width: 100%;
  height: 295px;
}
</style>
<!--pie-chart --><!-- index page sales reviews visitors pie chart -->
<script src="js/pie-chart.js" type="text/javascript"></script>
 <script type="text/javascript">

        $(document).ready(function () {
            $('#demo-pie-1').pieChart({
                barColor: '#2dde98',
                trackColor: '#eee',
                lineCap: 'round',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

            $('#demo-pie-2').pieChart({
                barColor: '#8e43e7',
                trackColor: '#eee',
                lineCap: 'butt',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

            $('#demo-pie-3').pieChart({
                barColor: '#ffc168',
                trackColor: '#eee',
                lineCap: 'square',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });


        });

    </script>


	<!-- requried-jsfiles-for owl -->
					<link href="css/owl.carousel.css" rel="stylesheet">
					<script src="js/owl.carousel.js"></script>
						<script>
							$(document).ready(function() {
								$("#owl-demo").owlCarousel({
									items : 3,
									lazyLoad : true,
									autoPlay : true,
									pagination : true,
									nav:true,
								});
							});
						</script>
					<!-- //requried-jsfiles-for owl -->
                                        
                               
                                        
</head>
<body class="cbp-spmenu-push">
	<div class="main-content">
	<div class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
		<!--left-fixed -navigation-->
		<aside class="sidebar-left">
      <nav class="navbar navbar-inverse">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".collapse" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
            <h1><a class="navbar-brand" href="#"><span class="fa fa-area-chart"></span>CSC506<span class="dashboard_text">User Dashboard</span></a></h1>
          </div>
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="sidebar-menu">
              <li class="header">MAIN NAVIGATION</li>
              <li class="treeview">
                <a href="index.html">
               
               
                <li> <a href="profile.jsp"><i class="fa fa-suitcase"></i> My Profile</a> </li>
                 <li> <a href="index.jsp"><i class="fa fa-sign-out"></i>Logout</a> </li>
                </a>
              </li>

            </ul>
          </div>
          <!-- /.navbar-collapse -->
      </nav>
    </aside>
	</div>
		<!--left-fixed -navigation-->

		<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-left">
				<!--toggle button start-->
				<button id="showLeftPush"><i class="fa fa-bars"></i></button>
				<!--toggle button end-->
				<div class="profile_details_left"><!--notifications of menu start -->
					<ul class="nofitications-dropdown">
						<li class="dropdown head-dpdn">


						</li>
					</ul>
					<div class="clearfix"> </div>
				</div>
				<!--notification menu end -->
				<div class="clearfix"> </div>
			</div>
			<div class="header-right">




				<div class="profile_details">
					<ul>
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div class="profile_img">
									<span class="prfil-img"><img src="images" alt=""> </span>
									<div class="user-name">
										<p><%= currentUser.getUsername()%> </p>
										<span>Administrator</span>
									</div>
									<i class="fa fa-angle-down lnr"></i>
									<i class="fa fa-angle-up lnr"></i>
									<div class="clearfix"></div>
								</div>
							</a>
							<ul class="dropdown-menu drp-mnu">
							
								<li> <a href="#"><i class="fa fa-suitcase"></i> My Profile</a> </li>
								<li> <a href="login.jsp"><i class="fa fa-sign-out"></i> Logout</a> </li>
							</ul>
						</li>
					</ul>
				</div>
                                                                 
                                   </div>                                             
                                    </div>                                            
                                                                                
                                                                                
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
		<!-- //header-ends -->
		<!-- main content start-->
	
         		<div id="page-wrapper">
			<div class="main-page">
				<div class="forms">
					<h2 class="title1">My Profile</h2>
					<div class="form-grids row widget-shadow" data-example-id="basic-forms">
						<div class="form-title">
							<h4>My Profile</h4>
						</div>
						<div class="form-body">
                     
                       <div class="profile_img">
                  <center>  <span class="prfil-img"><img id="output" width="300" height="300" alt=""> </span> </center>
                    </div>

                      <br>
                      
                      <p><input type="file" accept="image/*" name="image" id="file" onchange="loadFile(event)" style="display: none;"></p>
                 
                      <center>   <p><label for="file" style="cursor: pointer;">Upload Image</label></p> </center>
                      
                      
                      <script>
                          var loadFile = function(event){
                              var image = document.getElementById('output');
                              image.src = URL.createObjectURL(event.target.files[0]);
                              
                          };
                          
                          
                      </script>

                        
                       <%
        if(request.getParameter("submit") !=null){
            
         
            String name = request.getParameter("name");
            String email = request.getParameter("mail");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            String password = request.getParameter("password");
          
            
            Connection con;
            PreparedStatement pst;
            ResultSet rs;
            
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/csc506web","root","");
            pst = con.prepareStatement("INSERT INTO `csc506web`.`register` ( `name`, `email`, `phone`,  `address`, `password` ) VALUES ( ?, ?, ?, ?, ?)  ON DUPLICATE KEY UPDATE `name` = VALUES (name), `email` = VALUES (email), `phone` = VALUES (phone), `address` = VALUES (address), `password` = VALUES (password);");
            
             pst.setString(1, name);
             pst.setString(2, email);
             pst.setString(3, phone);
             pst.setString(4, address);
             pst.setString(5, password);
        
            
            
            
            pst.executeUpdate();
            
            %>
           <script>
               alert("Profile Updated");
           </script>
        
            <%
        }
    
    
    %>
                                                    
                                                    
            	<form   action="#" method="POST" >
                    
                    
                 

                 

                 <div class="col-md-6">
                    <label for="exampleInputEmail1">Name</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" name="name" value="<%= currentUser.getName()%>">
                </div>

                <div class="col-md-6">
                   <label for="exampleInputEmail1">Email address</label>
                   <input type="email" class="form-control" id="exampleInputEmail1" name="mail" value="<%= currentUser.getUsername()%>">
               </div>
               <div class="col-md-6">
                  <label for="exampleInputEmail1">Phone Number</label>
                <input type="text" class="form-control" id="exampleInputEmail1" name="phone" value="<%= currentUser.getPhone()%>">
              </div>

              <div class="col-md-6">
                 <label for="exampleInputEmail1">Address</label>
               <input type="text" class="form-control" id="exampleInputEmail1" name="address" value="<%= currentUser.getAddress()%>">
             </div>
             
               <div class="col-md-6">
                  <label for="exampleInputEmail1"></label>
                <input type="text" class="hidden" id="exampleInputEmail1" name="password" value="<%= currentUser.getPassword()%>">
              </div>
                           
                      <h5> .</h5>
                      
                      <br>
                   
                      <center>   <button type="submit" name="submit" class="btn btn-default">Update</button> </center>
                
                
                </form>
             
           
						</div>
					</div>

								
							</div>
						</div>
					</div>
		
		<!--footer-->
		<div class="footer">
		   <p><a href="" target="_blank"></a></p>
	   </div>
        <!--//footer-->
	</div>

	<!-- side nav js -->
	<script src='js/SidebarNav.min.js' type='text/javascript'></script>
	<script>
      $('.sidebar-menu').SidebarNav()
    </script>
	<!-- //side nav js -->

	<!-- Classie --><!-- for toggle left push menu script -->
		<script src="js/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;

			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};

			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
	<!-- //Classie --><!-- //for toggle left push menu script -->

	<!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->

	<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.js"> </script>

</body>
</html>

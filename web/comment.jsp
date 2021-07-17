<%@page import="java.sql.*" %>
<%@page import="usercontroller.UserBean"%>
<!DOCTYPE HTML>

 <% UserBean currentUser = (UserBean) (session.getAttribute("currentSessionUser"));%>
<html>
<head>
<title>Post</title>
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
                  <li> <a href="comment.jsp"><i class="fa fa-suitcase"></i>Post/Comment</a> </li>
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
					<h2 class="title1">Make Post</h2>
					<div class="form-grids row widget-shadow" data-example-id="basic-forms">
						<div class="form-title">
							<h4>Post Comment</h4>
						</div>
						<div class="form-body">
							
							<%
        if(request.getParameter("submit") !=null){
            
         
            String post = request.getParameter("post");
             String name = request.getParameter("name");
	     
	      
            Connection con;
            PreparedStatement pst;
            ResultSet rs;
            
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/csc506web","root","");
            pst = con.prepareStatement("INSERT INTO `csc506web`.`comment` (`post`, `name`) VALUES (?, ?);");
	    
	     
            pst.setString(1, post);
            pst.setString(2, name);
        
                     
                    
            pst.executeUpdate();
            
            %>
           <script>
               alert("Posted");
           </script>
        
            <%
        }
    
    
    %>
             					<form   action="#" method="POST" >
                    
                    
                                                         <div class="col-md-6">
                                                            <label for="exampleInputEmail1">Name</label>
                                                          <input type="text" class="form-control" id="exampleInputEmail1" name="name" placeholder="Name">
                                                        </div>

                    
                                                    
                                                          <div class="col-md-9">
                                                          <textarea name="post" placeholder="Write Comment..." >  </textarea>
                                                          </div>

                                                       
                
                           
                      <h5> .</h5>
                      
                      <br>
                       <br>
                       <br>
                        <br>
                      
                                                    
            	
             
           
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

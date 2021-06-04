
<!DOCTYPE HTML>
<html lang="zxx">

<head>
    <title>Home Page</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content=" " />
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
                    <h1><a href="#">CSC506 Assignment</a></h1>
                </div>
                <!-- //logo -->
                <!-- nav -->
                <div class="nav_w3ls ml-lg-5">
                    <nav>
                        <label for="drop" class="toggle">Menu</label>
                        <input type="checkbox" id="drop" />
                        <ul class="menu">
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="#about">About</a></li>
                     
                            <li>
                                <!-- First Tier Drop Down -->
                                <label for="drop-2" class="toggle toogle-2">Pages <span class="fa fa-angle-down"
                                        aria-hidden="true"></span>
                                </label>
                                <a href="#">Pages <span class="fa fa-angle-down" aria-hidden="true"></span></a>
                                <input type="checkbox" id="drop-2" />
                                <ul>
                           
                                    <li><a href="#what" class="drop-text">What We Do?</a></li>
                                 
                                </ul>
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

    <!-- banner -->
    <div class="main-w3pvt mian-content-wthree text-center" id="home">
        <div class="container">
            <div class="style-banner mx-auto">
                <h3 class="text-wh font-weight-bold">Welcome to <span>CSC506</span> <br>Web And Internet Programming</h3> <br>
                <p class="mt-3 text-li" id="join"><b> First Assignment </b></p>
                <!-- form -->
                <div class="home-form-w3ls mt-5">
                   
                </div>
                <!-- //form -->
            </div>
        </div>
    </div>
    <!-- //banner -->

    <!-- banner bottom -->
    <section class="w3ls-bnrbtm py-5" id="about">
        <div class="container py-xl-5 py-lg-3">
            <h3 class="title-w3 mb-md-5 mb-sm-4 mb-2 text-center font-weight-bold">About Us</h3>
            <div class="row">
                <div class="col-lg-6 text-center">
                    <img src="images/banner.jpg" alt="about" class="img-fluid mt-4" />
                </div>
                <div class="col-lg-6 pr-xl-5 mt-4">
                    <h3 class="title-sub mb-4">A School should be a place of Light, of Liberty and of Learning </h3>
                    <p class="sub-para">   </p>
                    <p class="sub-para pt-4 mt-4 border-top">  </p>
                </div>
            </div>
        </div>
    </section>
    <!-- //banner bottom -->

    <!-- services -->
    <div class="services py-5" id="what">
        <div class="container py-xl-5 py-lg-3">
            <h3 class="title-w3 mb-xl-5 mb-sm-4 mb-2 text-center text-wh font-weight-bold">What We Do?</h3>
            <div class="row w3pvtits-services-row text-center">
                <div class="col-lg-4 serv-w3mk mt-5">
                    <div class="w3pvtits-services-grids">
                        <span class="fa fa-leanpub ser-icon" aria-hidden="true"></span>
                        <h4 class="text-bl my-4">Active Learning</h4>
                        <p class="text-left">We have learn a lot which enable us to develop this application</p>
                       
                    </div>
                </div>
                <div class="col-lg-4 serv-w3mk mt-5">
                    <div class="w3pvtits-services-grids">
                        <span class="fa fa-graduation-cap ser-icon" aria-hidden="true"></span>
                        <h4 class="text-bl my-4">Full Day Programs </h4>
                        <p class="text-left">We develop our pragram using Java web </p>
                       
                    </div>
                </div>
                <div class="col-lg-4 serv-w3mk mt-5">
                    <div class="w3pvtits-services-grids">
                        <span class="fa fa-users ser-icon" aria-hidden="true"></span>
                        <h4 class="text-bl my-4">Group Members</h4>
                        <p class="text-left">CSC/15U/3285 Ahimaaz Dio <br> CSC/15U/3294 Yunusa Haruna<br></p>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- move top icon -->
    <a href="#home" class="move-top text-center">
        <span class="fa fa-angle-double-up" aria-hidden="true"></span>
    </a>
    <!-- //move top icon -->

</body>

</html>
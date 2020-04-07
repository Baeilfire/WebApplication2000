<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoggedIn.aspx.cs" Inherits="WebApplication2000.LoggedIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Logged in</title>
	<link rel="stylesheet" type="text/css" href="css/header.css" />
    <link rel="stylesheet" type="text/css" href="css/loggedin.css" />

    <!--Image Carousel-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>

    <header>
	    <div class="container">
		    <div id="branding">
			    <h1><span class="highlight">Proto</span>Music</h1>
		    </div>
		    <nav>
			    <ul>
				    <li class="current"><a href="LoggedIn.aspx">Home</a></li>
				    <li><a href="Genre.aspx">Genre</a></li>
                    <li><a href="Artist.aspx">Artist</a></li>
                    <li><a href="Songs.aspx">Songs</a></li>
                    <li><a href="Upload.aspx">Upload</a></li>
                    <li><a href="MyPage.aspx">My Page</a></li>
			    </ul>
		    </nav>
	    </div>
	</header>

    <section id="showcase">
	    <div class="container">
		    <h1>Music Enthusiast Website</h1>
		    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		    tempor incididunt ut labore et dolore magna</p>
	    </div>
	</section>

<!--	INAGE CAROUSEL	-->
    <div class="content">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="css/images/galaxy.jpg" alt="Galaxy" style="width:100%;" />
                </div>

                <div class="item">
                    <img src="css/images/covid.jpg" alt="Covid" style="width:100%;" />
                </div>
    
                <div class="item">
                    <img src="css/images/loveourplanet.jpg" alt="Love our planet" style="width:100%;" />
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

	<aside>

	</aside>


    <form id="form1" runat="server">
        <div>
            <!--  Shows the user who is logged in  -->
            <asp:Label ID="userLabel" Text="No User" runat="server" />
        </div>
    </form>



	<footer>
		<p>ProtoMusic</p>
	</footer>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Artist.aspx.cs" Inherits="WebApplication2000.Artist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Artist</title>
    <link rel="stylesheet" type="text/css" href="css/artist.css"/>
	<link rel="stylesheet" type="text/css" href="css/header.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
</head>
<body>
    <!--Header start-->
    <header>
	    <div class="container">
		    <div id="branding">
			    <h1><span class="highlight">Proto</span>Music</h1>
		    </div>
		    <nav>
			    <ul>
				    <li><a href="LoggedIn.aspx">Home</a></li>
				    <li><a href="Registration.aspx">Registration</a></li>
				    <li><a href="Genre.aspx">Genre</a></li>
					<li class="current"><a href="Artist.aspx">Artist</a></li>
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
<!--	Header Slutt	-->
    <h2> 
    <u>
        Trending
    </u>
    </h2>
    <form id="form1" runat="server">
        <div class="flex-container">
            <!--
                Ikke gi disse divene klaser eller id'er.
                bare referer til de som .flex-container > div i css
            -->
            <div>Kygo</div>
            <div>Milos</div>
            <div>Taylor Swift</div>
            <div>TIX</div>
            <div>Alan Walker</div>
        </div>
    <h2> 
    <u>
        Popular
    </u>
    </h2>
        <div class="flex-container">
            <div>Justib Bieber</div>
            <div>Drake</div>
            <div>Astris S</div>
            <div>TIX</div>
            <div>The Weekend</div>
        </div>
    <h2> 
    <u>
        New Artists
    </u>
    </h2>
        <div class="flex-container">
            <div>Eirik</div>
            <div>Ole</div>
            <div>Truls</div>
            <div>Henrik</div>
            <div>Filip</div>
        </div>

    </form>

	

</body>
</html>

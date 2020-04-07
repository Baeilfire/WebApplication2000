<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Genre.aspx.cs" Inherits="WebApplication2000.Genre" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Genre</title>
    <link rel="stylesheet" type="text/css" href="css/header.css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="css/genre2.css"/>

</head>
<body>

<!--	Header start	-->
	<header>
	    <div class="container">
		    <div id="branding">
			    <h1><span class="highlight">Proto</span>Music</h1>
		    </div>
		    <nav>
			    <ul>
				    <li><a href="LoggedIn.aspx">Home</a></li>
				    <li class="current"><a href="Genre.aspx">Genre</a></li>
					<li><a href="Songs.aspx">Songs</a></li>
					<li><a href="Artist.aspx">Artist</a></li>
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

    <form id="form1" runat="server">
        <div class="flex-container">
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        </div>
    </form>

    <footer>
		<p>Protomusic</p>
	</footer>
</body>
</html>

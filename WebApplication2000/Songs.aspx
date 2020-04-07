<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Songs.aspx.cs" Inherits="WebApplication2000.Songs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Songs</title>
    <link rel="stylesheet" type="text/css" href="css/Songs.css"/> 
    <link rel="stylesheet" type="text/css" href="css/header.css" />
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
				    <li><a href="Genre.aspx">Genre</a></li>
                    <li  class="current"><a href="Songs.aspx">Songs</a></li>
                    <li><a href="Artist.aspx">Artist</a></li>
                    <li><a href="MyPage.aspx">My Page</a></li>
			    </ul>
		    </nav>
	    </div>
	</header>

    <section id="showcase">
	    <div class="container">
		    <h1>Songs</h1>
		    <p>On this page you can see and listen to all the songs that has been put out on this site by both artists and users!</p>
	    </div>
	</section>
<!--	Header Slutt	-->
    <h1> Click on any of the categories to sort the table in different ways! </h1>
    <form id="form1" runat="server">
        <div>
            <object type="application/x-shockwave-flash" data="dewplayer.swf?mp3=Songs.aspx.cs?Id=1" width="200" height="20" id="dewplayer" name="dewplayer"
                   <param name="wmode" value="transparent" />
                    <param name="movie" value="dewplayer.swf?mp3=Songs.aspx.cs?Id=1"/>
                    <param name="flashvars" value="mp3=dewplayer.swf?mp3=Songs.aspx.cs?Id=1" />
            </object>
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                    CssClass="mydatagrid" PagerStyle-CssClass="pager"
                    HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" AllowSorting="True">
                <Columns>
                    <asp:BoundField DataField="song_name" HeaderText="song_name" SortExpression="song_name" />
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                    <asp:BoundField DataField="artist" HeaderText="artist" SortExpression="artist" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="length" HeaderText="length" SortExpression="length" />
                </Columns>
                <HeaderStyle />
                <PagerStyle />

<RowStyle CssClass="rows"></RowStyle>

            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:webAppConnString %>" ProviderName="<%$ ConnectionStrings:webAppConnString.ProviderName %>" SelectCommand="SELECT track.song_name, album.title, artist.name AS artist, genre.name, track.length FROM track INNER JOIN artist ON track.track_ID = artist.artist_ID INNER JOIN genre ON track.track_ID = genre.genre_ID, album"></asp:SqlDataSource>
    </form> 

    <footer>
		<p>Protomusic</p>
	</footer>
</body>
</html>

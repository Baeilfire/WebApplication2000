<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="WebApplication2000.Upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload</title>
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
					<li><a href="Songs.aspx">Songs</a></li>
					<li  class="current"><a href="Upload.aspx">Upload</a></li>
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
        <div>
            <asp:Label ID="SongName" runat="server" Text="Song Name"></asp:Label>
            <asp:TextBox ID="SongNameTextBox" runat="server"></asp:TextBox> <br />

            <asp:Label ID="Length" runat="server" Text="Length"></asp:Label>
            <asp:TextBox ID="TextBoxLength" runat="server"></asp:TextBox> <br />

            <asp:Label ID="Album" runat="server" Text="Album"></asp:Label>
            <asp:DropDownList ID="DropDownListAlbum" runat="server" DataSourceID="SqlDataSourceAlbum" DataTextField="title" DataValueField="title"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceAlbum" runat="server" ConnectionString="<%$ ConnectionStrings:webAppConnString %>" ProviderName="<%$ ConnectionStrings:webAppConnString.ProviderName %>" SelectCommand="SELECT title FROM album"></asp:SqlDataSource>

			<asp:Label ID="Genre" runat="server" Text="Genre"></asp:Label>
            <asp:DropDownList ID="DropDownListGenre" runat="server" DataSourceID="SqlDataSourceGenre" DataTextField="name" DataValueField="name"></asp:DropDownList><br />
            <asp:SqlDataSource ID="SqlDataSourceGenre" runat="server" ConnectionString="<%$ ConnectionStrings:app2000ConnectionString %>" ProviderName="<%$ ConnectionStrings:app2000ConnectionString.ProviderName %>" SelectCommand="SELECT name FROM genre"></asp:SqlDataSource>

            <asp:FileUpload ID="FileUploadSong" runat="server" /><br />

			<asp:Button ID="ButtonUpload" runat="server" Text="Upload" onclick="ButtonUpload_Click" /><br /><br /><br />
            <asp:Label ID="LabelError" runat="server" Text=""></asp:Label>
        </div>
    </form>


	<footer>
		<p>Protomusic</p>
	</footer>
</body>
</html>

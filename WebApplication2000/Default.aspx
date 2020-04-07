<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2000.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
    
    <link rel="stylesheet" type="text/css" href="Content\bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css\login.css" />

</head>
<body>
    <p>This is the home page</p>
    
    <a href="#">Home</a> | <a href="Registration.aspx">Registration</a> | <a href="Genre.aspx">Genre</a> | <a href="Artist.aspx">Artist</a>  | <a href="Songs.aspx">Songs</a>  | <a href="Upload.aspx">Upload</a>  

    <div class="session">
        <div class="picture">
        </div>
        <div class="logo">
            <img src="css/images/logo_1.png" style="float:right;" />
        </div>
        <form id="form1" runat="server" class="log-in" autocomplete="off">
            <h4>We are <span>ProtoMusic</span></h4>
            <p>Register a new user or log in to an existing one to check out new music!</p>
            <div class="floating-label">
                <label for="email">Email:</label>
                <asp:TextBox ID="emailTextBox" Text="" runat="server" />
            </div>
            <div class="floating-label">
                <label for="password">Password:</label>
                <asp:TextBox ID="passwordTextBox" type="password" Text="" runat="server" />
               
            </div>
            <asp:Button ID="submitButton" Text="Log in" runat="server" OnClick="submitEventMethod"/>
           <p> Not already a user? Click to register for free <a href="Registration.aspx">here!</a> </p>
        </form>
    </div>

</body>
</html>

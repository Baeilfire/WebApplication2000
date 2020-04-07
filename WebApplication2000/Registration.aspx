<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication2000.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
    
    <link rel="stylesheet" type="text/css" href="Content\bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css\login.css" />
    <script src="Javascript/password.js"></script>

</head>
<body>
    <a href="Default.aspx">Home</a> | <a href="#.aspx">Registration</a> | <a href="Genre.aspx">Genre</a> | <a href="Artist.aspx">Artist</a>

    <div class="session">
        <div class="picture">
        </div>
        <div class="logo">
            <img src="css/images/logo_1.png" style="float:right;" />
        </div>
        <form id="form1" runat="server" class="log-in" autocomplete="off">
            <h4><span>Register New User</span></h4>
            <div class="floating-label">
                <label for="username">Username:</label>
                <asp:TextBox ID="usernameTextBox" Text="" runat="server" />
            </div>
            <div class="floating-label">
                <label for="email">Email:</label>
                <asp:TextBox ID="emailTextBox" Text="" runat="server" />
            </div>
            <div class="floating-label">
                <label for="password">Password:</label>
                <asp:TextBox ID="passwordTextBox" type="password" autocomplete="off" runat="server" onkeyup="validatePassword(this.value);"/>
                <span id="msg"></span>
            </div>
            <asp:Button ID="submitButton" Text="Register" runat="server" OnClick="registerEventMethod"/>
           <p> Already have a user? click here to <a href="Default.aspx">log in!</a> </p>
        </form>
    </div>
</body>
</html>

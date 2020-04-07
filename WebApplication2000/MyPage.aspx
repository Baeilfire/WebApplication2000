<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyPage.aspx.cs" Inherits="WebApplication2000.MyPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Page</title>
    
    <link rel="stylesheet" type="text/css" href="css/header.css" />
    <link rel="stylesheet" type="text/css" href="css/mypage2.css"/> 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />



</head>
<body>

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
                    <li><a href="Artist.aspx">Artist</a></li>
                    <li><a href="Songs.aspx">Songs</a></li>
                    <li class="current"><a href="#">My Page</a></li>
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

    <div class="container" id="my-page-content">
        <div class="row">
            <div class="col square">
                <div class="row">
                    <div class="col" id="profile-picture">
                        <img src="css/images/DummyProfile.png" alt="Profile picture" height="150" width="150"/>
                    </div>
                    <div class="col" id="your-settings">
                        <p>
                            Sound quality 
                            <select class="settings-drop-down" id="sound-quality">
                                <option>Legendary</option>
                                <option>Epic</option>
                                <option>Average</option>
                                <option>Poor</option>
                            </select>
                        </p>
                        <p>
                            Volume 
                            <select class="settings-drop-down" id="volume">
                                <option>Legendary</option>
                                <option>Epic</option>
                                <option>Average</option>
                                <option>Poor</option>
                            </select>
                        </p>
                        <p>
                            <button>Advanced settings</button>
                        </p>
                    </div>    
                </div>
            </div>
            <div class="col square">
                <h6>Bio</h6>
                <p id="bio" contenteditable="true">
                    Curabitur sed aliquet erat, ac semper quam. Phasellus in auctor massa, vitae hendrerit lacus. Quisque finibus, augue dignissim semper viverra, dui dolor malesuada quam, et ultrices nisi dolor vel augue. Suspendisse tortor sem, bibendum eget massa vitae, lobortis facilisis arcu. Curabitur consequat in lectus in molestie. Aliquam ut nulla diam. Aliquam quis massa vulputate, suscipit massa vitae, accumsan tellus. Sed id dapibus metus. Vestibulum ante ipsum primis in faucibus orci luctus et ul.
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col square">
                <h3>Your Songs</h3>

                <!--  Extracting songs from database  -->

            </div>
            <div class="col square">
                <h6>Change info</h6>
                <form id="form1" runat="server">
                    <div>
                        <p>
                            <label for="name">Name</label>
                            <asp:TextBox ID="nameTextBox" CssClass="input" Text="" runat="server" /> <br/><br/>
                        </p>
                        <p>
                            <label for="email">E-mail</label>
                            <asp:TextBox ID="emailTextBox" CssClass="input" Text="" runat="server" /> <br/><br/>
                        </p>
                        <p>
                            <label for="password">Password</label>
                            <asp:TextBox ID="passwordTextBox" type="password" CssClass="input" Text="" runat="server" /> <br/><br/>
                        </p>
                        <p>
                            <label for="name">Confirm password</label>
                            <input type="password" id="con-password" class="input" name="con-password" /> <br/><br/>
                        </p>
                        <asp:Button ID="submitButton" Text="Submit" runat="server" OnClick="submitEventMethod"/>
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>
</html>

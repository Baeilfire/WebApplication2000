using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Configuration;
using System.Security.Cryptography;
using Microsoft.AspNetCore.Identity;
using System.Text.RegularExpressions;


namespace WebApplication2000   
{
    public partial class Registration : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        String queryStr;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registerEventMethod(object sender, EventArgs e) 
        {
            registerUser();
        }

        private void registerUser() 
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["webAppConnString"].ToString();

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();

            queryStr = "";
            queryStr = "INSERT INTO app2000.user (username, email, password)" +
                "VALUES('" + usernameTextBox.Text + "','" + emailTextBox.Text + "','" + passwordTextBox.Text + "')";

            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            cmd.ExecuteReader();
            Response.Write("User register: " + usernameTextBox.Text + " " + emailTextBox.Text);
            conn.Close();

        }
    }
    
}
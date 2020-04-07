using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Security.Cryptography;

namespace WebApplication2000
{
    public partial class MyPage : System.Web.UI.Page
    {

        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        MySql.Data.MySqlClient.MySqlDataReader reader;
        String queryStr;
        String name;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitEventMethod(object sender, EventArgs e)
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["webAppConnString"].ToString();
            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            // CHANGE TO UPDATE STATEMENT 
            queryStr = "SELECT * FROM app2000.user WHERE email='" + emailTextBox.Text /*Funker ikke med live share*/
               + "' AND password ='" + passwordTextBox.Text + "'";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            reader = cmd.ExecuteReader();
            name = "";
            while (reader.HasRows && reader.Read())
            {
                name = reader.GetString(reader.GetOrdinal("email"));
            }

            if (reader.HasRows)
            {
                Session["uname"] = name;
                Response.BufferOutput = true;
             //   Response.Redirect("LoggedIn.aspx", false);
            }
            else
            {
                passwordTextBox.Text = "invalid user";
            }

            reader.Close();
            conn.Close();
        }
    }
}
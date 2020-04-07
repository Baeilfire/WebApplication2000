using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace WebApplication2000
{
    public partial class Genre : System.Web.UI.Page
    {

        StringBuilder output = new StringBuilder();
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        MySql.Data.MySqlClient.MySqlDataReader reader;
        String queryStr;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                String connString = System.Configuration.ConfigurationManager.ConnectionStrings["webAppConnString"].ToString();
                conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                conn.Open();

                queryStr = "";
                queryStr = "SELECT name FROM genre";

                cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn)
                {
                    Connection = conn
                };

                reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while(reader.Read()) // using read() method to read all rows one-by-one
                    {
                        output.Append("<div>");
                        output.Append(reader.GetString(0));
                        output.Append("</div>");
                    }
                }

                PlaceHolder1.Controls.Add(new Literal { Text = output.ToString() });
                reader.Close(); 
                conn.Close();  
            }
        }
    }
}
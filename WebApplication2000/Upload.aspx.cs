using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using MySql.Data.MySqlClient;


namespace WebApplication2000
{
    public partial class Upload : System.Web.UI.Page
    {

        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        String queryStr;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void UploadSongs()
        {
            
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["webAppConnString"].ToString();
            conn = new MySqlConnection(connString);
            conn.Open();

            queryStr = "";
            queryStr = "INSERT INTO app2000.track ('song_name','length','track_url')" +
                "VALUES('" + SongNameTextBox.Text + "','" + TextBoxLength.Text + "','" + FileUploadSong + "')";

            cmd = new MySqlCommand(queryStr, conn);
          //  LabelError.Text = "" + DropDownListGenre + "";
            cmd.ExecuteReader();
            Response.Write("Song uploaded" + SongNameTextBox.Text + " ");
            conn.Close();
        }

        protected void ButtonUpload_Click(object sender, EventArgs e)
        {
            UploadSongs();
        }
    }
}
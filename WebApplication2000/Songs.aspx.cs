using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication2000
{
    public partial class Songs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
    /*
    public class SoundHandler : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            string id = context.Request.QueryString["Id"].ToString();
            byte[] sound = null;

            SqlConnection con = new SqlConnection("data source=.\\SQLEXPRESS; initial catalog=WebbApplication2000; integrated security=true");
            SqlCommand com = new SqlCommand("select * from track where Id=@id");
            com.Connection = con;
            com.Parameters.AddWithValue("@Id", sound);

            con.Open();
            sqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();

            da.Fill(dt);
            sound = (byte[])dt.Rows[0][1];
            con.Close();

            context.Response.Clear();
            context.Response.Buffer = true;
            context.Response.ContentType = "audio/mpeg3";
            context.Response.BinaryWhite(sound);
            context.Response.End();
        }
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
        
    }*/
}
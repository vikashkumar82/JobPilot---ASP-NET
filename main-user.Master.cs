using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPilot
{
    public partial class main_user : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                String sessionEmail = Session["userEmail"].ToString();
                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                con.Open();
                SqlDataReader myReader = null;
                SqlCommand cmd = new SqlCommand("select * from Profile where Email=@Email", con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@Email", sessionEmail);
                myReader = cmd.ExecuteReader();
                if (myReader.HasRows)
                {
                    while (myReader.Read())
                    {
                        Image1.ImageUrl = "~/profilePic/" + myReader["PicName"].ToString();
                    }
                }
            }
        }
    }
}
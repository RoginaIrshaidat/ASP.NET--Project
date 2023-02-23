using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {

            SqlConnection cn = new SqlConnection(@"data source=DESKTOP-EJ4EJ89\SQLEXPRESS; Database=donation; integrated security = true");

            SqlCommand cmd = new SqlCommand($"insert into volunteer (name, city, adress, Phone , email)  VALUES ('{TextBox1.Text}', '{TextBox2.Text}', '{TextBox3.Text}', '{Convert.ToInt64(TextBox4.Text)}' , '{TextBox5.Text}');   ", cn);

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "voulnteer();", true);

        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Caching;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            string constr = @"Server=DESKTOP-EJ4EJ89\SQLEXPRESS;Database=donation ; Integrated Security=True;";
            LinkButton chkStatus = (LinkButton)sender;
            GridViewRow row = (GridViewRow)chkStatus.NamingContainer;
            SqlConnection con = new SqlConnection(constr);

            string cid = row.Cells[11].Text;

            string user_id = Convert.ToString(Session["user_id"]);

            string query = "INSERT INTO Application(applicationDate, tool_id, user_id, applicationStatus) VALUES(@applicationDate, @tool_id, @user_id, @applicationStatus)";
            SqlCommand com = new SqlCommand(query, con);
//            if (Regex.IsMatch(row.Cells[11].Text, @"^\d+$"))
//            {
//                Response.Redirect("Contact.aspx");
//}
//            else
//            {
//                Response.Write($"<script>alert('{cid}')</script>");
//               }

            int cidInt;
            if (int.TryParse(cid, out cidInt))
            {
                Response.Write($"<script>alert('{user_id}')</script>");
                com.Parameters.Add("@tool_id", SqlDbType.Int).Value = cidInt;
                com.Parameters.Add("@applicationDate", SqlDbType.DateTime).Value = DateTime.Now;
                com.Parameters.Add("@user_id", SqlDbType.NVarChar, 128).Value = user_id;
                com.Parameters.Add("@applicationStatus", SqlDbType.Bit).Value = 0;
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
            }
            else
            {
                Response.Redirect("About.aspx");
            }
        }
    }
}
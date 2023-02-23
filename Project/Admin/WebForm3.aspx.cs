using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Project
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                availableTools.Visible = false;
                organizations.Visible = false;
                donations.Visible = false;
                vol.Visible = false;
                cash.Visible = false;

            }

        }
        protected void btnAvailableTools_Click(object sender, EventArgs e)
        {
            availableTools.Visible = true;
            organizations.Visible = false;
            donations.Visible = false;
            vol.Visible = false;
            cash.Visible = false;

        }

        protected void btnOrganizations_Click(object sender, EventArgs e)
        {

            organizations.Visible = true;
            availableTools.Visible = false;
            donations.Visible = false;
            vol.Visible = false;
            cash.Visible = false;


        }

        protected void btnDonations_Click(object sender, EventArgs e)
        {
            donations.Visible = true;
            availableTools.Visible = false;
            organizations.Visible = false;
            vol.Visible = false;
            cash.Visible = false;



            //Response.Redirect("WebForm3.aspx");
            //LoadData();
            //Response.Redirect("admintool.aspx");

        }
        public void chkStatus_OnCheckedChanged(object sender, EventArgs e)
        {
            //string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            //SqlConnection con = new SqlConnection(connecsqtionString);
            string constr = "data source=DESKTOP-EJ4EJ89\\SQLEXPRESS;Database=donation ; Integrated Security=True;";

            CheckBox chkStatus = (CheckBox)sender;
            GridViewRow row = (GridViewRow)chkStatus.NamingContainer;
            SqlConnection con = new SqlConnection(constr);

            string cid = row.Cells[2].Text;
            bool state = chkStatus.Checked;
            //string query = "UPDATE tool SET status = 1 WHERE tool_id = @tool_id";

            string query = "UPDATE Tool SET status = @status WHERE tool_id = @tool_id";

            SqlCommand com = new SqlCommand(query, con);

            com.Parameters.Add("@status", SqlDbType.Bit).Value = state;
            com.Parameters.Add("@tool_id", SqlDbType.Int).Value = cid;

            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            //LoadData();
            //Response.Redirect("WebForm3.aspx");
            //protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
            //{
            //    int count = 1;

            //    if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            //    {
            //        count++;

            //    }
            //}
        }

        protected void btnVoulnteer_Click(object sender, EventArgs e)
        {
            donations.Visible = false;
            availableTools.Visible = false;
            organizations.Visible = false;
            vol.Visible = true;
            cash.Visible = false;

        }

        protected void btnCash_Click(object sender, EventArgs e)
        {
            donations.Visible = false;
            availableTools.Visible = false;
            organizations.Visible = false;
            vol.Visible = false;
            cash.Visible = true;
        }
    }
}
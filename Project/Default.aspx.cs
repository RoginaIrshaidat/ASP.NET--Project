using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Session["userName"]  = Context.User.Identity.GetUserName();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("donation.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("donation.aspx");

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("donation.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("donation.aspx");

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("donation.aspx");

        }
       
         protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("donation.aspx");

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("donation.aspx");
        }

        protected void btnVoulnteer_Click(object sender, EventArgs e)
        {
            Response.Redirect("voulnteer.aspx");
        }
    }
}
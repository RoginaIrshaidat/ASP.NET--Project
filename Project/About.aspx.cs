using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Caching;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //back.Style["background-image"] = "url(images/cover.jpg)";
            //background - image: url(images / cover.jpg);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("donation.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("donation.aspx");
        }
    }
}
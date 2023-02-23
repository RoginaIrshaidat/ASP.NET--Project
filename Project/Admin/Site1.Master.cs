using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnOrganizations_Click(object sender, EventArgs e)
        {
            Page.Master.FindControl("ContentPlaceHolder1").FindControl("BodyContent1").Visible = true;

        }


    }
}
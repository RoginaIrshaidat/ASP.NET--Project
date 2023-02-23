using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                string folderPath = Server.MapPath("~/Images/");

                //Check whether Directory (Folder) exists.
                if (!Directory.Exists(folderPath))
                {
                    //If Directory (Folder) does not exists Create it.
                    Directory.CreateDirectory(folderPath);
                }
                userImg.SaveAs(folderPath + Path.GetFileName(userImg.FileName));

                string user_id = Convert.ToString(Session["user_id"]);

                //int user_id = 1;
                //string getUserId = Context.User.Identity.GetUserName();

                //int id= Convert.ToInt32(Request.QueryString["id"]);
                SqlCommand comman = new SqlCommand($"select UserName,Email,PhoneNumber,address,image from AspNetUsers where Id='{user_id}'", connection);

                SqlDataReader sdr = comman.ExecuteReader();
                while (sdr.Read())
                {

                    lblName.Text = sdr[0].ToString();
                    lblUName.Text = sdr[0].ToString();

                    lblEmail.Text = sdr[1].ToString();
                    lblPhone.Text = sdr[2].ToString();
                    lblAddr.Text = sdr[3].ToString();
                    userPic.ImageUrl = "Images/" + sdr[4].ToString();



                    txtName.Text = sdr[0].ToString();
                    txtEmail.Text = sdr[1].ToString();
                    txtPhone.Text = sdr[2].ToString();
                    txtAddr.Text = sdr[3].ToString();


                }

                connection.Close();

            }
        }
        protected void btnEdit_Click(object sender, EventArgs e)
        {
            editInfo.Visible = true;
            userInfo.Visible = false;
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string user_id = Convert.ToString(Session["user_id"]);
            //int user_id = 1;

            //string getUserId = Context.User.Identity.GetUserId();
            var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string filelocation = "";
            if (userImg.HasFile)
            {
                string fullPath = Server.MapPath("~/Images/") + userImg.FileName;
                filelocation = userImg.FileName;
                userImg.SaveAs(fullPath);
                string query = $"update AspNetUsers set UserName='{txtName.Text}',Email='{txtEmail.Text}',PhoneNumber='{txtPhone.Text}',address='{txtAddr.Text}',image='{userImg.FileName}' where Id='{user_id}'";
                SqlCommand command = new SqlCommand(query, connection);
                command.ExecuteNonQuery();
                connection.Close();
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);


            }

            else
            {

                string query = $"update AspNetUsers set UserName='{txtName.Text}',Email='{txtEmail.Text}',PhoneNumber='{txtPhone.Text}',address='{txtAddr.Text}' where Id='{user_id}'";

                SqlCommand command = new SqlCommand(query, connection);
                command.ExecuteNonQuery();

                connection.Close();
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);


            }
            Response.Redirect("profile.aspx");
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);
        }

        protected void btnApp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Order.aspx");
        }
    

}
}

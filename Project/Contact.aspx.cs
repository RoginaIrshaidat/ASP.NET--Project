using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSend_Click(object sender, EventArgs e)
        {

            MailMessage mail = new MailMessage();
            mail.To.Add("yazeedaldamen98@gmail.com");
            mail.From = new MailAddress($"{txtEmail.Text}");
            mail.Subject = $"{txtEmail.Text}";
            mail.Body = txtMessage.Text ;
            mail.IsBodyHtml = true;
                                                    
            SmtpClient smtp = new SmtpClient();
            smtp.Port = 587; // 25 465
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("yazeedaldamen98@gmail.com", "fdynycyqmhcwuvge");
            smtp.Send(mail);

            var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();

            SqlCommand command = new SqlCommand($"insert into contact values ('{txtName.Text}','{txtEmail.Text}','{txtMessage.Text}')", connection);
            command.ExecuteNonQuery();

            connection.Close();

            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);
            


        }

        
    }

}
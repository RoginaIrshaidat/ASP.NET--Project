using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Security;
using System.Web;
using System.Web.Caching;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;
namespace Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                RadioButtonList2.SelectedIndex = 1;


            }
            if (!IsPostBack)
            {
                string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                ListItem couponStores = new ListItem();

                SqlConnection con = new SqlConnection(connectionString);
                con.Open();

                SqlCommand cmd = new SqlCommand("select * from coupon_stores", con);

                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    couponStores.Text = sdr[1].ToString();
                    couponStores.Value = sdr[0].ToString();
                    couponStoreDropDownList.Items.Add(couponStores);
                    couponStores = new ListItem();
                }
                con.Close();

                SqlConnection con2 = new SqlConnection(connectionString);
                ListItem organization = new ListItem();
                con2.Open();
                SqlCommand cmd2 = new SqlCommand("select UserName,Id from AspNetUsers  Inner Join AspNetUserRoles  On AspNetUsers.Id =AspNetUserRoles.UserId", con2);

                SqlDataReader sdr2 = cmd2.ExecuteReader();
                while (sdr2.Read())
                {
                //if(sdr2[1].ToString() == "2be3d247-78d3-4598-bfd1-ffe063176341")
                //    {
                //        continue;
                //}
                    organization.Text = sdr2[0].ToString();
                    organization.Value = sdr2[1].ToString();
                    organizationDropDownList.Items.Add(organization);
                    organization = new ListItem();

                }

                con2.Close();
            }

        }

        protected void RadioButtonList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(RadioButtonList3.SelectedIndex == 3){
                txtOtherAmount.Enabled = true;
            }
            else{
            txtOtherAmount.Enabled = false;
            }
        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(RadioButtonList2.SelectedValue == "Money"){
                Money.Visible = true;
                Tools.Visible = false;

                



            }
            else if (RadioButtonList2.SelectedValue == "Cooking Tools")
            {
                Money.Visible = false;
                Tools.Visible = true;
            }
        }

        protected void txtOtherAmount_TextChanged(object sender, EventArgs e)
        {
            //other.Value= txtOtherAmount.Text;
            RadioButtonList3.SelectedItem.Value = txtOtherAmount.Text;
            //Label1.Visible= true;
            //Label1.Text = RadioButtonList3.SelectedItem.Value;
            
        }

        protected void btnDonate_Click(object sender, EventArgs e)
        {
            if (RadioButtonList2.SelectedIndex == 0)
            {

                string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

                SqlConnection con = new SqlConnection(connectionString);
                con.Open();
                SqlCommand com = new SqlCommand($"insert into Cash (donorName,amount,dateDonated,city_id,store_id,user_id) values(@donorName,@amount,@dateDonated,@city_id,@store_id,@user_id)", con);
                string fullName = txtFirstName2.Text + " " + txtLastName2.Text;
                com.Parameters.AddWithValue("@donorName", fullName);
                com.Parameters.AddWithValue("@amount", RadioButtonList3.SelectedValue.ToString());
                com.Parameters.AddWithValue("@dateDonated", DateTime.Now);
                com.Parameters.AddWithValue("@city_id", cityDropDownList2.SelectedValue);
                com.Parameters.AddWithValue("@store_id", couponStoreDropDownList.SelectedValue);
                com.Parameters.AddWithValue("@user_id", organizationDropDownList.SelectedValue);

                com.ExecuteNonQuery();
                con.Close();

                txtFirstName2.Text = string.Empty;
                txtLastName2.Text = string.Empty;
                RadioButtonList3.ClearSelection();
                cityDropDownList2.ClearSelection();
                couponStoreDropDownList.ClearSelection();
                organizationDropDownList.ClearSelection();
                txtCardNumber.Text = string.Empty;
                txtCSC.Text = string.Empty;
                txtExpires.Text = string.Empty;
                txtStreetAddress.Text = string.Empty;
                txtApt.Text = string.Empty;
                txtZip.Text = string.Empty;
                txtPhone2.Text = string.Empty;
                txtEmail2.Text = string.Empty;
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "donation();", true);

                //Response.Redirect("Default.aspx");

            }
            else if (RadioButtonList2.SelectedValue == "Cooking Tools")
            {

                string path = Server.MapPath("/Image/");
                if (!Directory.Exists(path))
                {
                    //If Directory (Folder) does not exists Create it.
                    Directory.CreateDirectory(path);
                }
                string image1 = Path.GetFileName(FileUpload1.FileName);


                FileUpload1.SaveAs(path + image1);


                string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

                SqlConnection con = new SqlConnection(connectionString);
                con.Open();
                string fullName = txtFirstName.Text + " " + txtLastName.Text;
                string p = "\\Image\\";
                SqlCommand com = new SqlCommand($"insert into Tool (donorName,category,quality,dateDonated,image,phone,email,address,city_id,comment) values(@donorName,@category,@quality,@dateDonated,@image,@phone,@email,@address,@city_id,@comment)", con);
                com.Parameters.AddWithValue("@donorName", fullName);
                com.Parameters.AddWithValue("@quality", qualityRadioButtonList.SelectedValue);
                com.Parameters.AddWithValue("@dateDonated", DateTime.Now);
                com.Parameters.AddWithValue("@category", RadioButtonList1.SelectedItem.Text);
                com.Parameters.AddWithValue("@image", p + image1);
                com.Parameters.AddWithValue("@phone", txtPhone.Text);
                com.Parameters.AddWithValue("@email", txtEmail.Text);
                com.Parameters.AddWithValue("@address", txtAddress.Text);
                com.Parameters.AddWithValue("@city_id", cityDropDownList.SelectedValue.ToString());
                com.Parameters.AddWithValue("@comment", txtComment.Text);
                com.ExecuteNonQuery();
                con.Close();

                //Response.Redirect("donation.aspx");

                txtFirstName.Text = string.Empty;
                txtLastName.Text = string.Empty;
                qualityRadioButtonList.ClearSelection();
                RadioButtonList1.ClearSelection();
                txtPhone.Text = string.Empty;
                txtEmail.Text = string.Empty;
                txtAddress.Text = string.Empty;
                cityDropDownList.ClearSelection();
                txtComment.Text = string.Empty;
                ////FileUpload1.FileContent.Dispose();

                ScriptManager.RegisterStartupScript(this, GetType(), "Success", "donation();", true);

                //Response.Redirect("Default.aspx");

            }
        }

       
    }
}
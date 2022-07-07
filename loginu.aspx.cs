using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Security.Cryptography;

namespace event_management
{
    public partial class loginu : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            //ImageButton2.Visible = true;
          //txtpass.TextMode = TextBoxMode.Password;

        }
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void btnlogin_Click(object sender, EventArgs e)
        {
             byte[] hs = new byte[50];
            string pass = txtpass.Text;
            MD5 md5 = MD5.Create();
            byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(pass);
            byte[] hash = md5.ComputeHash(inputBytes);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < hash.Length; i++)
            {
                hs[i] = hash[i];
                sb.Append(hs[i].ToString("x2"));
            }
            var hash_pass = sb.ToString();
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("select * from regtb where email='" + txtemail.Text.Trim() + "' AND password='" + hash_pass+ "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Response.Write("<script>alert('Login Succussful');</script>");
                    Session["userid"] = dr.GetValue(4).ToString();
                    Session["fname"] = dr.GetValue(1).ToString();
                    Session["cid"] = dr.GetValue(0).ToString();
                    Session["addr"] = dr.GetValue(2).ToString();
                    Session["mbl"] = dr.GetValue(3).ToString();
                    Session["role"] = "user";
                    Session["status"] = dr.GetValue(7).ToString();
                }
                Response.Redirect("home.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid');</script>");
            }


        }
     protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Response.Redirect("forgot.aspx");
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == false)
            {
                txtpass.TextMode = TextBoxMode.Password;
            }
            else
            {
                txtpass.TextMode = TextBoxMode.SingleLine;
            }

            //protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
            //{
            ////    ImageButton2.Visible = true;

            ////ImageButton1.Visible = false;
            //    txtpass.TextMode = TextBoxMode.Password;
            //   this.txtpass.Text = txtpass.Text;
            //}

            //protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
            //{
            //    //ImageButton2.Visible = false;
            //    //ImageButton1.Visible = true;
            //    txtpass.TextMode = TextBoxMode.SingleLine;
            //    this.txtpass.Text = txtpass.Text;
            //}
        }
    }
}
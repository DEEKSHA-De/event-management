using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Text;
using System.Security.Cryptography;
using System.Data.SqlClient;

namespace event_management
{
    public partial class adminlogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = LAPTOP - 04NDJ8P3\\SQLEXPRESS01;Initial Catalog = signdb; Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            byte[] hs = new byte[50];
            string pass = textbox2.Text;
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

            SqlConnection con = new SqlConnection("Data Source=LAPTOP-04NDJ8P3\\SQLEXPRESS01;Initial Catalog=signdb;Integrated Security=True");
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from admintable where email='" + textbox1.Text.Trim() + "' AND password='" + textbox2.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login Succussful');</script>");
                        //Response.Write("<script>alert('Button click');</script>");
                    }
                    Response.Redirect("admin1/WebForm4.aspx");
                }

                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }
            }
            
        }

        }
    

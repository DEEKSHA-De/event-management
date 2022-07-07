using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Security.Cryptography;
using System.Text;


namespace event_management
{
    public partial class signup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;


        protected void Button1_Click(object sender, EventArgs e)
        {
            
           
            if (checkmemberexists())
            {
                Response.Write("<script>alert('Member already exist with this Member ID.');</script>");
            }
            else
            {
                signupnewuser();
            }
        }
            bool checkmemberexists()
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("select * from regtb where email='" + txtemail.Text.Trim() + "';", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count >= 1)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "' );</script>");
                    return false;
                }

            }

            void signupnewuser()
            {
                byte[] hs = new byte[50];
                string pass = txtpas.Text;
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

                try
                {

                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("insert into regtb(fname,address,mobile,email,password,cpassword,account_status)values(@fullname,@addr,@mbl,@email,@password,@cpassword,@account)", con);
                    cmd.Parameters.AddWithValue("@fullname", txtfname.Text.Trim());
                    cmd.Parameters.AddWithValue("@addr", txtaddr.Text.Trim());
                    cmd.Parameters.AddWithValue("@mbl", txtmbl.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", txtemail.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", hash_pass);
                    cmd.Parameters.AddWithValue("@cpassword", hash_pass );
                    cmd.Parameters.AddWithValue("@account", "pending");
                    cmd.ExecuteNonQuery();
                    con.Close();
                     
                    Response.Write("<script>alert('Go to login.');</script>");
                    


                }


                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }



            }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == false)
            {
                txtpas.TextMode = TextBoxMode.Password;
            }
            else
            {
                txtpas.TextMode = TextBoxMode.SingleLine;
            }


        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox2.Checked == false)
            {
                txtcpas.TextMode = TextBoxMode.Password;
            }
            else
            {
                txtcpas.TextMode = TextBoxMode.SingleLine;
            }
        }
    }

        }

    


    
            


        

       
    


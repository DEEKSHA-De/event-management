﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


namespace event_management
{
    public partial class reset : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        string str;
        SqlCommand cmd;
        SqlDataAdapter da = new SqlDataAdapter();

        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }
            str = "select email  from regtb where email='" + txtemail.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(str, con);
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                try
                {
                    str = "update regtb set password='" + txtcnfrmpassword.Text + "' and cpassword='"+txtcnfrmpassword.Text+"' where email='"+txtemail.Text+"'";

                    cmd = new SqlCommand(str, con);
                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Forgot Password Succesfully')</script>");

                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }
            }
            else
            {
                Response.Write("<script>alert('Email or mobile not exist')</script>");
            }
        }


    }

}
    
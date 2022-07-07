using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace event_management
{
    public partial class decoruser : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
          if(!IsPostBack)
            {
                //DropDownList1.Items.Add(new ListItem("--select category--", ""));
                //DropDownList1.AppendDataBoundItems = true;
                string strcon = ConfigurationManager.ConnectionStrings["signdbConnectionString11"].ConnectionString;
                string strquery = "select decorationid,light from decor";
                SqlConnection con = new SqlConnection(strcon);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = strquery;
                cmd.Connection = con;
                try
                {
                    con.Open();
                    DropDownList1.DataSource = cmd.ExecuteReader();
                    DropDownList1.DataTextField = "light";
                    DropDownList1.DataValueField = "decorationid";
                    DropDownList1.DataBind();
                }
                catch(Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                    con.Dispose();
                }
            }
        }
        
       
        protected void btnsub_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 0 || dropflower.SelectedIndex == 0 || dropseat.SelectedIndex == 0)
            {
                Response.Write("<script>alert('Please Fill out all Fields.');</script>");
            }
            else
            {
                Session["dlight"] = DropDownList1.SelectedItem.Text;
                Session["dflower"] = dropflower.SelectedItem.Text;
                Session["dseating"] = dropseat.SelectedItem.Text;
                Session["tlight"] = txtcost.Text;
                Session["tflower"] = txtfcost.Text;
                Session["tseat"] = txtscost.Text;
                Response.Redirect("bill.aspx");
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String strConnString = ConfigurationManager.ConnectionStrings["signdbConnectionString11"].ConnectionString;
            String strQuery = "select lpc from decor where" + " decorationid=@decorationid";
            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@decorationid",DropDownList1.SelectedItem.Value);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    txtcost.Text = sdr["lpc"].ToString();
                  
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }

        }

        protected void dropflower_SelectedIndexChanged(object sender, EventArgs e)
        {
            String strConnString1 = ConfigurationManager.ConnectionStrings["signdbConnectionString11"].ConnectionString;
            String strQuery = "select fpc  from decor where" + " decorationid=@decorationid";
            SqlConnection con = new SqlConnection(strConnString1);
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@decorationid", dropflower.SelectedItem.Value);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    txtfcost.Text = sdr["fpc"].ToString();

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }

        protected void dropseat_SelectedIndexChanged(object sender, EventArgs e)
        {
            String strConnString2 = ConfigurationManager.ConnectionStrings["signdbConnectionString11"].ConnectionString;
            String strQuery = "select spc  from decor where" + " decorationid=@decorationid";
            SqlConnection con = new SqlConnection(strConnString2);
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@decorationid", dropseat.SelectedItem.Value);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    txtscost.Text = sdr["spc"].ToString();

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        
    }
    }
}